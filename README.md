# Algorithm-with-Swift
func prime()
{

    for index in 1...100
    {
        if(!isNotPrime(index)){
            print(index)
        }
    }
    
}

func isNotPrime(x:Int)->Bool
{

    for index in 2...100^2
    {
        if((x%index == 0)&&(index != x)){
            return true}
    }
    return false;
}

prime(100)
