class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var result: [[Int]] = []
        let sorted = nums.sorted()
        for currentIndex in (0...sorted.count - 3) {
            if currentIndex > 0 && sorted[currentIndex] == sorted[currentIndex - 1] { continue }
            var head = currentIndex + 1
            var tail = sorted.count - 1
            while head < tail {
                let sum = sorted[head] + sorted[tail] + sorted[currentIndex]
                if sum < 0 {
                    head += 1
                } else if sum > 0 {
                    tail -= 1
                } else {
                    result.append([sorted[currentIndex], sorted[head], sorted[tail]])
                    head += 1
                    tail -= 1
                    while head < tail && sorted[head] == sorted[head - 1] {
                        head += 1
                    }
                    while head < tail && sorted[tail] == sorted[tail + 1] {
                        tail -= 1
                    }
                }
            }
        }
        return result
    }
}