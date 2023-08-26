let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map{ Int($0)! }
var dp = Array(repeating: 0, count: n)
var maxSum = 0

for i in 0..<n {
    dp[i] = arr[i]
    for j in 0..<i {
        if arr[j] < arr[i] {
            dp[i] = max(dp[i], dp[j] + arr[i])
        }
    }
    maxSum = max(maxSum, dp[i])
}

print(maxSum)