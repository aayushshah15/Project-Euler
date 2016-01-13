module Main where
import System.Environment
import Data.List
import Data.Char
import Data.Numbers.Primes

numSum = sum $ (map digitToInt (show (2^1000)))

main = print numSum