# Algorithm-with-Swift

Print all the prime numbers from 1 to N
Prime number is a natural number greater than 1 that has no positive divisors other than 1 and itself.

func prime(n:Int)
{

    for index in 1...n
    {
        if(!isNotPrime(index, n: n)){
            print(index)
        }
    }
    
}

func isNotPrime(x:Int,n:Int)->Bool
{

    for index in 2...n^2
    {
        if((x%index == 0)&&(index != x)){
            return true}
    }
    return false;
}

prime(100)
