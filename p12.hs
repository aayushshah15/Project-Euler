module Main where
import System.Environment
import Data.List
import Data.Char
import Data.Numbers.Primes
import Math.NumberTheory.Primes.Factorisation
import Data.Set hiding (filter)

trian n = (n ^ 2 + n) `div` 2
trianList = [ trian x | x <- [1,2..] ]
chaochao = [ x | x <- trianList, (> 500) $ tau x]

main = print $ chaochao !! 0