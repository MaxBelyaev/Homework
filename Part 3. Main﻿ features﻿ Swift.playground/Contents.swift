import UIKit


//: 13.Операторы управления

//: 13.1 Утверждения
//Используются для тестировки в Playground 
//Листинг 13.1
let strName = "Дракон"
let strYoung = "молод"
let strOld = "стар"
let strEmpty = " "
var dragonAge = 230
assert( dragonAge <= 235, strName+strEmpty+strOld )
assert( dragonAge >= 225, strName+strEmpty+strYoung )
print("Программа успешно завершила свою работу")

//: 13.2 Оператор условия if

//Сокращенный синтаксис
//Листинг 13.6
var logicVar = false
// полная форма проверки на отрицание
if logicVar == false {
    print("Переменная logicVar ложна")
}
// сокращенная форма проверки на отрицание
if !logicVar {
    print("Переменная logicVar вновь ложна")
}


//Стандартный синтаксис оператора if

//Листинг 13.7
// переменная типа Bool
var logicVar1 = false
// проверка значения переменной
if logicVar1 {
    print("Переменная logicVar истинна")
} else {
    print("Переменная logicVar ложна")
}

//List 13.8
//Можно юзать операторы || и &&
var su = 200
var ka = 420
if su+ka == 420 {
    print("420 👍")
} else {
    print("PROEBAL")
}

//Листинг 13.10а
var firstLogicVar = true
var secondLogicVar = false
if firstLogicVar && secondLogicVar {
    print("Обе переменные истинны")
} else {
if firstLogicVar || secondLogicVar {
        print("Только одна из переменных истинна ")
    }else{
        print("Обе переменные ложны")
    }
}

//Расширенный﻿ синтаксис﻿ оператора﻿ if

//Листинг 13.11
// проверка значения переменных
if firstLogicVar && secondLogicVar {
    print("Обе переменные истинны")
} else if firstLogicVar || secondLogicVar {
    print("Одна из переменных истинна")
} else {
    print("Обе переменные ложны")
}

//Листинг 13.13
// количество жильцов в доме
var tenantCount = 6
// стоимость аренды на человека
var rentPrice = 0
/* определение цены на одного
человека в соответствии с условием */
if tenantCount < 5 {
    rentPrice = 1000
} else if tenantCount >= 5 && tenantCount <= 7 {
    rentPrice = 800
} else {
    rentPrice = 500
}
// вычисление общей суммы средств
var allPrice = rentPrice * tenantCount

//Листинг 13.13а
/*данный метод contains(_:) позволяет определить,
 попадает ли значение в требуемый диапазон */
if (..<5).contains(tenantCount) {
    rentPrice = 1000
} else if (5...7).contains(tenantCount) {
    rentPrice = 800
} else if (8...).contains(tenantCount) {
    rentPrice = 500
}

//Тернарный оператор условия

//Листинг 13.14
let a = 1
let b = 2
// сравнение значений констант
a <= b ? print("A меньше или равно B") : print("A больше B")

// Листинг 13.15
/* Тернарный оператор условия может возвращать
заданные ему варианты (зависит от значения переменной)*/
// переменная типа Int
var height = 180
// переменная типа Bool
var isHeader = true
// вычисление значения константы
let rowHeight = height + (isHeader ? 20 : 10 )

//: 13.3 Оператор ветвления Switch

//Листинг 13.17
var userMark = 2
// переменная для хранения сообщения
var message = ""
switch userMark {
case 1, 2:
    message = "Ты проебал, касатик!"
case 3:
    message = "Ты плохо учил материал в этом году!"
case 4:
    message = "Неплохо, но могло быть и лучше"
case 5:
    message = "Бесплатное место в университете тебе обеспечено!"
default:
    message = "Переданы некорректные данные об оценке"
}
// вывод сообщения на консоль
print(message)

//Диапазоны в операторе switch

