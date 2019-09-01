{- ####
    First Script
-}
module First where

size :: Integer
size = 12+3

square :: Integer -> Integer
square n = n*n

double :: Integer -> Integer
double n = 2*n

example :: Integer
example = double (size - square (2+2))

threeEqual :: Integer -> Integer -> Integer -> Bool
threeEqual m n p = (m == n ) && (n == p)


mystery :: Integer -> Integer -> Integer -> Bool
mystery m n p = not ( (m == n ) && (n == p) )
