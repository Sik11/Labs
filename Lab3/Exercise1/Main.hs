import System.Environment
import System.IO
import Grammar
import Tokens
import Control.Exception

main :: IO ()
main = catch main' noParse

main' :: IO ()
main' = do 
    (fileName : _ ) <- getArgs
    sourceText <- readFile fileName
    putStrLn ("Lexing : " ++ sourceText)
    let lexedProg = alexScanTokens sourceText
    putStrLn ("lexed as " ++ show lexedProg)
    let parsedProg = parseCalc lexedProg
    putStrLn ("parsed as " ++ show parsedProg)

noParse :: ErrorCall -> IO ()
noParse e = do 
        let err =  show e
        hPutStr stderr ("Problem with Parsing: " ++ err)
        return ()