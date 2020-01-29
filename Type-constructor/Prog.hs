--First example defining type constructor

data Person = Person {name :: String, age :: Int}


getName :: Person -> String
getName (Person name _) = name
getAge :: Person -> Int
getAge (Person _ age) = age

nkeYapo = Person { name = "Nke", age = 68}

