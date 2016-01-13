module Main where
import System.Environment
import Data.List
import Data.Char
import Data.Numbers.Primes

main = print $ sum [ x | x <- [2..2000000], isPrime x ]