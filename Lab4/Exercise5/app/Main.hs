import Tokens
import Grammar
import ToyTypes
import System.Environment
import Control.Exception
import System.IO


main :: IO ()
main = catch main' noParse

main' :: IO ()
main' = do
        putStrLn "Please enter a line of code to parse"
        line <- getLine
        putStrLn ("Parsing : " ++ line)
        putStrLn ("Parsed as " ++ show (parseCalc $ alexScanTokens line))
        let parsedProg =  parseCalc $ alexScanTokens line
        putStrLn ("Type Checking : " ++ show parsedProg ++ "\n")
        putStrLn ("Type Checking Passed with type " ++ unparseType (typeOf [] parsedProg) ++ "\n")
        catch main' noParse

noParse :: ErrorCall -> IO ()
noParse e = do let err =  show e
               hPutStr stderr err
               putStrLn ""
               catch main' noParse
            --    return ()