//Листинг 13.18
userMark = 4
switch userMark {
case 1..<3:
    print("Экзамен не сдан")
case 3:
    print("Требуется решение дополнительного задания")
case 4...5:
    print("Экзамен сдан")
default:
    assert( false, "Указана некорректная оценка")
}
//С помощью передачи логического false функция assert(_:_:)
//прекратит работу приложения в любом случае, если она была вызвана.


//Кортежи в оперторе switch

//Листинг 13.19
var answer: (code: Int, message: String) = (code: 404, message: "Page not found")
                                            
//Листинг 13.20
//switch answer {
//case (100..<400, _):
//    print( answer.message )
//case (400..<500, _):
//    assert( false, answer.message )
//default:
//    print( "Получен некорректный ответ" )
//}

//Листинг 13.23
var dragonCharacteristics: (color: String, weight: Float) = ("красный", 1.4)
var dragonsCount = 3

switch dragonCharacteristics {
case ("зеленый", 0..<2 ):
    print("Вольер No 1")
case ("красный", 0..<2 ):
    print("Вольер No 2")
case ("зеленый", 2...) where dragonCharacteristics.weight.truncatingRemainder(dividingBy: 1) == 0 && dragonsCount < 5,
     ("красный", 2...) where dragonCharacteristics.weight.truncatingRemainder(dividingBy: 1) == 0 && dragonsCount < 5:
    print("Вольер No 3")
default:
    print("Дракон не может быть принят в стаю")
}
//Выражение dragonCharacteristics.weight.truncatingRemainder (dividingBy: 1) == 0
//позволяет определить, делится ли вес дракона, указанный в кортеже, без остатка на единицу.

//Связывание значений

//Листинг 13.25а
switch dragonCharacteristics {
case ("зеленый", 0..<2 ):
    print("Вольер No 1")
case ("красный", 0..<2 ):
    print("Вольер No 2")
case let (color, weight) where
    (color == "зеленый" || color == "красный")
    && weight.truncatingRemainder(dividingBy: 1) == 0
    && dragonsCount < 5:
print("Вольер No 3. Вес дракона \(weight) тонны")
default:
    print("Дракон не может быть принят в стаю")
}

//Oператор﻿ break﻿ в﻿ конструкции﻿ switch-case

//Листинг 13.26
var someInt = 12
switch someInt {
case 1...:
    print( "Больше 0" )
case ..<0:
    print( "Меньше 0" )
default:
break }

//Ключевое слово fallthrough

//Листинг 13.27
var level: Character = "Б"
// определение уровня готовности
switch level {
    case "А":
        print("Выключить все электрические приборы ")
        fallthrough
    case "Б":
        print("Закрыть входные двери и окна ")
        fallthrough
    case "В":
        print("Соблюдать спокойствие")
    default:
        break
}

//: 13.4.﻿ Операторы﻿ повторения﻿ while﻿ и﻿ repeat﻿ while
//Оператор while

//Листинг 13.28
// начальное значение
var i = 1
// хранилище результата сложения
var resultSum = 0
// цикл для подсчета суммы
while i <= 10 {
    resultSum += i
i += 1 }
resultSum

//Оператор﻿ repeat﻿ while

//Листинг 13.29
// начальное значение
var y = 1
// хранилище результата сложения
var result = 0
// цикл для подсчета суммы
repeat{
result += y
    y += 1
} while y <= 10
result

//: Использование оператора continue

//Листинг 13.30
//Код в листинге 13.30 производит сложение всех четных чисел в интервале от 1 до 10.
//Для этого в каждой итерации производится проверка на четность (по значению остатка от деления на 2).

var x = 0
var sum = 0
while x <= 10 {
    x += 1
    if x % 2 == 1 { //3+5=7=9
continue }
sum += x }
sum // 30

//: Использование﻿ оператора﻿ break

