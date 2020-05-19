class Stack<T> {
    var items: [T] = []
    
    func push(_ item: T) {
        items.append(item)
    }
    
    func pop() -> T? {
        items.popLast()
    }
}

class Queue<T> {
    var stackPrimary = Stack<T>()
    var stackSecondary = Stack<T>()

    func enqueue(_ item: T) {
        while let newItem = stackPrimary.pop() {
            stackSecondary.push(newItem)
        }
        
        stackPrimary.push(item)
        
        while let newItem = stackSecondary.pop() {
            stackPrimary.push(newItem)
        }
    }
    
    func dequeue() -> T? {
        stackPrimary.pop()
    }
}

let myQueue = Queue<Int>()

myQueue.enqueue(8)
print(myQueue.dequeue())
myQueue.enqueue(10)
myQueue.enqueue(11)
myQueue.enqueue(5)

print(myQueue.dequeue())
print(myQueue.dequeue())
print(myQueue.dequeue())
print(myQueue.dequeue())
