{ 
module Tokens where 
import System.Environment ( getArgs )
}

%wrapper "posn" 
$digit = 0-9     
-- digits 
$alpha = [a-zA-Z]    
-- alphabetic characters

tokens :-
$white+       ; 
  "--".*        ; 
  let           { \s -> TokenLet } 
  in            { \s -> TokenIn }
  $digit+       { \s -> TokenInt (read s) } 
  \=          { \s -> TokenEq }
  \+          { \s -> TokenPlus }
  \-          { \s -> TokenMinus }
  \*          { \s -> TokenTimes }
  \/          { \s -> TokenDiv }
  \^          { \s -> TokenExp}
  \(          { \s -> TokenLParen }
  \)          { \s -> TokenRParen }
  $alpha [$alpha $digit \_ \']*   { \s -> TokenVar s } 

{ 
-- Each action has type :: String -> Token 
-- The token type: 
Token :: AlexPosn -> String -> Token
data Token = 
  TokenLet         | 
  TokenIn          | 
  TokenInt Int     |
  TokenVar String  | 
  TokenEq          |
  TokenPlus        |
  TokenMinus       |
  TokenTimes       |
  TokenDiv         |
  TokenExp         |
  TokenLParen      |
  TokenRParen       
  deriving (Eq,Show) 

tokenPosn :: Token -> String
tokenPosn (TokenInt  (AlexPn a l c) n) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenVar  (AlexPn a l c) x) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLet (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenIn  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenEq  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenPlus (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenMinus (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTimes (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenDiv (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenExp (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLParen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRParen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
}






