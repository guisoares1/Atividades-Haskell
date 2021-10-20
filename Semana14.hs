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


{-testes:-} 
describe "Testes da função funçãoExemploR" $ do -- Coloque o nome da função aqui
                it "1" $ do                 -- Coloque o nome do teste aqui
                        somaQuadsR 3 `shouldBe` 14-- Invoque a função do lado esquerdo e coloque a resposta esperada do lado direito.
                it "2" $ do                 -- Coloque o nome do teste aqui
                        compR [1,2,3,4,5] `shouldBe` 5-- Invoque a função do lado esquerdo e coloque a resposta esperada do lado direito.
                it "3" $ do                 -- Coloque o nome do teste aqui
                        minimoL [1,2,3,4,5] `shouldBe` 1-- Invoque a função do lado esquerdo e coloque a resposta esperada do lado direito.
