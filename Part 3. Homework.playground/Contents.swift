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

//Разработайте функцию, которая принимает на вход значение типа Bool,
//преобразует его в строку и возвращает. То есть передав true типа Bool должно вернуться "true"
//типа String, то же самое и для false.

//func convert(bool: Bool) -> String {
//    return String(bool)
//}
//convert(bool: true)

//-----------------------------------------------------------------
//Task 2

//Напишите функцию, которая принимает на вход массив с элементами типа Int,
//а возвращает целое число — сумму всех положительных элементов переданного массива.
//К примеру для массива [1,-2,3,4,-5] должно быть возвращено 1+3+4 = 8

//var arr = [1,2,-3,-4,5]
//
//func additionOfPositiveNumbs(_ array: [Int]) -> Int {
//    var sum = 0
//    for number in array where number > 0{
//        sum += number
//}
//    return sum
//}
//
//additionOfPositiveNumbs(arr)

//-----------------------------------------------------------------
//Task 3
//Напишите функцию, которая принимает на вход массив типа [Int] и, в случае,
//если количество элементов > 0, то возвращает целое число —
//произведение всех элементов переданной коллекции.
//Если количество элементов = 0, то возвращается 0.
//Пример:
//[1,2,3,4] -> 1 * 2 * 3 * 4 = 24

//func prodOfElements(_ array: [Int]) -> Int {
//    var product = 0
//    if array.count > 0 {
//        product = 1
//        for number in array {
//            product *= number
//    }
//}
//    return product
//}
//
//prodOfElements([1,2,28,4])

//-----------------------------------------------------------------
//Task 4
//Используя перегрузку (overloading) создайте две одноименные функции,
//которые могут принимать два однотипных параметра (Int или Double) и возвращают их произведение

//1
//func prodOfElements(_ a: Int, _ b: Int) -> Int {
//    return a * b
//}
//
//prodOfElements(2, 5)

//2
//func prodOfElements(_ a: Double, _ b: Double) -> Double {
//    return a * b
//}
//
//prodOfElements(2.5, 5)

//-----------------------------------------------------------------
//Task 5
//Напишите функцию, которая принимает на вход целое число и возвращает противоположное ему целое число

//func opposite(_ a: Int) -> Int {
//    return -a
//}
//opposite(-1)

//-----------------------------------------------------------------
//Task 6
//Напишите функцию, которая производит подсчет стоимости аренды квартиры с учетом следующих условий:
//1. Один день аренды стоит 850 рублей
//2. При аренде от 3 дней вы получаете скидку в размере 550 рублей от общей суммы
//3. При аренде от 7 дней вы получаете скидку в размере 1620 рублей от общей суммы
//Функция должна принимать на вход количество дней, а возвращать итоговую сумму.

//func rent(_ days: Int) -> Int {
//    let priceOfDay = 850
//    var result = days * priceOfDay
//    if days >= 7 {
//        result -= 1620
//    } else if days >= 3 {
//        result -= 550
//    }
//    return result
//}
//
//rent(9)

//-----------------------------------------------------------------
//Task 7
//Напишите функцию, которая принимает на вход массив типа [Int] и значение Int,
//проверяет содержится ли целочисленный элемент в массиве и возвращает true или false
//в зависимости от результата проверки.
//Покажите не менее двух способов решения данной задачи
//1
//func contains1(_ array: [Int], _ a: Int) -> Bool {
//    return array.contains(a)
//}
//contains1([1, 2, 3, 4, 5], 2)

//2
//func contains2(_ array: [Int], _ a: Int) -> Bool {
//    for i in array {
//        if i == a {
//            return true
//        }
//    }
//    return false
//}
//
//contains2([1, 2, 3, 4, 5], 7)

//-----------------------------------------------------------------
//Task 8

//Напишите функцию, которая повторяет заданную строку N раз.
//Функция принимает на вход значение типа String (строку для повторений) и
//значение типа Int (количество повторений) и возвращает полученный результат.
//Пример:
//funcName("Swift", 2) -> "SwiftSwift"
//funcName("Xcode", 0) -> ""

//func repeatString(_ str: String, _ n: Int) -> String {
//    var result = ""
//    for _ in 0 ..< n {
//        result += str
//    }
//    return result
//}
////или
////String(repeating: str, count: n)
//repeatString("Xcode", 7)

