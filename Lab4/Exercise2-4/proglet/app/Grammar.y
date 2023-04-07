{ 
module Grammar where 
import Tokens 
}


%name parseCalc 
%tokentype { Token } 
%error { parseError }
%token 
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
    '\\'      { TokenLambda _ }
    '->'    { TokenFunction _ }
    var     { TokenVar _ $$ }
    '('     { TokenLParen _ } 
    ')'     { TokenRParen _ } 


%nonassoc var int true false

%right let 
%left '='
%right in
%left '+' 
%left '<'
%nonassoc if then else
%right '->'
%right '\\'
%nonassoc '(' ')' J

%% 
Exp : 
    Exp Exp %prec J { LamApp $1 $2 }
    |let var '=' Exp in Exp { Let $2 $4 $6 } 
    | '\\' var '->' Exp  { Lambda $2 $4 }
    | Exp '+' Exp            { Plus $1 $3 }
    | Exp '<' Exp            { Less $1 $3 }
    | '(' Exp ')'            { $2 } 
    | var                    { Var $1 }
    | int                    { Int $1 }
    | if Exp then Exp else Exp  { Cond $2 $4 $6 } 
    | true                   { Bool True }
    | false                   { Bool False }

-- Bool :
--     true                   { True }
--     | false                 { False }

{ 
parseError :: [Token] -> a
parseError [] = error "Unknown Parse Error" 
parseError (t:ts) = error ("Parse error at line:column " ++ (tokenPosn t))
data Exp = 
         Var String
         | Int Int
         | Bool Bool
         | Plus Exp Exp
         | Less Exp Exp
         | Let String Exp Exp
         | Lambda String Exp
         | Cond Exp Exp Exp
         | LamApp Exp Exp 
         deriving Show 
} 