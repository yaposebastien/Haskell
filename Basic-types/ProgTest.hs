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

    -- addOne :: Integer -> Integer
    testCase "test_addOne" $ assertEqual [] 4 (addOne 3),
    testCase "test_addOne" $ assertEqual [] 2 (addOne 1),

    -- xor' :: Bool -> Bool -> Bool
    testCase "test_xor'" $ assertEqual [] True (xor' True False),
    testCase "test_xor'" $ assertEqual [] True (xor' False True),
    testCase "test_xor'" $ assertEqual [] False (xor' True True),
    testCase "test_xor'" $ assertEqual [] False (xor' False False)

  ]