//Листинг 13.31
var lastNum = 54
var currentNum = 1
var sumOfInts = 0
while currentNum <= lastNum {
    sumOfInts += currentNum
    if sumOfInts > 450 {
        print("Хранилище заполнено. Последнее обработанное число - \(currentNum)")
        break
}
    currentNum += 1
}

//: 13.5.﻿Оператор ﻿повторения ﻿for

//    Листинг 13.32
// массив целых чисел
let numArray: Array<Int> = [1, 2, 3, 4, 5]
// в данной переменной будет храниться
// сумма элементов массива numArray
var result0: Int = 0
// цикл подсчета суммы
for number in numArray {
    result0 += number
}
result0 //15

//Листинг 13.34
// внешняя переменная
var myChar = "a"
// внешняя константа
let myString = "Swift"
// цикл использует связанный параметр с именем,
// уже используемым глобальной переменной
for myChar in myString {
    // локальная константа
    // вне цикла уже существует константа с таким именем
    let myString = "Char is"
    print("\(myString) \(myChar)")
}
myChar //"a"
myString //Swift

//Листинг 13.34а
// работа без массива
for _ in 1...3 {
    print("Повторяющаяся строка")
}


//Листинг 13.35
//работа с Dictionary
var countriesAndBlocks = ["Россия": "СНГ", "Франция":"ЕС"]
for (countryName, orgName) in countriesAndBlocks {
    print("\(countryName) вступила в \(orgName)")
}

//Листинг 13.36
// работа с keys & value
var anotherCountriesAndBlocks = ["Россия": "СНГ", "Франция":"ЕС"]
for (countryName, _) in anotherCountriesAndBlocks {
    print("страна — \(countryName)")
}
for (_, orgName) in countriesAndBlocks{
    print("ораганизация — \( orgName)")
}

//Листинг 13.38
//Если требуется получить и индекс, то можно воспользоваться методом enumerated(),
//возвращающим последовательность кортежей,
//где первый элемент — индекс, а второй — значение.
print("Несколько фактов обо мне:")
var myMusicStyles = ["Rock", "Jazz", "Pop"]
for (index, musicName) in myMusicStyles.enumerated() {
    print("\(index+1). Я люблю \(musicName)")
}

//Листинг 13.40
// коллекция элементов от 1 до 10 с шагом 3
//Функция stride(from:through:by:) возвращает последовательность
//числовых элементов, начиная с from до through с шагом by.
for i in stride( from: 1, through: 10, by: 3 ) {
        print("\(i)")
    }

//Листинг 13.42
//вычисления суммы всех нечетных чисел от 1 до 1000 с помощью функции stride(from:through:by:).
var anyResult = 0
for i in stride( from:1, to: 1000, by:2 ) {
anyResult += i
    }
anyResult
//Функция stride(from:to:by:) имеет лишь одно отличие — вместо входного параметра through используется to, который исключает указанное в нем значение из последовательности.
//Функции stride(from: through/to:by:)﻿ возвращают коллекции с типами данных﻿ StrideTo<T> и﻿ StrideThrough<T>.


//Использование﻿ where﻿ в﻿ конструкции﻿ for-in


//Листинг 13.43
var result1 = 0
for i in 1...10 where i % 2 == 0 {
result1 += i }
result1

//Листинг 13.44
//в if экономится память, т.к. в for проходит 10 итераций.

//var isRun = true

//// вариант 1
//if isRun {
//    for i in 1...10 {
//        // тело оператора
//} }

//// вариант 2
//for i in 1...10 where isRun {
//    // тело оператора
//}


//Многомерные ﻿коллекции﻿ в ﻿конструкции ﻿for-in


//Листинг 13.45
// словарь с результатами игр
var resultsOfGames = ["Red Wings":["2:1","2:3"], "Capitals":["3:6","5:5"],"Penguins":["3:3","1:2"]]
type(of: resultsOfGames)
// обработка словаря
for (teamName, results) in resultsOfGames {
    // обработка массива результатов игр
    for oneResult in results {
        print("Игра с \(teamName)  — \(oneResult)")
    }
}
                                                             

