module Chapter2 where

data Dia = Segunda | Terca | Quarta | Quinta | Sexta | Sabado | Domingo

agenda :: Dia -> String
agenda Domingo = "assistir tv"
agenda Segunda = "ir pra faculdade"
agenda Quarta = "assistir jogo"
agenda Sabado = "jogar"
agenda _ = "Faculdade"

f :: (Int, Int) -> Int
f (0,0) = 0
f (0,1) = 1
f (1,0) = 1
f (x,y) = x+y
f (x,0) = x
f (0,y) = y

g :: (Int, Int) -> Int
g (7,7) = 7
g _ = 0

h :: [Int] -> Int
h [] = 0
h (_:[]) = 1
h (_:x:[]) = 2+x
h (x:y:z:[]) = 3+x+y+z
h (x:_:_:w:[]) = 4+x+w
h (x:xs) = x