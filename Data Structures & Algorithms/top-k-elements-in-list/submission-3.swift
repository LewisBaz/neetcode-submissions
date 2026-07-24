class Solution {
    
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        
        func moveList(list: [Int]) {
            for (index, array) in buckets.enumerated() {
                if array.count <= list.count {
                    buckets.insert(list, at: index)
                    break
                }
            }
        }
        
        var buckets = Array(repeating: [Int](), count: nums.count)
        for n in nums {
            if let index = buckets.firstIndex(where: { $0.first == n }) {
                var list = buckets.remove(at: index)
                list.append(n)
                moveList(list: list)
            } else {
                for (index, array) in buckets.enumerated() {
                    guard !array.isEmpty else {
                        buckets[index].append(n)
                        break
                    }
                    var last = buckets.removeLast()
                    last.append(n)
                    moveList(list: last)
                    break
                }
            }
        }
        return buckets.reduce(into: []) { partialResult, array in
            if partialResult.count < k, let first = array.first {
                partialResult.append(first)
            }
        }
    }
}