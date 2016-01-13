module Main where
import System.Environment
import Data.List
import Data.Char

checkPermu x y = (sort (show x)) == (sort (show y))
checkPermu6x x = (checkPermu x (2 * x) && (checkPermu x (3 * x)) && (checkPermu x (6 * x)) && (checkPermu x (5 * x)) && (checkPermu x (4 * x)))
permuList = [ x | x <- [10..], checkPermu6x x ]

main = print $ (permuList !! 0)