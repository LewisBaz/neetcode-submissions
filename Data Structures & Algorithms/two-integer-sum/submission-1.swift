class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var hashmap: [Int : Int] = [:]
        for (i, n) in nums.enumerated() {
            if let storedIndex = hashmap[n] {
                return [storedIndex, i]
            }
            hashmap[target - n] = i
        }
        return []
    }
}
