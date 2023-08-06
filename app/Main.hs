module Main where

main :: IO ()
main = putStrLn "Hello, Haskell!"

maiorQue :: Int -> Int -> Bool
maiorQue x y = x > y

dobroLista :: [Int] -> [Int]
dobroLista xs = [2*x | x<-xs]

lista :: [Int] 
lista = [2*x+1 | x<-[0 .. 10], x/=5] -- aplica a todos menos no 5

foo :: Char -> Int -> (Int, [Char] ) -- (Int, [Char])
foo x y = (y+9, x:[x])

-- exercicios

-- 2.1) Gere as listas:
-- a) [1,11,121,1331,14641,161051,1771561]

a :: [Int]
a = [11^x | x<-[0 .. 6]]

-- b) [1,2,3,5,6,7,9,10,11,13,14,15,17,18,19,21,22,23,25,26,27,29,30,31,33,34,35,37,38,39]
b :: [Int]
b = [x | x <- [1 .. 40], x `mod` 4 /= 0]

-- c) ["AaBB", "AbBB", "AcBB", "AdBB", "AeBB", "AfBB","AgBB"]

c :: [String]
c = [ 'A' : x : ['B', 'B'] | x <- ['a' .. 'g']]