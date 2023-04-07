module ToyTypes where 
import Grammar 

-- Data Structures as defined in Grammar.hs
-- data ToyType = TInt | TBool | TPair ToyType ToyType | TFun ToyType ToyType deriving (Show,Eq)

-- type Environment = [ (String,Expr) ]

-- data Exp = 
--          Var String
--          | Int Int
--          | Bool Bool
--          | Plus Exp Exp
--          | Less Exp Exp
--          | Let String ToyType Exp Exp
--          | Lambda String ToyType Exp
--          | Cond Exp Exp Exp
--          | LamApp Exp Exp 
--          deriving Show 




-- getValueBinding :: String -> Environment -> (Exp,Environment)
-- getValueBinding x [] = error "Variable binding not found"
-- getValueBinding x ((y,e):env)
--                 | x == y  = unpack e
--                 | otherwise = getValueBinding x env

lookupVar :: Environment -> String -> Maybe Exp
lookupVar [] _ = Nothing
lookupVar ((name, expr):rest) var
    | var == name = Just expr
    | otherwise   = lookupVar rest var

addBinding :: Environment -> String -> Exp -> Environment
addBinding env name expr = (name, expr) : env

unparseType :: ToyType -> String
unparseType (TInt) = "Int"
unparseType (TBool) = "Bool"
unparseType (TPair e1 e2) = "( " ++ unparseType e1 ++ " , " ++ unparseType e2 ++ " )"
unparseType (TFun e1 e2) = "( " ++ unparseType e1 ++ " -> " ++ unparseType e2 ++ " )"
unparseType _ = "Unknown Type"


typeOf :: Environment -> Exp -> ToyType
typeOf env (Var x) =
    case lookupVar env x of
        Just e  -> typeOf env e
        Nothing -> error "Variable not found"

typeOf _ (Int _) = TInt

typeOf _ (TTrue) = TBool
typeOf _ (TFalse) = TBool   

-- The function first determines the types of e1 and e2 using typeOf env e1 and typeOf env e2. It then checks if both types are TInt and returns TInt if they are, and raises a type error otherwise.
typeOf env (Plus e1 e2) =
    let t1 = typeOf env e1
        t2 = typeOf env e2
    in case (t1, t2) of
        (TInt, TInt) -> TInt
        _            -> error "Type error in addition"


typeOf env (Less e1 e2) =
    let t1 = typeOf env e1
        t2 = typeOf env e2
    in case (t1, t2) of
        (TInt, TInt) -> TBool
        _            -> error "Type error in comparison"

-- The function first determines the type of e1 using typeOf env e1 and adds a new binding to the environment for x and e1. It then checks if the type of e1 is equal to t, and returns the type of e2 if it is, and raises a type error otherwise.
typeOf env (Let x t e1 e2) =
    let t1 = typeOf env e1
        env' = addBinding env x e1
    in
        if t == typeOf env' e1
            then typeOf env' e2
        else error "Type error in let expression"

typeOf env (Lambda x t e) =
    let env' = addBinding env x (Var x)
        t1 = typeOf env' e
    in TFun t t1

typeOf env (Cond e1 e2 e3) =
    let t1 = typeOf env e1
    in case t1 of
        TBool -> 
            let t2 = typeOf env e2
                t3 = typeOf env e3
                in 
                    if t2 == t3
                        then t2
                    else error "Type error in condition expression"
        _     -> error "Type error in condition expression"

typeOf env (LamApp e1 e2) =
    let t1 = typeOf env e1
        t2 = typeOf env e2
    in case t1 of
        TFun t11 t12 -> 
            if t11 == t2
                then t12
            else error "Type error in function application"
        _            -> error "Type error in function application"


