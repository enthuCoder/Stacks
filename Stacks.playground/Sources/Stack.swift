import Foundation

// Stack is LIFO DS.
// Enqueuing and Dequeuing happens at one end only.
// Push and pop are O(1) operations

// ------------------------------------------------------------
// Implement Stack using an Array as the base storage
// ------------------------------------------------------------

public struct Stack<T: Comparable> {
    
    private var storage = [T]()
    var minElement: T?
    
    // Just added public access modifier to init() to make it accessible from playground main file
    public init() { }
    
    public var count: Int {
        return storage.count
    }
    
    public var isEmpty: Bool {
        return storage.isEmpty
    }
    
    public mutating func push(_ newElement: T) {
        storage.append(newElement)
        print("Appended Element: \(newElement)")
        
    }
    
    public mutating func pop() {
        _ = storage.removeLast()
    }

    public func peek() -> T? {
        return storage.last
    }
}

extension Stack: CustomStringConvertible {
    
    public var description: String {
        let topDivider = "\n----Stack----\n"
        let bottomDivider = "\n------------\n"
        
        let stackElements = storage.map { "\($0)" }.reversed().joined(separator: "\n")
        return topDivider + stackElements + bottomDivider
    }
}
