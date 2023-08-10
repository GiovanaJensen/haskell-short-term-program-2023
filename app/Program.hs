module Program where

data Cargo = Estagiario | Programador | Analista | Gerente deriving Show

data Pessoa = Pessoa {nome :: String, cargo :: Cargo} deriving Show

verSalario :: Pessoa -> Double
verSalario (Pessoa _ Estagiario)  = 600.00
verSalario (Pessoa _ Programador) = 2000.00
verSalario (Pessoa _ Analista)    = 4000.00
verSalario (Pessoa _ Gerente)     = 6000.00

verFolha :: Pessoa -> String
verFolha p = "{ nome: \"" ++ nome p ++ "\", cargo: \"" ++ show (cargo p) ++
             "\", salario: " ++ show (verSalario p) ++ " }"

promover :: Pessoa -> Pessoa
promover (Pessoa nome Estagiario) = Pessoa nome Programador
promover (Pessoa nome Programador) = Pessoa nome Analista
promover (Pessoa nome Analista) = Pessoa nome Gerente
promover (Pessoa nome _) = Pessoa nome Gerente