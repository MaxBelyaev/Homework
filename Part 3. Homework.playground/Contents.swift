import UIKit
import Darwin
import Foundation

//: 10. Операторы управления

// Задание №4

//Вы имеете три переменные-кортежа, содержащие координаты точек.
//Напишите программу, которая определяет, может ли существовать треугольник
//с заданными координатами вершин.

//Треугольник существует только тогда, когда сумма длин любых двух его сторон больше длины третьей.
//
//func isTriangleExists(pointA: CGPoint, pointB: CGPoint, pointC: CGPoint) -> Bool {
//    let sideAB = hypot(pointA.x - pointB.x, pointA.y - pointB.y)
//    let sideAC = hypot(pointA.x - pointC.x, pointA.y - pointC.y)
//    let sideBC = hypot(pointB.x - pointC.x, pointB.y - pointC.y)
//
//    return (sideAB + sideAC > sideBC) && (sideAB + sideBC > sideAC) && (sideAC + sideBC > sideAB)
//}
//
//let pointA = CGPoint(x: 9.0, y: 2.0)
//let pointB = CGPoint(x: 3.0, y: 4.0)
//let pointC = CGPoint(x: 6.0, y: 0.0)
//
//if isTriangleExists(pointA: pointA, pointB: pointB, pointC: pointC) {
//    print("Треугольник существует")
//} else {
//    print("Треугольник не существует")
//}

//Task 1

// if else operator
//let name = "Max"

//if name == "Max" {
//    print("Приветствую, Император!")
//} else if name == "Valerka" {
//    print("Здорова, Валероооон, ёпт!")
//} else if name == "Snezhana"{
//    print("Пошла вон")
//} else {
//    print("Некорректное имя пользователя!")
//}
//
////switch operator
//switch name {
//case "Max":
//    print("Приветствую, Император!")
//case "Valerka":
//    print("Здорова, Валероооон, ёпт!")
//case "Snezhana":
//    print("Пошла вон")
//default:
//    print("Некорректное имя пользователя!")
//}



//Task 2

//var open = false
//var message = open ? "Open" : "Close"
//print(message)



//Task 3

//var var1 = 50
//var var2 = 100
//var var3 = 40
//var more = var1

// way 1
//if var2 > more {
//    more = var2
//}
//if var3 > more {
//    more = var3
//}
//
//let result = more
//print(result)

//way 2
//let arr = [var1, var2, var3]
//let result = arr.max()
//print(result!)



//Task 4

//var (a, b, c): ((Double, Double), (Double, Double), (Double, Double)) = ((12.5, 32.3), (23.7, 78.9), (31.2, 56.4))
////d = √((x2-x1)² + (y2-y1)²)
//let aB = sqrt(pow(b.0 - a.0, 2) + pow(b.1 - a.1, 2))
//let aC = sqrt(pow(c.0 - a.0, 2) + pow(c.1 - a.1, 2))
//let bC = sqrt(pow(c.0 - b.0, 2) + pow(c.1 - b.1, 2))
//
//if aB + bC > aC && aC + bC > aB && aB + aC > bC{
//    print("True triangle")
//} else {
//    print("False triangle")
//}



//Task 5, 6

//var lang = "en"
//var days = ""
//var chars = "up"
//
//switch lang {
//case "ru" where chars == "low":
//    days = "понедельник, вторник, среда, четверг, пятница, суббота, воскресенье"
//    break
//case "ru" where chars == "up":
//    days = "понедельник, вторник, среда, четверг, пятница, суббота, воскресенье"
//    days = days.uppercased()
//    break
//case "en" where chars == "low":
//    days = "monday, tuesday, wednesday, thursday, friday, saturday, sunday"
//    break
//case "en" where chars == "up":
//    days = "monday, tuesday, wednesday, thursday, friday, saturday, sunday"
//    days = days.uppercased()
//    break
//default:
//    print("Current value")
//}
//print(days)

//Task 7

////1
//typealias Operation = (operandOne: Double, operandTwo: Double, operation: Character)
////2
//let tuple: Operation = (5, 2.5, "-")
////3
//var result = 0.0
//
//switch tuple.operation {
//case "+":
//    result = tuple.operandOne + tuple.operandTwo
//case "-":
//    result = tuple.operandOne - tuple.operandTwo
//case "/":
//    result = tuple.operandOne / tuple.operandTwo
//case "*":
//    result = tuple.operandOne * tuple.operandTwo
//default:
//    break
//}
//
//print(result)

//: 11.Опциональные типы данных
//Task 3

//var easy: String?
//var medium: String!
//var hard: String
//easy = "1"
//medium = "contra"
//hard = "play game"
//easy = medium
//hard = medium
//easy = hard
//var gameTuple = (easy!, Optional(hard))
//var gameText: String = gameTuple.0


////Task 5
//
//typealias Text = String
//let a: Text = "32"
//let b: Text = "16"
//let c: Text = "max64"
//if let count = Int(c) {
//    print("Константа имеет число \(count).")
//} else {
//    print("Константа не имеет целочисленного значения (nil).")
//}
//
//
////Task 6
////продолжение Task 5
////1
//typealias TupleType = (numberOne: Text?, numberTwo: Text?)
////2
//var one: TupleType = ("190", "67")
//var two: TupleType = ("100", nil)
//var three: TupleType = ("-65", "70")
////3
//switch one {
//case let (numberOne?, numberTwo?):
//    print("one: numberOne = \(numberOne), numberTwo = \(numberTwo)")
//default:
//    break
//}
//
//switch two {
//case let (numberOne?, numberTwo?):
//    print("two: numberOne = \(numberOne), numberTwo = \(numberTwo)")
//default:
//    break
//}
//
//switch three {
//case let (numberOne?, numberTwo?):
//    print("three: numberOne = \(numberOne), numberTwo = \(numberTwo)")
//default:
//    break
//}


