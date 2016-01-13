module Main where
import System.Environment
import Data.List
import Data.Numbers.Primes
import Data.Char

primeList = [ x | x <- [2..], isPrime x ]

main = print $ primeList !! 10000 

