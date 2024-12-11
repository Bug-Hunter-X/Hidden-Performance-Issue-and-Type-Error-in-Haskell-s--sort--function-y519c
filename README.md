# Haskell Sort Function: Performance and Type Safety

This repository demonstrates a subtle performance issue and a type error related to Haskell's `sort` function from the `Data.List` module.

The `bug.hs` file contains code that uses the `sort` function.  While seemingly correct for small datasets, it can lead to significant performance degradation when dealing with very large, nearly sorted lists because of its O(n log n) time complexity using Mergesort. 

The `bugSolution.hs` file provides alternative solutions, and explores strategies for handling different scenarios to improve performance and prevent runtime errors.