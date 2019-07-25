import Cocoa

// ==================================================================
// Test the implementation - Stack (Using Array as Storage)
// ==================================================================

print("====== Stack of Strings ======")
var rwBookStack = Stack<String>()

print("Books Stack is Empty: \(rwBookStack.isEmpty)")

rwBookStack.push("3D Games by Tutorials")
rwBookStack.push("tvOS Apprentice")

print("Peek: \(String(describing: rwBookStack.peek()))")

rwBookStack.push("iOS Apprentice")

print("Count: \(rwBookStack.count)")

rwBookStack.push("Swift Apprentice")
print(rwBookStack)

print("====== Stack of Ints ======")

var jersey = Stack<Int>()

print("Jersey Stack is Empty: \(jersey.isEmpty)")

jersey.push(3)
jersey.push(7)

print("Peek: \(String(describing: jersey.peek()))")

jersey.push(2)

print("Count: \(jersey.count)")

jersey.push(1)
print(jersey)

if let min = jersey.minimumElement() {
    print("Min Element: \(min)")
}

print("Removing: \(jersey.pop())") 

if let min = jersey.minimumElement() {
    print("New Min Element: \(min)")
}

