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
h []           = 0
h (_:[])       = 1
h (_:x:[])     = 2+x
h (x:y:z:[])   = 3+x+y+z
h (x:_:_:w:[]) = 4+x+w
h (x:xs)       = x

data Pessoa = Fisica String Int 
            | Juridica String

teste :: Pessoa -> (String, String)
teste (Fisica nome idade) = ("Nome:" ++ nome, "Idade:" ++ show idade)
teste (Juridica nome)     = ("Nome:" ++ nome, "Nao ha idade")

-- data Ponto = Ponto Double Double deriving Show

-- Record Syntax
data Ponto = Ponto {xVal, yVal :: Double} deriving Show

distOrig :: Ponto -> Double
distOrig (Ponto x y) = sqrt(x^2 + y^2)

firstLetter :: String -> String
firstLetter "" = "empty string"
firstLetter all@(x:xs) = "the first letter of " ++ all ++ " is " ++ [x]


-- guards
bmiTell :: Double -> Double -> String
bmiTell weight height 
    -- | weight / height ^ 2 <= 18.5 = "underweight"
    -- | weight / height ^ 2 <= 25.0 = "normal"
    -- | weight / height ^ 2 <= 30.0 = "overweight"
    -- | otherwise   = "super overweight"

    -- | bmi <= 18.5 = "underweight"
    -- | bmi <= 25.0 = "normal"
    -- | bmi <= 30.0 = "overweight"
    -- | otherwise   = "super overweight"
    -- where bmi = weight / height ^ 2

    -- | bmi <= skinny = "underweight"
    -- | bmi <= normal = "normal"
    -- | bmi <= fat    = "overweight"
    -- | otherwise     = "super overweight"
    -- where bmi = weight / height ^ 2
    --       skinny = 18.5
    --       normal = 25.0
    --       fat    = 30.0

    | bmi <= skinny = "underweight"
    | bmi <= normal = "normal"
    | bmi <= fat    = "overweight"
    | otherwise     = "super overweight"
    where bmi = weight / height ^ 2
          (skinny, normal, fat) = (18.5,25.0,30.0)

initials :: String -> String -> String
initials firstname@(f:fs) lastname@(l:ls) = [f] ++ "." ++ [l]

calcBmis :: [(Double, Double)] -> [Double]
calcBmis xs = [bmi w h | (w,h) <- xs]
    where bmi weight height = weight / height ^ 2 

cylinder :: Double -> Double -> Double
cylinder r h =
    let sideArea = 2 * pi * r * h
        topArea  = pi * r ^ 2
    in sideArea + 2 * topArea

calcBmis' :: [(Double, Double)] -> [Double]
calcBmis' xs = [bmi | (w,h) <- xs, let bmi = w/h^2]

head' :: [a] -> a
head' xs = case xs of []    -> error "No head for empty lists!"
                      (x:_) -> x

describeLists :: [a] -> String
describeLists ls = "The list is " ++ case ls of []  -> "empty."
                                                [x] -> "a singleton list"
                                                xs  -> "a longer list"

-- exercicios

-- 1
data Pergunta = Sim | Nao deriving Show

pergNum :: Pergunta -> Int
pergNum Sim = 1
pergNum Nao = 0

listPergs :: [Pergunta] -> [Int]
listPergs xs = [pergNum x | x<-xs]

and' :: Pergunta -> Pergunta -> Pergunta
and' Sim Sim = Sim
and' _ _     = Nao

or' :: Pergunta -> Pergunta -> Pergunta
or' Nao Nao = Nao
or' _ _     = Sim

not' :: Pergunta -> Pergunta
not' Sim = Nao
not' Nao = Sim