module Exercise2 where
import Tokens ( alexScanTokens ) 
import System.Environment ( getArgs )
-- import System.IO (openFile, hGetContents)





main :: IO ()
main  = do 
    (filename:_) <- getArgs
    s <- readFile filename
    print (alexScanTokens s)
