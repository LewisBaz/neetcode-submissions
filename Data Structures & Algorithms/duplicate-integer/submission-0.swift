class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        var hashmap: [Int : Bool] = [:]
        for n in nums {
            if hashmap[n] != nil {
                return true
            } else {
                hashmap[n] = true
            }
        }
        return false
    }
}
