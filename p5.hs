module Main where
import System.Environment
import Data.List
import Data.Char

evenDiv x = [ a | (a ,b) <- zip [x,x..] [1..20], a `mod` b == 0 ]
mainDiv = [ x | x <- [2520,5040..], length (evenDiv x) == 20 ] !! 0


main = print mainDiv