//-----------------------------------------------------------------
//Task 9
//Мальчик находится на N-ом этаже в здании. Мама мальчика смотрит в окно на M-ом этаже здания.
//Мальчик выпускает из рук мячик, он летит вниз, отскакивает на (высота броска) * L,
//вновь летит вниз, вновь отскакивает на (высота предыдущего отскока) * L и т.д, пока не окончит отскакивать.
//Реализуйте функцию, которая высчитывает, сколько раз мяч пролетит мимо мамы (вниз и вверх).
//Функция должна принимать на вход следующие параметры:
//— высота одного этажа (h > 0)
//— этаж мальчика (N >= 2)
//— этаж мамы (M >= 1)
//— коэффициент отскока (L < 1)

//func numbsOfBounces(heightOfFloor h: Double, boyFloor N: Int, momFloor M: Int, reboundFactor L: Double) -> Int {
//    guard N > 1, M >= 1, L < 1 else {
//        return 0
//    }
//
//    var totalBounces = 0
//
//    var boyHeight = Double(N) * h
//    let momHeight = Double(M) * h
//
//    while boyHeight >= momHeight {
//        totalBounces += 2
//        boyHeight *= L
//    }
//
//    return totalBounces
//}
//
//let h = 3.0
//let N = 5
//let M = 2
//let L = 0.4
//
//numbsOfBounces(heightOfFloor: h, boyFloor: N, momFloor: M, reboundFactor: L)

//-----------------------------------------------------------------
//Task 10
//Напишите функцию, которая принимает параметр типа String,
//а возвращает true (типа Bool) если в строке есть только уникальные символы,
//и false, если в ней есть хотя бы один повторяющийся символ.
//func uniqueChar(_ str: String) -> Bool {
//    var charSet = [Character: Bool]()
//    for char in str {
//        if charSet[char] != nil {
//            return false
//        }
//        charSet[char] = true
//    }
//    return true
//}
//uniqueChar("Hello")

//-----------------------------------------------------------------
//Task 11
//Напишите функцию, которая определяет, состоят ли две переданные в нее строки из одних и тех же символов.
//Пример:
//funcName(in: "abc", and: "bca") // true
//funcName(in: "abc", and: "bcaa") // false

//func anagram(_ a: String, _ b: String) -> Bool {
//    var result = [Character: Int]()
//    guard a.count == b.count else {
//        return false
//    }
//    for (index, element) in a.enumerated() {
//            result [element] = index
//        }
//        for chars in b {
//            if result.keys.contains(chars) {
//                return true
//            }
//        }
//        return false
//}
//
//anagram("abc", "bca")
//anagram("abc", "bcaa")

//-----------------------------------------------------------------
//Task 12
//Напишите функцию, которая принимает на вход целочисленный диапазон
//и возвращает из него все простые числа.

//func isPrime(_ number: Int) -> Bool {
//    if number <= 1 {
//           return false
//       }
//
//    if number <= 3 {
//           return true
//       }
//
//    if number % 2 == 0 || number % 3 == 0 {
//           return false
//       }
//
//    var i = 5
//    while i * i <= number {
//        if number % i == 0 || number % (i + 2) == 0 {
//            return false
//        }
//        i += 6
//    }
//
//    return true
//}
//
//func simpleNumbs(_ range: ClosedRange<Int>) -> [Int] {
//    var primes = [Int]()
//    for number in range {
//        if isPrime(number) {
//            primes.append(number)
//        }
//    }
//
//    return primes
//}
//
//print(simpleNumbs(1...1000))

//-----------------------------------------------------------------
//Task 13

//Реализуйте функцию pow(Int,Int), которая принимает два целочисленных элемента.
//Первый указывает на степень второго числа.
//Результат функции — второй аргумент функции, возведенный в степень (первый аргумент функции).

//Предполагается, что аргументы могут быть только целыми положительными числами.

//func multiplier(_ degree: Int, _ i: Int) -> Int {
//    guard degree > 0  else { return 1 }
//
//    var result = 1
//    for _ in 1 ... degree {
//        result *= i
//    }
//    return result
//}
//
//multiplier(4, 5)

