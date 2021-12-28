module PrimeFactorsTests where 
import PrimeFactors

import Test.Hspec --https://hspec.github.io/
import Text.Printf (printf) 

test_prime_factor_of_1 :: Spec 
test_prime_factor_of_1 = 
    it (printf "should return empty list") $ prime_factors 1 `shouldBe` []

test_prime_factor_of_n :: Int -> [Int] -> Spec 
test_prime_factor_of_n n expected = 
    it (printf "should return empty list") $ prime_factors n `shouldBe` expected


main :: IO () 
main = hspec $ do 
    describe "prime factorisation " $ do 
    test_prime_factor_of_n 1 []
    test_prime_factor_of_n 2 [2] 
    test_prime_factor_of_n 3 [3] 
    test_prime_factor_of_n 4 [2, 2] 
    test_prime_factor_of_n 5 [5] 
    test_prime_factor_of_n 6 [2,3] 
    test_prime_factor_of_n 7 [7] 
    test_prime_factor_of_n 8 [2,2,2] 
    test_prime_factor_of_n 9 [3,3] 
    test_prime_factor_of_n 10 [2,5] 
    test_prime_factor_of_n 11 [11] 
    test_prime_factor_of_n 12 [2, 2, 3] 
    test_prime_factor_of_n 13 [13] 
    test_prime_factor_of_n (2*2*3*3*5) [2,2,3,3,5] 
    
    