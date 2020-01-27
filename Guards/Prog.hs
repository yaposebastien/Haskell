module Prog where

maxDeuxChiffres :: Integer -> Integer -> Integer
maxDeuxChiffres x y 
  | x >= y = x
  | x <= y = y

maxTroisChiffres :: Integer -> Integer-> Integer -> Integer
maxTroisChiffres x y z = maxDeuxChiffres(maxDeuxChiffres x y) z

--Reecriture de maxTroisChiffres avec guards
maxTroisChiffres' :: Integer -> Integer -> Integer -> Integer 
maxTroisChiffres' x y z 
  | x >= y && x >= z = x
  | y >= z          = y
  | otherwise       = z


maxTroisChiffres'' :: Integer -> Integer -> Integer -> Integer
maxTroisChiffres'' x y z = (x `maxDeuxChiffres` y) `maxDeuxChiffres` z
