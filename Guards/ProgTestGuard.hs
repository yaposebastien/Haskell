{- ###################################
    Script pour tester les fonctions
    contenues dans le fichier Prog.hs
   ##################################-}

import Prog
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

    -- maxDeuxChiffres :: Integer -> Integer -> Integer
    testCase "test_maxDeuxChiffres1" $ assertEqual [] 9 (maxDeuxChiffres 9 3),
    testCase "test_maxDeuxChiffres2" $ assertEqual [] 9 (maxDeuxChiffres 3 9),

    -- maxTroisChiffres :: Integer -> Integer -> Integer -> Integer
    testCase "test_maxTroisChiffres1" $ assertEqual [] 9 (maxTroisChiffres 5 4 9),
    testCase "test_maxTroisChiffres2" $ assertEqual [] 9 (maxTroisChiffres 4 9 5),
    testCase "test_maxTroisChiffres3" $ assertEqual [] 9 (maxTroisChiffres 9 5 4)
  ]
