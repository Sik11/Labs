module ExerciseSheet1 where

import Data.List 
import Data.Ord 
import Data.Maybe (mapMaybe)
import GHC.Driver.Session (xopt_FieldSelectors)
-- Task 1
zipL :: ([a],[a]) -> [[a]]
zipL ([],[]) = []
zipL (x:xs,y:ys)
    | length xs == length ys = [x,y]:zipL (xs,ys)
    | otherwise = error "The lists provided are not of equal length"

unzipL :: [[a]] -> ([a],[a])
unzipL xss = (foldr ((:) . head) [] xss, foldr ((:) . last) [] xss)

-- Task 2

zipL' :: [a] -> [a] -> [[a]]
zipL' [] [] = []
zipL' [] (y:ys) = [y] : zipL' [] ys
zipL' (x:xs) [] = [x] : zipL' xs []
zipL' (x:xs) (y:ys) = [x,y]: zipL' xs ys

-- No it's not possible to write an inverse function of zipL' called unzipL' in this case because for the singleton lists in the list of lists, we have no way of knowing which list the values in the singleton list belong to. 

-- Task 3
multiZipL :: [[a]] -> [[a]]
multiZipL xss = [mapMaybe (`safetake` i) xss | i <- [0..length(maximumBy (comparing length) xss)-1]]

safetake :: [a] -> Int -> Maybe a
safetake xs i 
    | length xs > i = Just (xs !! i)
    | otherwise = Nothing

-- Task 4
readLines :: FilePath -> IO [String]
readLines = fmap lines . readFile

make2DList :: [String] -> [[Int]]
make2DList = map read

multiZipF :: String -> String -> IO ()
multiZipF source target = do
    content <- readLines "test.csv" 
    let solution = show (multiZipL (make2DList content)) 
    writeFile target solution

main :: IO ()
main = do
    multiZipF "test.csv" "output.csv"
    




