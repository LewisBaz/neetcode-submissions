class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }
        var hashmap: [Character : Int] = [:]
        for char in s {
            hashmap[char, default: 0] += 1
        }
        for char in t {
            guard let value = hashmap[char],
                  value > 0
            else { return false }
            hashmap[char] = value - 1
        }
        return true
    }
}
