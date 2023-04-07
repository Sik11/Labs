module ToyEval where
import Grammar

--Data structures as defined in ToyGrammar:
--data ToyType = TyInt | TyBool | TyUnit | TyPair ToyType ToyType | TyFun ToyType ToyType
--type Environment = [ (String,Expr) ]
--data Expr = TmInt Int | TmTrue | TmFalse | TmUnit | TmCompare Expr Expr 
--           | TmPair Expr Expr | TmAdd Expr Expr | TmVar String 
--           | TmFst Expr | TmSnd Expr
--           | TmIf Expr Expr Expr | TmLet String ToyType Expr Expr
--           | TmLambda String ToyType Expr | TmApp Expr Expr
--           | Cl ( String ToyType Expr Environment)

data Frame = HCompare Exp Environment 
        | CompareH Exp
        | HAdd Exp Environment | AddH Exp
        | HPair Exp Environment | PairH Exp
        | HIf Exp Exp Environment | HLet String ToyType Exp Environment
        | HApp Exp Environment | AppH Exp
type Kontinuation = [ Frame ]
type State = (Exp,Environment,Kontinuation)

-- Function to unpack a closure to extract the underlying lambda term and environment
unpack :: Exp -> (Exp,Environment)
unpack (Cl x t e env1) = (Lambda x t e , env1)
unpack e = (e,[])

-- Look up a value in an environment and unpack it
getValueBinding :: String -> Environment -> (Exp,Environment)
getValueBinding x [] = error "Variable binding not found"
getValueBinding x ((y,e):env) 
        | x == y  = unpack e
        | otherwise = getValueBinding x env

update :: Environment -> String -> Exp -> Environment
update env x e = (x,e) : env

isValue :: Exp -> Bool
isValue (Int _) = True
isValue TTrue = True
isValue TFalse = True
isValue (Pair e1 e2) = isValue e1 && isValue e2
isValue Cl {} = True
isValue _ = False

--Small step evaluation function
eval1 :: State -> State
eval1 (Var x,env,k) = (e',env',k) 
                    where (e',env') = getValueBinding x env

-- Rule for terminated evaluations
eval1 (v,env,[]) | isValue v = (v,env,[])

-- Rule to make closures from lambda abstractions
eval1 (LamApp exp1 exp2,env,k) = (exp1,env,HApp exp2 env:k)

-- Evaluation rules for application
eval1 (Lambda x t exp,env,k) = (Cl x t exp env,[],k)
eval1 (w,env,HApp exp env':k) = (exp,env',AppH w:k)
eval1 (w,env,AppH (Cl x t exp env'):k) = (exp,update env' x w,k)

-- Evaluation rules for less than operator
eval1 (Less x y, env, k) = (x,env,HCompare y env:k)
eval1 (Int n,env1,HCompare y env2:k) = (y,env2,CompareH (Int n) : k)
eval1 (Int m,env,CompareH (Int n):k) 
        | n < m = (TTrue,[],k)
        | otherwise = (TFalse,[],k)

-- Evaluation rules for addition
eval1 (Plus x y, env, k) = (x,env,HAdd y env:k)
eval1 (Int n,env1,HAdd y env2:k) = (y,env2,AddH (Int n) : k)
eval1 (Int m,env,AddH (Int n):k) = (Int (n+m),[],k)

-- Evaluation rules for if-then-else
eval1 (Cond e1 e2 e3, env, k) = (e1,env,HIf e2 e3 env:k)
eval1 (TTrue,env1,HIf e2 e3 env2:k) = (e2,env2,k)
eval1 (TFalse,env1,HIf e2 e3 env2:k) = (e3,env2,k)

-- Evaluation rules for let
eval1 (Let x t e1 e2, env, k) = (e1,env,HLet x t e2 env:k)
eval1 (v,env1,HLet x t e2 env2:k) 
    | isValue v = (e2,update env2 x v,k)


-- Evaluation rules for pairs
eval1 (Pair v w,env,k) = (v,env,HPair w env:k)
eval1 (v,env1,HPair w env2:k) 
    | isValue v = (w,env2,PairH v: k)
eval1 (w,env,PairH v:k) 
    | isValue v = (Pair v w,[],k)


-- Rule for runtime errors
eval1 (e,env,k) = error "Evaluation Error"

-- Function to evaluate a term to normal form by repeatedly calling the small step evaluation function, eval1
eval :: Exp -> Exp
eval e = eval' (e,[],[])
    where eval' (e,env,k) = 
            if (e' == e) && isValue e' && null k 
                then e' 
            else eval' (e',env',k')
                where (e',env',k') = eval1 (e,env,k)

-- Function to unparse underlying values from the AST term
unparse :: Exp -> String 
unparse (Int n) = show n
unparse TTrue = "true"
unparse TFalse = "false"
unparse (Pair e1 e2) = "( " ++ unparse e1 ++ " , " ++ unparse e2 ++ " )"
unparse (Cl {}) = "Function Value"
unparse _ = "Unknown"
