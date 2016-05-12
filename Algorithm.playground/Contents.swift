import UIKit

//Create a function to print prime number from 1 to 100
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
prime()

//Find the avarage number

func averageOf(numbers: Int...) -> Double
{
    var sum = 0, countOfNumbers = 0
    for number in numbers
    {
        sum += number
        countOfNumbers += 1
    }
    let result: Double = Double(sum) / Double(countOfNumbers)
    return result
}

averageOf(1,2,5,6)

//Find the power of x by y without using pow function

func power(x:Double,y:Double)->Double
{
    if(y==0){
        return 1.0
    }
    var temp:Double = 1.0
    for _ in 1...Int(y){
        temp = temp * x
    }
    print (temp)
    if(y < 0){
        temp =  Double(1) / Double(temp)
    }
    
    return temp
}

power(3.0,y: 4.0)

//use recursion
func power2(x:Int,y:Int)->Int{
    if(y==0){
        return 1
    }
    return x * power2(x,y:y-1)
}
power2(3,y:4)

//print all permutuations of a string
//for example ab -> ab ba suppose all the letters are uniqe
// 1. if it's only one letter print it and exit


func permutations(n:Int, inout _ a:Array<Character>) {
    if n == 1 {print(a); return}
    for i in 0..<n-1 {
        permutations(n-1,&a)
        swap(&a[n-1], &a[(n%2 == 1) ? 0 : i])
    }
    permutations(n-1,&a)
}

var arr = Array("ABC".characters)
permutations(arr.count,&arr)
print("//////////////")
func permutations1(n:Int,var a:Array<Character>) {
    if n == 1 {print(a); return}
    for i in 0..<n-1 {
        permutations1(n-1,a: a)
        print(n%2)
        ////////0)
        a[n-1] = a[(n%2 == 1) ? 0 : i]
    }
    permutations1(n-1,a: a)
}

var arr1 = Array("ABC".characters)
permutations1(arr1.count,a: arr1)

//reverse string
func changeStr(s:String)->String
{
    var tempArr:Array<Character> = Array(s.characters)
    var i = s.characters.count-1
        for c in s.characters
        {
        tempArr.removeAtIndex(i)
        tempArr.insert(c, atIndex: i)
        i -= 1
    }
    return String(tempArr)
}
changeStr("Hello")