//Task 7
//1
//var dictGrades: [String: [String:UInt]] = [
//    "Петров":["19.05.23":10, "24.05.23": 2],
//    "Иванов":["19.05.23":7, "24.05.23": 4],
//    "Залупин":["19.05.23":4, "24.05.23": 8]
//]
////Task 8
//dictGrades["Залупин"] = ["19.05.23":4, "24.05.23": 8, "05.05.23": 10]
////2
//if let averageIndex0 = dictGrades["Петров"],
//   let averageIndex1 = dictGrades["Иванов"],
//   let averageIndex2 = dictGrades["Залупин"]
//{
//    let average0 = averageIndex0.values.reduce(0, +) / UInt(averageIndex0.count)
//    let average1 = averageIndex1.values.reduce(0, +) / UInt(averageIndex1.count)
//    let average2 = averageIndex2.values.reduce(0, +) / UInt(averageIndex2.count)
//    let averageOfGroup = ((average0 + average1 + average2) / UInt(dictGrades.keys.count))
//    print("Средняя оценка Петрова: \(average0)")
//    print("Средняя оценка Иванова: \(average1)")
//    print("Средняя оценка Залупина: \(average2)")
//    print("Средняя оценка по группе этих полуфабрикатов: \(averageOfGroup)")
//}


//Task 9

//typealias Coordinates = (alpha: Character?, num: Int?)
//typealias Chessman = [String:Coordinates]
//var figures: Chessman = ["White King":("f", 8)]
//figures["White King"] = ("f", 8)
//figures["Black King"] = ("a", 3)
//figures["White Pawn"] = (nil,nil)
//for (name, coordinates) in figures {
//    if let alhpa = coordinates.alpha, let num = coordinates.num {
//        print("\(name): \(alhpa),\(num)")
//    } else {
//        print("\(name): отсутствуют координаты")
//    }
//}
    

//:12.Functions
//Task 1
//1
//func convert(bool: Bool) -> String {
//    return String(bool)
//}
//convert(bool: true)


//Task 2
//var arr = [-1,2,3,4,-5]
//func sumOfPositiveValues( arr: inout [Int]) -> Int {
//    var sum = 0
//    for num in arr where num > 0 {
//        sum += num
//    }
//    return sum
//}
// sumOfPositiveValues(arr: &arr)


//Task 3
//var arr: [Int] = [1,2,3,4]
//func prodOfNumbers(arr: [Int]) -> Int {
//    var product = 0
//    if arr.count > 0 {
//        product = 1
//        for i in arr {
//            product *= i
//    }
//}
//    return product
//}
//prodOfNumbers(arr: arr)
//prodOfNumbers(arr: [])


//Task 4
//func overloar(_ a: Int, _ b: Int) -> Int {
//    a * b
//}
//
//func overloar(_ a: Double, _ b: Double) -> Double {
//    a * b
//}
//
//overloar(4,5)
//overloar(4.1, 5.2)


//Task 5

//func opposite(_ x: Int) -> Int {
//    return -x
//}
//opposite(-12)
//opposite(32)


//Task 6

//func rentCalc(days: Int) -> Int {
//    var sum = days * 850
//    if days >= 7 {
//        sum -= 1620
//    }else if days >= 3 {
//        sum -= 550
//    }
//    return sum
//}
//rentCalc(days: 5)
//rentCalc(days: 9)


//Task 7

//func numContent(_ array: [Int], _ a: Int) -> Bool {
//    array.contains(a)
//}
//numContent([1,2,3], 4)
//
//
//func numContent2(_ array: [Int], _ a: Int) -> Bool {
//    return array.firstIndex(of: a) != nil
//}
//numContent2([2,3,4], 4)


//Task 8

//func repeatingString(_ str: String, _ n: Int ) -> String {
//    String(repeating: str, count: n)
//}
//repeatingString("Swift", 2)
//repeatingString("Xcode", 0)


//Task 10

//func hasUniqueChar(_ str: String) -> Bool {
//    var charSet = [Character:Bool]()
//    for char in str {
//        if charSet[char] != nil {
//            return false
//        }
//        charSet[char] = true
//    }
//    return true
//}
//
//hasUniqueChar("hello")
//hasUniqueChar("privet")


//Task 11

//func isAnagram(_ a: String, _ b: String) -> Bool {
//    var result = [Character:Int]()
//    guard a.count == b.count else {
//            return false
//        }
//    for (index, element) in a.enumerated() {
//        result [element] = index
//    }
//    for chars in b {
//        if result.keys.contains(chars) {
//            return true
//        }
//    }
//    return false
//}
//
//isAnagram("abc", "bca")
//isAnagram("abc", "bcaa")


//Task 12
//: не решено
//func primesInArray(_ end: Int) -> [Int] {
//    var primes: [Int] = []
//    for i in 3 ... end {
//        if i % 2 != 0 {
//            primes.append(i)
//        }
//    }
//    return primes
//}
//primesInArray(100)

//Task 13

//func degree(_ factor: Int, _ base: Int) -> Int {
//    guard factor > 0  else { return 1 }
//
//    var result = 1
//    for _ in 1...factor {
//        result *= base
//    }
//        return result
//}
//
//degree(5, 3)
//pow(3, 5)


//Oleg's Task разворот строки

//var str = "Hello World"
//
//func reverse(_ str: String) -> String {
//    var result = ""
//    for char in str {
//        result = String(char) + result
//    }
//    return result
//}
//
//reverse(str)

//init

