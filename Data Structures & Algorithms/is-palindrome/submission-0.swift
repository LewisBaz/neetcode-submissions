class Solution {
    func isPalindrome(_ s: String) -> Bool {
        var cleaned = s.lowercased().compactMap {
            String($0).filter { $0.isLetter || $0.isNumber }.isEmpty ? nil : $0
        }
        var head = cleaned.startIndex
        var tail = cleaned.endIndex - 1
        while head < tail {
            if cleaned[head] != cleaned[tail] {
                return false
            }
            head += 1
            tail -= 1
        }
        return true
    }
}