//Использование﻿ continue﻿ в﻿ конструкции﻿ for-in


//Листинг 13.46
for i in 1...10 {
    if i % 2 == 0 {
     continue
    } else {
print(i) }
}


//Использование﻿ break﻿ в﻿ конструкции﻿ for-in


//Листинг 13.47
import Foundation
for i in 1... {
    let randNum = Int(arc4random_uniform(100))
    if randNum == 5 {
        print("Итерация номер \(i)")
break }
}


//Листинг 13.48
//Используем метки для прерывания внешнего цикла из внутреннего.
mainLoop: for i in 1...5 {
    for y in i...5 {
        if y == 4 && i == 2{
            break mainLoop
}
        print("\(i) — \(y)")
    }
}


//:  14. Опционалы
// Листинг 14.1
//Он может не понять что ты от него просишь и выдать "nil".
let possibleString = "1945"
let convertPossibleString = Int(possibleString)
let unpossibleString = "Одна тысяча сто десять"
let convertUnpossibleString = Int(unpossibleString)
type(of: convertPossibleString)
type(of: convertUnpossibleString)

//Листинг 14.3
//так явно указывается опциональный тип данных.
var optionalChar: Optional<Character> = "a"
//так не явно, <T>?
var xCoordinate: Int? = 12
//Свифт по умолчанию устанавливает nil при отсутствии значения
var someOptional: Bool?

//Листинг 14.7
//так же, помимо вышеуказанных методов, имеется функция Optional(_:)
// опциональная переменная с установленным значением
var optionalVar = Optional ("stringValue")
optionalVar
// уничтожаем значение опциональной переменной
optionalVar = nil
type(of: optionalVar)


//Oпционалы﻿ в﻿ кортежах


//Листинг 14.8
var tuple: (code: Int, message: String)? = nil
tuple = (404, "Page not found")

//Листинг 14.9
//можно юзать отдельные элементы тюпла
var tupleWithoptelements: (Int?, Int) = (nil, 100)
tupleWithoptelements.0
tupleWithoptelements.1


//14.2.﻿ Извлечение﻿ опционального﻿ значения


//Принудительное извлечение (force unwrapping)

//Листинг 14.11
//Через знак "!"
var optVar: Int? = 12
var intVar = 34
var res = optVar! + 34
type(of: optVar!)

//Листинг 14.12
//тоже самое и с другими типами.
var optString: String? = "Srenya Zhizhkin"
var unwrapperString = optString!
print( "My name is \(unwrapperString)" )

//Косвенное извлечение опционального значения (implicitly unwrapping)

//Листинг 14.13
//отсутствие значения в опционале приведет к ошибке приложения
/* Юзать только при полной уверенности, что в данной переменной ВСЕГДАСУКА будет
участвовать значение (не nil) */
var wrapInt: Double! = 3.14
// сложение со значением базового типа не вызовет ошибок
// при этом не требуется использовать принудительное извлечение
wrapInt + 0.12
type(of: wrapInt)


//14.3.﻿Проверка﻿ наличия﻿ значения﻿ в﻿ опционале


//Листинг 14.14
//Юзаем оператор сравнения, походу можно любой.
var optOne: UInt? = nil
var optTwo: UInt? = 32
optOne == nil
optTwo != nil

//Листинг 14.15
//опеределим количество пятерок
var fiveMarkCount: Int? = 8
var allCakesCount = 0;
// определение наличия значения
if fiveMarkCount != nil {
    // количество пирожных за каждую пятерку
    let  cakeForEachFiveMark = 2
    // общее количество пирожных
        allCakesCount = cakeForEachFiveMark * fiveMarkCount!
}
allCakesCount


// 14.4 Опциональное﻿ связывание (optional binding)


