let n = Int(readLine()!)!
var stack = [Int]()

for _ in 1...n {
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    
    switch input[0] {
    case 1:
        stack.append(input[1])
    case 2:
        if stack.isEmpty {
            print(-1)
        } else {
            print(stack.popLast()!)
        }
    case 3:
        print(stack.count)
    case 4:
        print(stack.isEmpty ? 1 : 0)
    case 5:
        if stack.isEmpty {
            print(-1)
        } else {
            print(stack.last!)
        }
    default:
        break
    }
}