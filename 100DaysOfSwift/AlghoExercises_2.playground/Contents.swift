import UIKit

//1. Write a Swift program to compute the sum of the two integers. If the values are equal return the triple their sum.

func exc1(_ no1: Int, _ no2: Int) -> Int {
    let sum = no1 + no2
    if no1 == no2 {
        return sum * 3
    }
    return sum
}

//2. Write a Swift program to compute and return the absolute difference of n and 51, if n is over 51 return double the absolute difference
func exc2(_ no1: Int) -> Int {
    var absoulute: Int = 0
    
    if no1 < 51 && no1 > 0 {
        absoulute = 51 - no1
        return absoulute
    } else if no1 > 51 {
        absoulute = no1 - 51
        return absoulute
    } else {
        return absoulute
    }
}

//3. Write a Swift program that accept two integer values and return true if one of them is 20 or if their sum is 20.
func exc3(_ no1: Int, _ no2: Int) -> Bool {
    if no1 == 20 || no2 == 20 || no1 + no2 == 20 {
        return true
    }
    return false
}

//4. Write a Swift program to accept two integer values and return true if one is negative and one is positive. Return true only if both are negative.
func exc4(_ no1: Int, _ no2: Int) -> Bool {
    if no1 < 0 && no2 > 0 {
        return true
    } else if no1 > 0 && no2 < 0 {
        return true
    } else if no1 < 0 && no2 < 0 {
        return true
    }
    return false
}

//5. Write a Swift program to add "Is" to the front of a given string. However, if the string already begins with "Is", return the given string.
func exc5(_ prefix: String) -> String{
    let isprefix = "Is"
    if prefix.hasPrefix("Is") {
        return prefix
    }
    return isprefix + prefix
}

//6. Write a Swift program to remove a character at specified index of a given non-empty string. The value of the specified index will be in the range 0..str.length()-1 inclusive.
func exc6(str1: String, n: Int) -> String {
    let count = str1.count
    var newWord = str1
    let index = str1.index(str1.startIndex, offsetBy: n)
    if  count > 0
    {
        newWord.remove(at: index)
    }
    return newWord
}

