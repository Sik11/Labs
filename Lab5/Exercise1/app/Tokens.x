{ 
module Tokens where 
}

%wrapper "posn" 
$digit = 0-9     
-- digits 
$alpha = [a-zA-Z]    
-- alphabetic characters

tokens :-
  $white+       ; 
  "--".*        ; 
  let           { \p s -> TokenLet p} 
  in            { \p s -> TokenIn p }
  $digit+       { \p s -> TokenInt p (read s) } 
  \=            { \p s -> TokenEq p }
  ","             { \p s -> TokenComma p }
  \:            { \p s -> TokenColon p }
  if             { (\p s -> TokenIf p) }
  then           { (\p s -> TokenThen p) }
  else           { (\p s -> TokenElse p) }
  true              { (\p s -> TokenTrue p) }
  false              { (\p s -> TokenFalse p) }
  \<            { (\p s -> TokenLess p) }
  \+            { \p s -> TokenPlus p }
  lam            { \p s -> TokenLambda p }
  "->"           { \p s -> TokenArrow p }
  \(            { \p s -> TokenLParen p }
  \)            { \p s -> TokenRParen p }
  Bool           { \p s -> TokenTypeBool p} 
  Int            { \p s -> TokenTypeInt p }
  $alpha [$alpha $digit \_ \’]*   { \p s -> TokenVar p s } 

{ 
-- Each action has type :: AlexPosn -> String -> Token 

-- The token type: 
data Token = 
  TokenLet AlexPosn        | 
  TokenIn  AlexPosn        | 
  TokenInt AlexPosn Int    |
  TokenVar AlexPosn String | 
  TokenEq  AlexPosn        |
  TokenPlus AlexPosn       |
  TokenLParen AlexPosn     |
  TokenIf AlexPosn         |
  TokenThen AlexPosn       |
  TokenElse AlexPosn       |
  TokenTrue AlexPosn       |
  TokenFalse AlexPosn      |
  TokenLess AlexPosn       |
  TokenLambda AlexPosn     |
  TokenArrow AlexPosn   |
  TokenTypeBool AlexPosn |
  TokenTypeInt AlexPosn |
  TokenComma AlexPosn |
  TokenColon AlexPosn |
  TokenRParen AlexPosn      
  deriving (Eq,Show) 

tokenPosn :: Token -> String
tokenPosn (TokenInt  (AlexPn a l c) n) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenVar  (AlexPn a l c) x) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLet (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenIn  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenEq  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenPlus (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenIf (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenThen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenElse (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTrue(AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenFalse (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLess (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLambda (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenArrow (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLParen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTypeBool (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTypeInt (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRParen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenComma (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenColon (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
}