//Листинг 14.16
//переменная marks локальна, юзается только в теле оператора if
//если значение nil, то тело if игнорируется
var markCount: Int? = 8
// определение наличия значения
if let marks = markCount {
    print("Всего \(marks) оценок")
}

//Листинг 14.17
//вместо "x" и "y" можно поставить пустое имя "_".
var pointX: Int? = 10
var pointY: Int? = 3
if let _ = pointX, let _ = pointY {
   print("Точка установлена на плоскости")
}

//Листинг 14.19
if let x = pointX, x > 5 {
    print("Точка очень далеко от вас ")
}

// Тут я перешёл на 6-е издание Васи Усова, так что вся нумерация скорее всего мягко говоря сбилась :)


// 11.5 Опциональное связивание как часть оптимизации кода


//Листинг 11.22
//Здесь мы юзаем опциональное связывание (optional binding) создав константу coins в теле оператора if, т.к. после выполнения оператора она автоматически удалится.
let coinsInNewChest = "140"
var allCoinsCount = 1301
/* проверяем существование значения
с использованием опционального связывания */
 if let coins = Int(coinsInNewChest) {
    allCoinsCount += coins
} else {
    print("У нового дракона отсутствует золото")
}


//11.6. Оператор объединения с nil (nil coalescing).


//Листинг 11.23
//?? - это оператор объединения с nil.
//если бы в optionalInt был nil, то передался бы 0. Если значение в нём есть - то оно извлекается (больше не опционал).
let optionalInt: Int? = 20
var mustHaveResult = optionalInt ?? 0 // 20
type(of: mustHaveResult)

//Этот листинг аналогичен следующему:

//Листинг 11.24
//let optionalInt: Int? = 20
//var mustHaveResult: Int = 0
//if let unwrapped = optionalInt {
//    mustHaveResult = unwrapped
//} else {
//    mustHaveResult = 0
//}
let possibleNumber = "1701"
let convertedNumber = Int(possibleNumber)
type(of: convertedNumber)


//: 12.Functions
// Входные параметры, внешние имена и возвращаемое значение.

//Листинг 12.2
//Указываем только оба входных параментра, иначе ошибка.
//Оператор может быть return опущен, т.к. только одно выражение.
//Если внешние имена заменить на символ _ , то при вызови они не нужны.
//Оператор return возращает значение, которое юзается вне функции при записи в произвольный параметр.
func sumTwoInt(_ a: Int, _ b: Int) -> Int {
    let result = a + b
    print("Возращаемое значение \(result)")
    return result
}
var resultFunc = sumTwoInt(10, 12)


//Изменяемые копии входных параметров и значение по умолчанию для вх.п.
//Указывается при объявлении функции.
//Листинг 12.6
func returnMessage(code: Int, message: String = "Код сообщения - ") -> String {
    var mutableMessage = message
    mutableMessage += String(code)
    return mutableMessage
}
let myMessage = returnMessage(code: 200)


//Сквозные параметры.

//Листинг 12.7
func changeValues(_ a: inout Int, _ b: inout Int) -> Void {
    let tmp = a
a = b
b = tmp }
var x2 = 150, y2 = 45
changeValues(&x, &y)
x // 45
y // 150


//Функция в качестве входного параментра

//используем функцию в качестве значения
type(of: returnMessage(code: 400, message: "Сервер недоступен. Код сообщения  - "))
print( returnMessage(code: 400, message: "Сервер недоступен. Код сообщения  - ") )



//Входной параметр с переменным числом значений.

//Листинг 12.9
//У функции может быть только один параметр, он должен находиться в конце списка входных параметров.
func printRequestString(codes: Int...) -> Void {
    var codesString = ""
    for oneCode in codes {
        codesString += String(oneCode) + " "
    }
    print ("Получены ответы - \(codesString)")
}
printRequestString(codes: 600, 800, 301)
printRequestString(codes: 101, 200)

//Кортеж в качестве возвращаемого значения

