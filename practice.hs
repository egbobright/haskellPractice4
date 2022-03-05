stringAppend :: String -> String -> String

stringAppend n a = n ++ a

fact :: Int -> Int

fact n = if n == 0 then 1 else n * fact (n -1 ) 


double :: Integer -> Integer

double n = 2 * n

maxTwo :: Integer -> Integer -> Integer

maxTwo a b = if a >= b then a else b

maxThree :: Integer -> Integer -> Integer -> Integer

--maxThree a b c = if a > b && a > c then a else if b >a && b > c then b else c
--maxThree a b c = if a > b && a > c then a else maxTwo b c

maxThree a b c = max (max a b) c

middleNumber :: Integer -> Integer -> Integer -> Integer

between :: Integer -> Integer -> Integer -> Bool

between a b c = a < b && b < c 

middleNumber a b c
 | between a b c = b
 | between b a c = a
 | otherwise = c


maxFour :: Integer -> Integer -> Integer -> Integer -> Integer

maxFour1 :: Integer -> Integer -> Integer -> Integer -> Integer

maxFour2 :: Integer -> Integer -> Integer -> Integer -> Integer

maxFour3 :: Integer -> Integer -> Integer -> Integer -> Integer

maxFour a b c d = if a > b && a > c && a > d then a else if b > a && b > c && b > d then b else if c > a && c > b && c > d then c else d

maxFour1 a b c d
 | a > b && a > c && a > d = a
 | b > a && b > c && b > d = b
 | c > a && c > b && c > d = c
 | otherwise = d

maxFour2 a b c d = maxTwo (maxTwo a b) (maxTwo c d) 

maxFour3 a b c d = maxTwo (maxThree a b c) d


--weakAscending :: Integer -> Integer -> Integer -> Bool

checkEqual :: Integer -> Integer -> Bool

checkEqual a b = a == b 

checkEqualThree :: Integer -> Integer -> Integer -> Bool

checkEqualThree a b c =  (checkEqual a b )  && (checkEqual a c)

checkEqualFour :: Integer -> Integer -> Integer -> Integer -> Bool

checkEqualFour a b c d = if (checkEqualThree a b c) then checkEqual a d else False 

equalityCount :: Integer -> Integer -> Integer

equalityCount a b 
 | checkEqual a b == True = 2 
 | otherwise = 1

addEquality :: Integer -> Integer -> Integer

addEquality a b =  (equalityCount a b) + (equalityCount a b)

--there will be a modification of this function
howManyEqual :: Integer -> Integer -> Integer -> Integer -> Integer

howManyEqual a b c d
 | checkEqualFour a b c d  = 4
 | checkEqualThree a b c = 3
 | checkEqual  a b = 2
 | otherwise = 1










