module Main where
import System.Environment
import Data.List
import Data.Char
import Data.Numbers.Primes


fibs = 1:1:[ a + b | (a ,b) <- zip fibs (tail fibs) ]
myFibs = [ b | (a, b) <- zip fibs [1..], (length $ show a) == 1000 ] !! 0

main = print myFibs