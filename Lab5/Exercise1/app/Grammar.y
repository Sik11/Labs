{ 
module Grammar where 
import Tokens 
}


%name parseCalc 
%tokentype { Token } 
%error { parseError }
%token 
    Bool   { TokenTypeBool _ } 
    Int    { TokenTypeInt _ } 
    int     { TokenInt _ $$ }
    let     { TokenLet _ } 
    in     { TokenIn _ }
    if      { TokenIf _ } 
    then    { TokenThen _ } 
    else    { TokenElse _ } 
    true    { TokenTrue _ }
    false   { TokenFalse _ }
    '='     { TokenEq _ }
    '<'     { TokenLess _ }
    '+'      { TokenPlus _ }
    ','     { TokenComma _ }
    ':'    { TokenColon _ }
    lam      { TokenLambda _ }
    arr    { TokenArrow _ }
    var     { TokenVar _ $$ }
    '('     { TokenLParen _ } 
    ')'     { TokenRParen _ } 




%left arr
%right let
%right in
%nonassoc if
%nonassoc then
%nonassoc else
%nonassoc '<'
%left '+'
%left ','
%nonassoc int true false var '(' ')'
%left lam
%left J


%% 
Exp: 
    Exp Exp %prec J { LamApp $1 $2 }
    |let '(' var ':' Type ')' '=' Exp in Exp { Let $3 $5 $8 $10 }
    | lam '(' var ':' Type ')' Exp  { Lambda $3 $5 $7}
    | Exp '+' Exp            { Plus $1 $3 }
    | Exp '<' Exp            { Less $1 $3 }
    | '(' Exp ')'            { $2 } 
    | var                    { Var $1 }
    | int                    { Int $1 }
    | if Exp then Exp else Exp  { Cond $2 $4 $6 } 
    | true                   {TTrue }
    | false                   {TFalse }
    | '(' Exp ',' Exp ')'                       { Pair $2 $4 }

-- Bool :
--     true                   { True }
--     | false                 { False }


Type : Bool                     { TBool } 
     | Int                      { TInt } 
     | '(' Type ',' Type ')'    { TPair $2 $4 }
     | Type arr Type            { TFun $1 $3 } 

{ 
parseError :: [Token] -> a
parseError [] = error "Unknown Parse Error" 
parseError (t:ts) = error ("Parse error at line:column " ++ (tokenPosn t))

data ToyType = TInt | TBool | TPair ToyType ToyType | TFun ToyType ToyType deriving (Show,Eq)

type Environment = [ (String,Exp) ]

data Exp = 
         Var String
         | Int Int
         | TTrue
         | TFalse
         | Pair Exp Exp
         | Plus Exp Exp
         | Less Exp Exp
         | Let String ToyType Exp Exp
         | Lambda String ToyType Exp
         | Cond Exp Exp Exp
         | LamApp Exp Exp
         | Cl String ToyType Exp Environment 
         deriving (Show,Eq) 
} 