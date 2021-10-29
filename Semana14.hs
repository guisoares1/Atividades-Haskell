



{-1-}
elevado :: Int -> Int -> Int 
elevado x y = x*x + y 
somaQuadsR :: Int -> Int 
somaQuadsR x = foldr (elevado) 0 [1..x]

{-2-}
contadorTamanho :: Int -> Int -> Int 
contadorTamanho _ b = 1 + b
compR :: [Int] -> Int
compR x = foldr (contadorTamanho) 0 x

{-3-}
minimo :: Int -> Int -> Int 
minimo a b | a<=b = a
           | True = b
minimoL :: [Int] -> Int
minimoL x = foldr (minimo) 1000000 x

{-
4 - Usando foldX, defina uam função reverteX que reverte uma lista.

>>> reverte [1..10]
[10,9,8,7,6,5,4,3,2,1]
-}
{- 
reverte :: Int -> Int ->[Int]
reverte a b = b ++ [a]
reverteX :: [Int] -> [Int]
reverteX x = foldr (reverte) 0 x
-}

{-
5 - Usando foldX, defina uma função removeDupX que recebe duas listas e que remova todo elemento da segunda lista 
que aparece na primeira lista.

>>>removeDupL [1,2,3] [0,1,2,4,3,5]
[0,4,5]
-}

reverte :: Int -> Int ->[Int]
reverte a b | b==a = []
           | True = b 
                
reverteR :: [Int] -> [Int] -> [Int]
removeDupL x y = foldr (reverte) 0 (zip x y)

{- 6 - Defina a função filterX usando foldX e que tenha o mesmo comportamento a função padrão filter
2 - Usando foldX, defina uma função compX que calcule o comprimento de uma lista.
-}






{-testes:-} 
describe "Testes da função funçãoExemploR" $ do -- Coloque o nome da função aqui
                it "1" $ do                 -- Coloque o nome do teste aqui
                        somaQuadsR 3 `shouldBe` 14-- Invoque a função do lado esquerdo e coloque a resposta esperada do lado direito.
                it "2" $ do                 -- Coloque o nome do teste aqui
                        compR [1,2,3,4,5] `shouldBe` 5-- Invoque a função do lado esquerdo e coloque a resposta esperada do lado direito.
                it "3" $ do                 -- Coloque o nome do teste aqui
                        minimoL [1,2,3,4,5] `shouldBe` 1-- Invoque a função do lado esquerdo e coloque a resposta esperada do lado direito.
