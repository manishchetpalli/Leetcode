class Solution:
    def reverseWords(self, s: str) -> str:
        result = s.split()
        output =''
        for i in result:
            output = i + ' ' + output
        return output.strip()