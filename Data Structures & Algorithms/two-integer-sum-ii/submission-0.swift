class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var head = numbers.startIndex
        var tail = numbers.endIndex - 1
        while numbers[head] + numbers[tail] != target, head < tail {
            if numbers[head] + numbers[tail] > target {
                tail -= 1
            } else if numbers[head] + numbers[tail] < target {
                head += 1
            }
        }
        return [head+1, tail+1]
    }
}
