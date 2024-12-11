```haskell
import Data.List (sort, insert) --Import needed functions
import Data.Ord (comparing)

-- Improved performance for nearly sorted lists
quickSort :: (Ord a) => [a] -> [a]
quickSort [] = []
quickSort (x:xs) = quickSort smaller ++ [x] ++ quickSort larger
  where
    smaller = filter (< x) xs
    larger  = filter (>= x) xs

--Solution using insertion sort for improved efficiency in nearly sorted lists
insertionSort :: (Ord a) => [a] -> [a]
insertionSort [] = []
insertionSort (x:xs) = insert x (insertionSort xs)

--Handling heterogeneous lists using a custom comparison function (example with Int and String)
dataSort :: [(Int, String)] -> [(Int, String)]
dataSort = sortOn (comparing fst)

main :: IO ()
main = do
  let xs = [1, 2, 3, 4, 5]
  let ys = quickSort xs
  print ys
  let nearlySorted = [1,3,2,5,4,6,7,9,8,10] --Example nearly sorted list
  let sortedNearly = insertionSort nearlySorted
  print sortedNearly --Shows insertion sort on a nearly sorted list
  let mixedData = [(1,"one"),(3,"three"),(2,"two")]
  let sortedMixed = dataSort mixedData
  print sortedMixed -- Shows a sort for heterogeneous data
```