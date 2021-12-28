module PrimeFactors where 

prime_factors :: Int -> [Int]
prime_factors 1 = []
prime_factors n = prime_factorsH n 2 
    -- | n > 1 && n `mod` 2 == 0 = [2] ++ prime_factors (n `div` 2)
    -- | otherwise = [n]

prime_factorsH :: Int -> Int -> [Int]
prime_factorsH n divisor 
    | n `mod` divisor == 0 = [divisor] ++ prime_factors (n `div` divisor)
    | otherwise = prime_factorsH n (divisor+1)