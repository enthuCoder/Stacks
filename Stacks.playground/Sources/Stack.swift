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
    
    // Add element to the top of the stack
    public mutating func push(_ newElement: T) {
        storage.append(newElement)
        print("Appended Element: \(newElement)")
        updateMinElement()
    }
    
    // Remove last element from the Stack
    public mutating func pop() {
        _ = storage.removeLast()
        updateMinElement()
        //return element
    }

    // Check element on top of the stack
    public func peek() -> T? {
        return storage.last
    }
}

// ------------------------------------------------------------------
// Stack Description in user readable format
// ------------------------------------------------------------------

extension Stack: CustomStringConvertible {
    
    public var description: String {
        let topDivider = "\n----Stack----\n"
        let bottomDivider = "\n------------\n"
        
        let stackElements = storage.map { "\($0)" }.reversed().joined(separator: "\n")
        return topDivider + stackElements + bottomDivider
    }
}

// ------------------------------------------------------------------
// Helper functions to add new features to the Stack
// ------------------------------------------------------------------

// TODO: Fix issue with minElement bug
extension Stack {
    
    public func minimumElement() -> T? {
        let result = self.minElement
        return result
    }
    
    fileprivate mutating func updateMinElement() {
        
        if self.count == 1 {
            self.minElement = self.storage.last
        }
        
        if let last = peek(), let min = self.minElement {
            if last < min {
                self.minElement = last
            }
        }
    }
}
