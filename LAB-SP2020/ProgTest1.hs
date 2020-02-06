{-
   Units Tests for Howework 1.
   
    ## How to run the test:

    (1) $ ghci ProgTest1; main
    (2) *Main> main

-}

import Prog1
import Test.Tasty
import Test.Tasty.HUnit
import System.Environment

main = do
    setEnv "TASTY_TIMEOUT" "2s"
    defaultMain tests


{-
main = defaultMain tests
-}

tests :: TestTree
tests = testGroup "Tests" [unitTests]

unitTests = testGroup "Unit tests" 
    [
    
        --(1) isPositive :: Integer -> Bool
        testCase "test_isPositive_#1 -- False (isPositive (-10))" $ assertEqual [] False (isPositive (-10)),
        testCase "test_isPositive_#2 -- True (isPositive 3)" $ assertEqual [] True (isPositive 3),

        --(2) dividesEvenlyByFive :: Integer -> Bool
        testCase "test_dividesEvenlyByFive_#1 -- True (dividesEvenlyByFive 5)" $ assertEqual [] True (dividesEvenlyByFive 5),
        testCase "test_dividesEvenlyByFive_#2 -- True (dividesEvenlyByFive 15)" $  assertEqual [] True (dividesEvenlyByFive 15),
        testCase "test_dividesEvenlyByFive_#3 -- True (dividesEvenlyByFive (-15))" $ assertEqual [] True (dividesEvenlyByFive (-15)),
        testCase "test_dividesEvenlyByFive_#4 -- True (dividesEvenlyByFive (-5))" $ assertEqual [] True (dividesEvenlyByFive (-5)),
        testCase "test_dividesEvenlyByFive_#5 -- False (dividesEvenlyByFive (-3))" $ assertEqual [] False (dividesEvenlyByFive (-3)),
        testCase "test_dividesEvenlyByFive_#6 -- False (dividesEvenlyByFive 3)" $ assertEqual [] False (dividesEvenlyByFive 3),

        --(3) middle :: Int -> Int -> Int -> Int
        testCase "test_middle_#1 -- 5 (middle 7 3 5)" $ assertEqual [] 5 (middle 7 3 5),
        testCase "test_middle_#2 -- 5 (middle 7 5 3)" $ assertEqual [] 5 (middle 7 5 3),
        testCase "test_middle_#3 -- 5 (middle 5 7 3)" $ assertEqual [] 5 (middle 5 7 3),
        testCase "test_middle_#4 -- 5 (middle 5 3 7)" $ assertEqual [] 5 (middle 5 3 7),

        --(4) nor :: Bool -> Bool
        testCase "test_nor_#1 -- False (nor True True)" $ assertEqual [] False (nor True True ),
        testCase "test_nor_#2 -- False (nor True False)" $ assertEqual [] False (nor True False ),
        testCase "test_nor_#3 -- False (nor False True)" $ assertEqual [] False (nor False True ),
        testCase "test_nor_#4 -- True (nor False False)" $ assertEqual [] True (nor False False),

        --(5) triangleArea :: Integer -> Integer -> Float
        testCase "test_triangleArea_#1 -- 30.0 (triangleArea 12 5)" $ assertEqual [] 30.0 (triangleArea 12 5),
        testCase "test_triangleArea_#2 -- 20.0 (triangleArea (-5) (-8))" $ assertEqual [] 20.0 (triangleArea (-5) (-8)),

        --(6) ceilingDecimal :: Float -> Float
        testCase "test_ceilingDecimal_#1 -- 16.0 (ceilingDecimal 15.1)" $ assertEqual [] 16.0 (ceilingDecimal 15.1),
        testCase "test_ceilingDecimal_#2 -- (-9.0) (ceilingDecimal (-9.66))" $ assertEqual [] (-9.0) (ceilingDecimal (-9.66)),

        --(7) letterGrade :: Integer -> String
        testCase "test_letterGrade_#1 -- `F` (letterGrade 2)" $ assertEqual [] "F" (letterGrade 2),
        testCase "test_letterGrade_#2 -- `F` (letterGrade 59)" $ assertEqual [] "F" (letterGrade 59),
        testCase "test_letterGrade_#1 -- `D-` (letterGrade 60)" $ assertEqual [] "D-" (letterGrade 60),
        testCase "test_letterGrade_#1 -- `D` (letterGrade 63)" $ assertEqual [] "D" (letterGrade 63),
        testCase "test_letterGrade_#1 -- `B+` (letterGrade 87)" $ assertEqual [] "B+" (letterGrade 87),

        --(8) averageThree :: Integer -> Integer -> Integer -> Float
        testCase "test_averageThree_#1 -- 7.0 (averageThree 4 5 12)" $ assertEqual [] 7.0 (averageThree 4 5 12),
        testCase "test_averageThree_#2 -- 10.0 (averageThree (-4) (-16) 50)" $ assertEqual [] 10.0 (averageThree (-4) (-16) 50),
        testCase "test_averageThree_#3 -- 12.0 (averageThree 12 12 12 )" $ assertEqual [] 12.0 (averageThree 12 12 12),

        --(9) howManyAboveAverage :: Integer -> Integer -> Integer ->
            --Integer
        testCase "test_howManyAboveAverage_#1 -- 2 (howManyAboveAverage 16 14 9)" $ assertEqual [] 2 (howManyAboveAverage 16 14 9),
        testCase "test_howManyAboveAverage_#2 -- 1 (howManyAboveAverage 100 10 20 )" $ assertEqual [] 1 (howManyAboveAverage 100 10 20),
        testCase "test_howManyAboveAverage_#3 -- 2 (howManyAboveAverage 3 8 6)" $ assertEqual [] 2 (howManyAboveAverage 3 8 6),
        testCase "test_howManyAboveAverage_#4 -- 2 (howManyAboveAverage (-3) (-12) (-7))" $ assertEqual [] 2 (howManyAboveAverage (-3) (-12) (-7)),
        testCase "test_howManyAboveAverage_#5 -- 0 (howManyAboveAverage (-5) (-5) (-5))" $ assertEqual [] 0 (howManyAboveAverage (-5) (-5) (-5))


    
    ]

