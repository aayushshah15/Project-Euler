module Main where
import Data.List
import Data.Char
import Data.Numbers.Primes

numList xs = (let n = length xs in (tail . take n . map (take n) . tails . cycle) xs)
checkPrimes xs = (all isPrime ((map (read) xs)))
circularPrimes = [ x | x <- ( takeWhile (< 1000000) primes ), (checkPrimes (numList (show x))) ]

main = print $ length $ circularPrimes 