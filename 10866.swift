let n = Int(readLine()!)!
var deque = [Int]()

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{ String($0) }
    
    switch input[0] {
    case "push_front":
        deque.insert(Int(input[1])!, at: 0)
    case "push_back":
        deque.append(Int(input[1])!)
    case "pop_front":
        if deque.isEmpty { print(-1) }
        else { print(deque.removeFirst()) }
    case "pop_back":
        if deque.isEmpty {print(-1) }
        else { print(deque.removeLast()) }
    case "size":
        print(deque.count)
    case "empty":
        if deque.isEmpty { print(1) }
        else { print(0) }
    case "front":
        if deque.isEmpty { print(-1) }
        else { print(deque.first!) }
    case "back":
        if deque.isEmpty { print(-1) }
        else { print(deque.last!) }
    default:
        break
    }
}