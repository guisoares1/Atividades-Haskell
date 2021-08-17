module Root.Src.Exercise where

implementar = error "Implementar"

{-
Assim como Bool pode assumir os valores True e False, o tipo Naipe pode assumir um dos valores Copas, Espada, Ouro e Paus, tal que
Copas < Espada < Ouro < Paus
>>>Copas > Espada
False
>>> Espada > Ouro
False
>>> Paus > Copas
True
>>>maiorDeTres Copas Espada Paus
Paus
>>>maiorDeTres Copas Copas Copas
Copas
-}
data Naipe = Copas | Espada | Ouro | Paus deriving (Ord,Eq,Show)

{-
Seja o tipo de dados Carta tupla em que 
 - o primeiro elemento é o valor da carta (1,2,3,4,5,6,7,8,9,10,11,12,13) 
 - o segundo é um Naipe
-}
type Carta = (Int, Naipe)


-- Defina as seguintes funções usando apenas casamento de padrões do lado esquerdo das equações.

{-
Uma função que receba uma carta retorne seu Naipe.
Entrada:
    - c1: carta
Resultado: 
    - naipe da carta
Exemplos:
>>>naipe (1,Ouro)
Ouro
-}
naipe:: Carta -> Naipe
naipe (_,n) = n


{-
Uma função que receba uma carta retorne seu valor.
Entrada:
    - c1: carta
Resultado: 
    - valor da carta
Exemplos:
>>>valor (1,Ouro)
1
-}
valor:: Carta -> Int
valor (n,_) = n


{-
Uma função que receba duas cartas retorne se seus naipes são iguais.
Entrada:
    - c1: carta
    - c2: carta
Resultado: 
    - naipe de c1 igual a naipe de c2?
Exemplos:
>>>naipeIgual (1,Ouro) (2,Ouro)
True
>>>naipeIgual (1,Ouro) (2,Paus)
False
-}

naipeIgual:: Carta -> Carta -> Bool
naipeIgual (_,n1) (_,n2) = n1==n2



{-
Uma função que receba uma carta e retorne seu valor por extenso.
Entrada:
    - c1: carta
Resultado: 
    - valor de c1 por extenso
Exemplos:
>>>valorPorExtenso (1,Ouro)
"Um"
>>>valorPorExtenso (2,Paus)
"Dois"
>>>valorPorExtenso (12,Ouro)
"Dama"
-}
valorPorExtenso:: Carta -> String
valorPorExtenso (num, nipe) = if num==1 then "Um"
                              else if num==2 then "Dois"
                              else if num==3 then "Tres"
                              else if num==4 then "Quatro"
                              else if num==5 then "Cinco"
                              else if num==6 then "Seis"
                              else if num==7 then "Sete"
                              else if num==8 then "Oito"
                              else if num==9 then "Nove"
                              else if num==10 then "Rei"
                              else if num==11 then "Valete"
                              else if num==12 then "Dama"
                              else "Digite uma carta válida"
{-
Uma função que receba uma carta e retorne seu naipe por extenso.
Entrada:
    - c1: carta
Resultado: 
    - naipe de c1 por extenso
Exemplos:
>>>naipePorExtenso (1,Ouro)
"Ouro"
>>>naipePorExtenso (2,Paus)
"Paus"
>>>naipePorExtenso (12,Ouro)
"Ouro"
-}
naipePorExtenso:: Carta -> String
naipePorExtenso (_, nipe) = if naipeIgual(1,nipe) (1,Copas) then "Copas"
                            else if naipeIgual(1,nipe) (1,Ouro)  then "Ouro"
                            else if naipeIgual(1,nipe) (1,Paus) then "Paus"
                            else if naipeIgual(1,nipe) (1,Espada) then "Espada"
                            else "Digite uma carta válida"

