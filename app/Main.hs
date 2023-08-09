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

doubleMe :: Int -> Int 
doubleMe x = x*2

doubleUs :: Int -> Int -> Int 
doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber :: Int -> Int 
doubleSmallNumber x = if x > 100
                        then x
                        else x*2

maximo :: Int -> Int -> Int -> Int 
maximo x y z = maximum [x,y,z]

set :: [Int] 
set = [2*x | x <- [0..10], x*2>=12]

set' :: [Int] 
set' = [x | x <- [50..100], x `mod` 7 == 3]

boomBangs xs = [ if x < 10 then "BOOM" else "BANG!" | x <- xs, odd x]

product' :: [Int] 
product' = [x*y | x <- [2,5,10], y <- [8,10,11], x*y > 50]

removeUppercase str = [x | x <- str, x `elem` ['a'..'z']]

rightTriangles = [ (a,b,c) | a <- [1..10], b <- [1..10], c <- [1..10], a^2 + b^2 == c^2, b > a,a+b+c == 24]

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

-- 2.2)	 Crie uma função que verifique se o tamanho de uma String é par ou não. Use Bool como retorno

lengthIsEven :: String -> Bool
lengthIsEven str = even (length str)

-- 2.3)	 Escreva uma função que receba um vetor de strings e retorne uma lista com todos os elementos em ordem reversa
reverseString :: [String] -> [String]
reverseString strs = [reverse x | x <- strs]

-- 2.4)	 Escreva uma função que receba um vetor de strings e retorne uma lista com o tamanho de cada string. As palavras de tamanho par devem ser excluídas da resposta
lengthString :: [String] -> [Int]
lengthString strs = [length str | str <- strs, lengthIsEven str == True]

-- 2.7) Faça uma função que receba um inteiro e retorne uma tupla,  contendo: o dobro deste número na primeira coordenada, o triplo na segunda, o quádruplo na terceira, o quintuplo na quarta
tuple :: Int -> (Int, Int, Int, Int)
tuple x = (x*2,x*3,x*4,x*5)