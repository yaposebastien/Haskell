twoMax :: Int -> Int -> Int
twoMax x y = if x>=y then x else y

threeMax :: Int -> Int -> Int -> Int
threeMax x y z = if (twoMax x y) < z then z else (twoMax x y)

--This is the best way to implement threeMax
threeMax' x y z = twoMax z (twoMax x y)
