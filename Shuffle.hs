module Shuffle where

import Data.Ord
import Data.List
import Data.Function
import System.Random
import System.Environment

getRandomSequence :: Int -> IO [Double]
getRandomSequence n = do
    g <- getStdGen
    return $ take n (randomRs (0.0, 1.0) g)

shuffle :: [a] -> IO [a]
shuffle a_list = do
    random_seq <- getRandomSequence (length a_list)
    let assigned_items = zip random_seq a_list
    let result = sortBy (compare `on` fst) assigned_items
    return $ snd (unzip result)

