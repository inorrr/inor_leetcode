class Solution(object):
    def mergeAlternately(self, word1, word2):
        """
        :type word1: str
        :type word2: str
        :rtype: str
        """
        result = ''
        i=0
        j=0
        while i< len(word1) and j< len(word2):
            result = result + word1[i] + word2[j]
            i+=1
            j+=1
        if i < len(word1):
            result = result + word1[i:len(word1)]
        elif j<len(word2):
            result = result + word2[j:len(word2)]
        return result
        