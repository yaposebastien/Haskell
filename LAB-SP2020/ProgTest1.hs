{-
   Units Tests for Howework 1.
   
    ## How to run the test:

    (1) $ ghci ProgTest1: main
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
    
        --isPositive :: Integer -> Bool
        testCase "test_isPositive_#1" $ assertEqual [] False (isPositive (-10)),
        testCase "test_isPositive_#2" $ assertEqual [] True (isPositive 3),

        --dividesEvenlyByFive :: Integer -> Bool
        testCase "test_dividesEvenlyByFive_#1" $ assertEqual [] True (dividesEvenlyByFive 5),
        testCase "test_dividesEvenlyByFive_#2" $  assertEqual [] True (dividesEvenlyByFive 15),
        testCase "test_dividesEvenlyByFive_#3" $ assertEqual [] True (dividesEvenlyByFive (-15)),
        testCase "test_dividesEvenlyByFive_#4" $ assertEqual [] True (dividesEvenlyByFive (-5)),
        testCase "test_dividesEvenlyByFive_#5" $ assertEqual [] False (dividesEvenlyByFive (-3)),
        testCase "test_dividesEvenlyByFive_#6" $ assertEqual [] False (dividesEvenlyByFive 3),

        --middle :: Int -> Int -> Int -> Int
        testCase "test_middle_#1" $ assertEqual [] 5 (middle 7 3 5),
        testCase "test_middle_#2" $ assertEqual [] 5 (middle 7 5 3),
        testCase "test_middle_#3" $ assertEqual [] 5 (middle 5 7 3),
        testCase "test_middle_#4" $ assertEqual [] 5 (middle 5 3 7)

    
    ]
