import UIKit

var str = "Hello, playground"

for i in stride(from: 0.5, to: 0.81, by: 0.3) {
    print(i)
}


let x: (w: String, n: Int, v: Double) = ("HELLO", 1, 1.5)
let y: (t: String, n: Int, v: Double) = ("HELLO", 1, 1.5)

let (word, number, value) = x

print(x.w)
print(x.n)
print(x.v)
print(word)
print(number)
print(value)

print(type(of: x))
print(x == y)

struct Item {
    var a: Int
    var b: Int
    var c: Int {
        get {
            return a + b
        }
    }
    init(a: Int, b: Int) {
        self.a = a
        self.b = b
    }
}

var item = Item(a: 5, b: 10)
print(item.c)

enum FastFoodMenuItem {
    case hamburger(numberOfPaties: Int)
    case fries(size: FryOrderSize)
    case drink(String, ounces: Int)
    case cookie
    
    func isIncludedInSpecialOrder() -> Bool {
        switch self {
        case .hamburger: return false
        case .drink(_, let ounces): return ounces == 3
        default: return true
        }
    }
    var calories: Int {
        return 0
    }
    
    mutating func switchToBeingACookie() {
        self = .cookie
    }
}

enum FryOrderSize {
    case large
    case small
}

var fastFoodItem: FastFoodMenuItem = .fries(size: .large)
print(fastFoodItem)
print(fastFoodItem)

print(fastFoodItem.calories)
print(fastFoodItem.isIncludedInSpecialOrder())

switch fastFoodItem {
case .hamburger: break
case FastFoodMenuItem.fries(let sizeOfFries): print("fries size: \(sizeOfFries)")
default: print("Other")
print("HELLOOOOO")
}

var hello: String?
var hello2: Optional<String> = .none

var hello3: String? = "hello"
var hello4: Optional<String> = .some("hello")

print(hello)
print(hello2)

print(hello3)
print(hello4)

switch hello {
case .none: print("HELLO null")
case .some(let data): print("HELLO \(data)")
}

switch hello3 {
case .none: print("HELLO null")
case .some(let data): print("HELLO \(data)")
}


print(hello ?? "yoo")

switch hello {
case .none: print("yoo")
case .some(let data): print("HELLO \(data)")
}

enum Optional2<T> {
    case none
    case some(data: T)
}


let pizzaJoint = "café pesto"

let firstCharacterIndex = pizzaJoint.startIndex
let fourthCharacterIndex = pizzaJoint.index(firstCharacterIndex, offsetBy: 3)

print(pizzaJoint[fourthCharacterIndex])
if let firstSpace = pizzaJoint.index(of: " ") {
    let secondWordIndex = pizzaJoint.index(firstSpace, offsetBy: 1)
    print(pizzaJoint[secondWordIndex..<pizzaJoint.endIndex])
}

print(pizzaJoint.components(separatedBy: " ")[1])
let arr = Array(pizzaJoint)
for c in arr.indices {
    print("\(c) \(arr[c])")
}


var operation = {(operand: Double) -> Double in return -operand}
var operation2: (Double) -> Double = {(operand: Double) in return -operand}
var operation3: (Double) -> Double = {(operand) in return -operand}
var operation4: (Double) -> Double = {(operand) in -operand}
var operation5: (Double) -> Double = { -$0 }
print(operation(5))


var propertyWithTooMuchReturn = {
    1 + 2 + 3 + 4 + 5
}()

print(propertyWithTooMuchReturn)
