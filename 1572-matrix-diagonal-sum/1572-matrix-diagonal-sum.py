class Solution:
    def diagonalSum(self, mat: List[List[int]]) -> int:
        total = 0
        n = len(mat)
        
        for i in range(n):
            # Primary diagonal
            total += mat[i][i]
            
            # Secondary diagonal
            total += mat[i][n - 1 - i]
        
        # If matrix size is odd, subtract middle element
        if n % 2 == 1:
            total -= mat[n // 2][n // 2]
        
        return total