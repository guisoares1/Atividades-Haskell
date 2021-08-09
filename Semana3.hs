module Root.Src.Exercise where

-- Defina os tipos das seguintes funções de acordo com as descrições.


{-
- entrada: três números inteiros de precisão finita (Int)
- saída: Int
-}
somaTresNumeros n1 n2 n3 = n1 + n2 + n3

{-
Esta função retorna a área do quadrado de lado l

areaQuadrado
- Entrada: l, Float
- Saída: l**2, Float
-}
areaQuadrado l = l**2

{-
Esta função retorna a área do retângulo de lado l1 e l2

areaRetangulo
- Entrada: l1 e l2, Floats
- Saída: l1 * l2, Float
-}
areaRetangulo l1 l2 = l1 * l2


-- Defina as seguintes funções usando if then else
{-
Esta função retorna o maior de tres números

maiorDeTres
- Entrada: a b c, Integer
- Saída: o maior dentre a b c, Integer
-}
maiorDeTres a b c = if a >= b && a >= c then a
                    else if b >= c then b
                    else c


-- Defina as seguintes funções, incluindo a definição de tipos.

{-
Esta função calcula quem ganha no jogo pedra/tesoura/papel

pedraTesouraPapel
- Entrada: m1 m2 - "pedra" "tesoura" "papel"
- Saída: O valor ganhador, ou "empate" no caso empate

>>>pedraTesouraPapel "pedra" "papel"
"papel"

>>>pedraTesouraPapel "pedra" "tesoura"
"pedra"

>>>pedraTesouraPapel "papel" "tesoura"
"tesoura"
-}
pedraTesouraPapel m1 m2 = if m1=="pedra" && m2=="papel" then m2
                          else if m1=="pedra"  && m2=="tesoura" then m1
                          else if m1=="papel"  && m2=="tesoura" then m2
                          else if m1=="papel"  && m2=="pedra" then m1
                          else if m1=="tesoura" && m2=="papel" then m1
                          else if m1=="tesoura" && m2=="pedra" then m2
                          else "empate"

{-
Esta função calcula a conjunção do dois parâmetros (e lógico).
-}
eLógico p1 p2 = p1 && p2

{-
Esta função calcula a disjunção do dois parâmetros (ou lógico).
-}
ouLógico p1 p2 = p1 || p2

-- Defina as seguintes funções usando ++ !! take e reverse.

{-
Defina função que retorne substring de t elementos começando na posição i
subStringDeAte "entrada1" 2 2 retorna "tr"

Entrada:
    - s: string
    - i: inteiro
    - t: inteiro
-}
subStringDeAte :: String -> Int -> Int -> String
subStringDeAte s i t = (take t (drop i s))
                   

{-
Defina função que retorne substring com os últimos u elementos

Entrada:
    - s: string
    - u: inteiro
-}
últimosU s u = drop u s
{-
Defina função que receba duas strings e retorne a resultado da concatenação das substrings de t elementos começando na posição i

Entrada
    - s1: string
    - s2: string
    - i: inteiro
    - u: inteiro
-}

subStringDeAteAppend s1 s2 i u = error "Indefinido"



-- Nas próximas funções, trabalharemos com definições de tipo e tuplas.

{-
Seja o tipo de dados Carta tupla em que 
 - o primeiro elemento é o valor da carta (1,2,3,4,5,6,7,8,9,10,11,12,13) 
 - o segundo é o naipe ("ouro", "copas", "espada", "paus").
-}
type Carta = (Int, String)

{-
Uma função que receba uma carta retorne seu naipe.

Entrada:
    - c1: carta

Resultado: naipe da carta
-}
naipe c1 = error "Indefinido"

{-
Uma função que receba uma carta retorne seu valor.

Entrada:
    - c1: carta

Resultado: valor da carta
-}
valor c1 = error "Indefinido"


{-
Uma função que receba duas cartas e diga se a primeira é menor que a segunda.
Uma carta c1 é menor que uma carta c2 se valor c1 < valor2 OU se valor c1 == valor c2 e naipe c1 < c2.
"copas" < "espada" < "ouro" < "paus"

Entrada:
    - c1, c2: Carta
Resultado: True ou False
-}

cartaÉMenor c1 c2 = error "Indefinido"

{-
Uma função que receba duas cartas e diga se a primeira é igual à segunda.

Entrada:
    - c1, c2: Carta
Resultado: True ou False
-}

cartaÉIgual c1 c2 = error "Indefinido"

{-
Uma função que receba duas cartas e diga se a primeira é maior que a segunda.

Entrada:
    - c1, c2: Carta
Resultado: True ou False
-}
cartaÉMaior c1 c2 = error "Indefinido"


{-
Uma função que receba três cartas c1 c2 c3 e diga se formam um jogo.
- seja m1 a maior dentre as cartas c1 c2 c3
- seja m2 a de valor mediano dentre as cartas c1 c2 c3
- seja m3 a menor dentre as cartas c1 c2 c3
m1 m2 e m3 formam um jogo se e somente si
    - OU naipe m1 == naipe m2 == naipe m3 E valor m1 == valor m2 + 1 == valor m3 + 2
    - OU naipe m1 =/= naipe m2 =/= naipe m3 =/= m1 E valor m1 == valor m2 == valor m3


Entrada:
    - c1, c2, c3: Carta
Resultado: True ou False
-}
éJogo c1 c2 c3 = error "Indefinido"

{-
Defina uma função que receba duas tuplas de 3 cartas, onde a primeira carta é maior ou igual à segunda, que é maior ou igual à terceira, 
compare as tuplas, e retorne a maior dentre as duas mãos.
Uma tupla t1 é menor que uma tupla t2 se e somente se
- a primeira carta de t1 é menor que a primeira de t2 OU
- as primeiras cartas são iguais mas a segunda carta de t1 é menor que a segunda de t2
- as primeiras e segundas cartas são iguais mas a terceira carta de t1 é menor que a terceira de t2
-}
maiorMão t1 t2 = error "Indefinido"

{-
Defina uma função que receba duas tuplas de 3 cartas, onde a primeira carta é maior ou igual à segunda, que é maior ou igual à terceira, 
e compare as tuplas para dizer qual ganha, ou se houve empate.
Uma tupla t1 ganha de uma tupla t2 se 
- t1 é um jogo mas t2 não é um jogo
- t1 e t2 são um jogo mas t1 é maior que t2.
- se nenhuma é jogo e t1 é maior que t2
- No caso de empate, retorne a tupla ((0,""),(0,""),(0,""))
-}

mãoGanhadora tupla1 tupla2 = error "Indefinido"