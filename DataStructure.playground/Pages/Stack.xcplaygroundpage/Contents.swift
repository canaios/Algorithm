import UIKit

struct Stack<Item> {
    private var items: [Item] = []
    
    // Peek
    func peek() -> Item {
        guard let topItem = items.last else { fatalError() }
        return topItem
    }
    
    // Pop
    mutating func pop() -> Item {
        return items.removeLast()
    }
    
    // Push
    mutating func push(item: Item) {
        items.append(item)
    }
    
}

extension Stack: CustomStringConvertible {
    var description: String {
        let top = "--Stack--\n"
        let bottom = "\n----------"
        let elemensts = items
            .map{ String(describing: $0) }
            .reversed()
            .joined(separator: "\n")
        return top + elemensts + bottom
    }
    func printStack() {
        print(description)
    }
}

var stack = Stack<String>()
stack.push(item: "One")
stack.push(item: "Two")
stack.push(item: "Three")
stack.pop()
stack.push(item: "Four")

stack.peek()

stack.printStack()
