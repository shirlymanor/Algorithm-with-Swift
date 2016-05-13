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

<b> Create power function x in the power of y without using the func pow </b><br>

func power(x:Double,y:Double)->Double <br>{

   &nbsp; if(y==0){<br>
   &nbsp;&nbsp;     return 1.0<br>
   &nbsp; }<br>
  &nbsp;  var temp:Double = 1.0<br>
  &nbsp;  for _ in 1...Int(y){<br>
  &nbsp;&nbsp;      temp = temp * x<br>
 &nbsp;   }<br>
  &nbsp;  print (temp)<br>
  &nbsp;  if(y < 0){<br>
  &nbsp;&nbsp;      temp =  Double(1) / Double(temp)<br>
  &nbsp;  }<br>
    
    return temp<br>
}
<br>
power(3.0,y: 4.0)
<br>
<b>use recursion</b><br>

func power2(x:Int,y:Int)->Int<br>
{<br>
   &nbsp; if(y==0){<br>
    &nbsp; &nbsp;   return 1<br>
   &nbsp; }<br>
  &nbsp;  return x * power2(x,y:y-1)<br>
}<br><br>

power2(3,y:4)

