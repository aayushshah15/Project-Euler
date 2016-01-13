module Main where
import System.Environment
import Data.List
import Data.Char
import Data.Numbers.Primes



main = print $ maximum $ primeFactors 600851475143