//Листинг 12.10
func getCodeDescription(code: Int) -> (code: Int, description: String) {
    let description: String
    switch code {
    case 1...100:
        description = "Error"
    case 101...200:
        description = "Correct"
    default:
        description = "Unknown"
    }
    return (code, description)
}
let request = getCodeDescription(code: 45)
request.description


// 12.3.Функциональный тип
//читай книгу

//12.4.Функция в качестве входного и возвращаемого значений

//Листинг 12.15
// функция вывода текста на консоль
func printText() {
    print("Функция вызвана")
}
// функция, которая возвращает функцию
func returnPrintTextFunction() -> () -> Void {
    return printText
}
print("шаг 1")
let newFunctionInLet = returnPrintTextFunction()
print("шаг 2")
newFunctionInLet()
print("шаг 3")


//Входное значение функционального типа

//Листинг 12.16
// функция генерации случайного массива банкнот
func generateWallet(walletLength: Int) -> [Int] {
 // существующие типы банкнот
    let typesOfBanknotes = [50, 100, 500, 1000, 5000]
        // массив банкнот
        var wallet: [Int] = []
        // цикл генерации массива случайных банкнот
        for _ in 1...walletLength {
            wallet.append( typesOfBanknotes.randomElement()! )
        }
        return wallet
    }
    // функция подсчета денег в кошельке
    func sumWallet(banknotesFunction wallet: (Int) -> [Int], walletLength: Int) -> Int? {
        // вызов переданной функции
        let myWalletArray = wallet(walletLength)
        var sum: Int = 0
        for oneBanknote in myWalletArray {
            sum += oneBanknote
        }
    return sum }
    // передача функции в функцию
    sumWallet(banknotesFunction: generateWallet, walletLength: 20)


//12.5. Возможности функций

//Листинг 12.17
func oneStep(
    coordinates: inout (Int, Int),
    stepType: String
) -> Void {
    func up( coords: inout (Int, Int)) {
        coords = (coords.0+1, coords.1)
    }
    func right( coords: inout (Int, Int)) {
        coords = (coords.0, coords.1+1)
    }
    func down( coords: inout (Int, Int)) {
        coords = (coords.0-1, coords.1)
    }
    func left( coords: inout (Int, Int)) {
        coords = (coords.0, coords.1-1)
    }
    switch stepType {
    case "up":
        up(coords: &coordinates)
    case "right":
        right(coords: &coordinates)
    case "down":
        down(coords: &coordinates)
    case "left":
        left(coords: &coordinates)
    default:
    break }
    }
    var coordinates = (10, -5)
    oneStep(coordinates: &coordinates, stepType: "up")
    oneStep(coordinates: &coordinates, stepType: "right")
    coordinates


//Перегрузка функций

//позволяет работать с одноименными функциями, но с разными типами входных параметров
//возвращаемое значение функции не может быть передано переменной или константе без явного указания типа объявляемого параметра
//Листинг 12.19
func cry() -> String {
    return "one"
}
func cry() -> Int {
return 1 }

//Листинг 12.21
let resultString: String = cry() // "one"
let resultInt = cry() + 100 // 101


//Рекурсивный вызов функций

//Функция может вызывать саму себя(рекурсия)
//Листинг 12.22
func countdown(firstNum num: Int) -> Void {
    print(num)
    if num > 0 {
        // рекурсивный вызов функции
        countdown(firstNum:num-1)
    }
}
countdown(firstNum: 20)


//:13.Замыкания (closure)
//Листинг 13.1
// массив с купюрами
var wallet = [10,50,100,100,5000,100,50,50,500,100]
// функция отбора купюр
func handle100(wallet: [Int]) -> [Int] {
    var returnWallet = [Int]()
    for banknote in wallet {
        if banknote == 100 {
            returnWallet.append(banknote)
        }
}
    return returnWallet
}
// вызов функции отбора купюр с достоинством 100
handle100(wallet: wallet)
