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

-- d) d) [5,8,11,17,20,26,29,32,38,41]
        -- 3 3  6  3  6  3  3  6  3
d :: [Int]
d = take 12 (iterate (+3) 8)

-- e) [1.0,0.5,0.25,0.125,0.0625,0.03125]
e :: [Double]
e = [1.0 / (2^x) | x <- [0..5]]

-- f)[1,10,19,28,37,46,55,64]
f :: [Int]
f = take 8 (iterate (+9) 1)

-- g) [2,4,8,10,12,16,18,22,24,28,30]
     -- 2 4 2  2  4  2  4  2  4  2
g :: [Int]
g = [x | x <- [2 .. 30],x `mod` 2 == 0, x `mod` 6 /= 0]