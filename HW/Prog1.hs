{-####################################### 
       --Nke Yapo CSC 345 - 80
      -- Homework 1.
######################################-}

module Prog1 where 

--A function that returns whether a given number is between -10 and 10    
isSingleDigit :: Integer -> Bool
isSingleDigit num
  | num > (-10) && num < 10     = True
  | otherwise                  = False

-- A function that returns whether some dividend is evenly divisible by
-- a given divisor e.g dividesEvenly 6 3 return 3
dividesEvenly :: Integer -> Integer -> Bool
dividesEvenly x y 
  | ((x `mod` y) == 0 ) = True
  | otherwise           = False

-- A function that returns the second greatest of three given integers
middle :: Integer -> Integer -> Integer -> Integer
middle a b c
  | (a <= b && a >= c) || (a <= c && a >= b)    = a
  | (b <= a && b >= c) || (b <= c && b >= a) = b
  | otherwise                                = c


-- A function nand that computes the NAND gate of two booleans argument
nand :: Bool -> Bool -> Bool
nand x y
  | (x == True && y == True)    = False
  | otherwise                  = True


-- A function that computes the area of the triangle given height and base.
triangleArea :: Integer -> Integer -> Float
triangleArea base height = ((fromIntegral base) * (fromIntegral height))/2


-- A function that calculates the floor of an float, but returns it as
-- a float rather than an integer
floorDecimal :: Float -> Float
floorDecimal x = fromIntegral(floor x)


-- A function that returns whether a given character is not letter
isNotLetter :: Char -> Bool
isNotLetter ch 
  |((ch >= 'a') && (ch <= 'z')) = False
  |((ch >= 'A') && (ch <= 'Z')) = False
  |((ch >= '0') && (ch <= '9')) = True
  | otherwise                  = True

-- A function that returns the equivalent of the letter grade for a given
-- numerical integer grade
letterGrade :: Integer -> String
letterGrade grade
  | (grade >= 93 && grade <= 100)  = "A"
  | (grade >= 90 && grade < 93)    = "A-"
  | (grade >= 87 && grade < 90)    = "B+"
  | (grade >= 83 && grade < 87)    = "B"
  | (grade >= 80 && grade < 83)    = "B-"
  | (grade >= 77 && grade < 80)    = "C+"
  | (grade >= 73 && grade < 77)    = "C"
  | (grade >= 70 && grade < 73)    = "C-"
  | (grade >= 67 && grade < 70)    = "D+"
  | (grade >= 63 && grade < 66)    = "D"
  | (grade >= 60 && grade < 63)    = "D-"
  | otherwise                      = "F"

-- A function that returns the average of three integers
averageThree :: Integer -> Integer -> Integer -> Float
averageThree one two three = (fromIntegral(one) + fromIntegral(two) + fromIntegral(three))/3

-- A function that returns how many of three integers inputs are below its
-- average value
howManyBelowAverage :: Integer -> Integer -> Integer -> Integer
howManyBelowAverage x y z 
  | ((x < floor(averageThree x y z)) && (y > floor(averageThree x y z)) && (z > floor(averageThree x y z)))     = 1 
  | ((y < floor(averageThree x y z)) && (x > floor(averageThree x y z)) && (z > floor(averageThree x y z)))     = 1
  | (z < floor(averageThree x y z)) && (x > floor(averageThree x y z)) && (y > floor(averageThree x y z))       = 1
  | ( x < floor(averageThree x y z) && ( y < floor(averageThree x y z)) && (z > floor(averageThree x y z)))     = 2
  | ( x < floor(averageThree x y z) && ( z < floor(averageThree x y z)) && (y > floor(averageThree x y z)))     = 2
  | ( y < floor(averageThree x y z) && ( z < floor(averageThree x y z)) && x > floor(averageThree x y z))       = 2
  | otherwise                                                                                                 = 0
  


