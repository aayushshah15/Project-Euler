module Main where
import System.Environment
import Data.List
import Data.Char
import Data.Numbers.Primes

collatz 1 = 1:[]
collatz x = 
    x:(if x `mod` 2 == 0 
         then collatz (x `div` 2) 
         else collatz (3*x + 1))

longestCollatz = [ y !! 0 | y <- [collatz x | x <- [1..1000000]], length y == 525 ]

main = print longestCollatz