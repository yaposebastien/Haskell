module Prog where


addOne :: Int -> Int
addOne x = x + 1


quatreEgaux :: Integer -> Integer -> Integer -> Integer -> Bool
quatreEgaux w x y z = (w == x) && (x == y) && (y == z)

--Dans cette redefinition du programme quatreEgaux nous allons reutilise
--troisEgaux dans son implementation
quatreEgaux' :: Integer -> Integer -> Integer -> Integer -> Bool
quatreEgaux' w x y z = (troisEgaux w x y) && (y == z)



troisFois :: Int -> Int
troisFois x = 3 * x

troisEgaux :: Integer -> Integer -> Integer -> Bool
troisEgaux x y z = (x == y) && (y == z)

--Encodage de la porte logique xor
--B1 B2 xor
--T  T  F
--T  F  T
--F  T  T
--F  F  F
xor' :: Bool -> Bool -> Bool
xor' bone  btwo = bone /= btwo

