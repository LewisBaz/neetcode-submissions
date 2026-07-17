class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var hashmap: [Dictionary<UInt8, Int> : [String]] = [:]
        for str in strs {
            let sum = str.reduce(into: Dictionary<UInt8, Int>()) { partialResult, char in
                if let asciiValue = char.asciiValue {
                    partialResult[asciiValue, default: 0] += 1
                }
            }
            hashmap[sum, default: []].append(str)
        }
        return hashmap.reduce(into: []) { partialResult, next in
            partialResult.append(next.value)
        }
    }
}