{-
Uma função que receba três cartas e retorne um booleano dizendo se formam uma sequencia, isto é, se estão
aparecem dentro da seguinte sequência: Copas Espada Ouro Paus Copas Espada 
Entrada:
    - Carta
    - Carta
    - Carta
Resultado: 
    - Estão em sequência?
Exemplos:
>>>sequênciaDeNaipes (1,Paus) (2,Ouro) (7,Copas)
False
>>>sequênciaDeNaipes (1,Paus) (7,Copas) (2,Ouro) 
False
>>>sequênciaDeNaipes (1,Paus) (2,Espada) (7,Copas)
False
>>>sequênciaDeNaipes (1,Espada) (2,Copas) (7,Ouro)
False
-}
sequênciaDeNaipes:: Carta ->  Carta ->  Carta -> Bool
sequênciaDeNaipes (_,naipe1) (_,naipe2) (_,naipe3) = if naipePorExtenso(1,naipe1) == "Copas" && naipePorExtenso(1,naipe2) == "Espada" && naipePorExtenso(1,naipe3) == "Ouro" then True
                                                     else if naipePorExtenso(1,naipe1) == "Espada" && naipePorExtenso(1,naipe2) == "Ouro" && naipePorExtenso(1,naipe3) == "Paus" then True
                                                     else if naipePorExtenso(1,naipe1) == "Ouro" && naipePorExtenso(1,naipe2) == "Paus" && naipePorExtenso(1,naipe3) == "Copas" then True
                                                     else if naipePorExtenso(1,naipe1) == "Paus" && naipePorExtenso(1,naipe2) == "Copas" && naipePorExtenso(1,naipe3) == "Espada" then True
                                                     else False
                                                     

{-
Uma função que recebe uma data na forma de três inteiros e retorna a da por extenso.
Entrada:
    - Dia
    - Mês
    - Ano
Resultado
    - Data por extenso
    - Quando o dia for 1, usar Primeiro como extenso.
Exemplos:
>>>dataPorExtenso 1 1 2001
"Primeiro de Janeiro de 2001"
>>>dataPorExtenso 10 3 2010
"Dez de Março de 2010"
-}
dia:: Int ->  String
dia d = if d == 1 then "Primeiro"
        else if d==2 then "Dois"
        else if d==3 then "Três"
        else if d==4 then "Quatro"
        else if d==5 then "Cinco"
        else if d==6 then "Seis"
        else if d==7 then "Sete"
        else if d==8 then "Oito"
        else if d==9 then "Nove"
        else if d==10 then "Dez"
        else if d==11 then "Onze"
        else if d==12 then "Doze"
        else if d==13 then "Treze"
        else if d==14 then "Quatorze"
        else if d==15 then "Quinze"
        else if d==16 then "Dezesseis"
        else if d==17 then "Dezessete"
        else if d==18 then "Dezoito"
        else if d==19 then "Dezenove"
        else if d==20 then "Vinte"
        else if d==21 then "Vinte e Um"
        else if d==22 then "Vinte e Dois"
        else if d==23 then "Vinte e Três"
        else if d==24 then "Vinte e Quatro"
        else if d==25 then "Vinte e Cinco"
        else if d==26 then "Vinte e Seis"
        else if d==27 then "Vinte e Sete"
        else if d==28 then "Vinte e Oito"
        else if d==29 then "Vinte e Nove"
        else if d==30 then "Trinta"
        else if d==31 then "Trinta e Um"
        else ""
        
mes:: Int ->  String  
mes d =  if d == 1 then "Janeiro"
        else if d==2 then "Fevereiro"
        else if d==3 then "Março"
        else if d==4 then "Abril"
        else if d==5 then "Maio"
        else if d==6 then "Junho"
        else if d==7 then "Julho"
        else if d==8 then "Agosto"
        else if d==9 then "Setembro"
        else if d==10 then "Outubro"
        else if d==11 then "Novembro"
        else if d==12 then "Dezembro"
        else ""
        
ano:: Int ->  String 
ano ano = show ano

dataPorExtenso:: Int -> Int -> Int -> String
dataPorExtenso d m a = unwords([dia(d), "de", mes(m) ,"de", ano(a)])
