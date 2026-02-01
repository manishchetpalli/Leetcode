class Solution:
    def reverseVowels(self, s: str) -> str:
        result = list(s)
        vowels = "aeiouAEIOU"
        vowel_list = []
        for x in result:
            if x in vowels:
                vowel_list.append(x)
        vowel_list = vowel_list[::-1]
        # print(vowel_list)/
        j=0
        for i in range(len(result)):
            if result[i] in vowels:
                result[i] = vowel_list[j]
                j = j + 1
        return "".join(result)


