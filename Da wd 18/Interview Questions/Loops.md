100 Python For Loop Questions and Answers
This document contains 100 practical Python questions focusing on for loops.
The questions are arranged with increasing difficulty — beginner → intermediate → advanced.

Beginner Level (1–30)
1. Print numbers from 1 to 10.
for i in range(1, 11):
    print(i)
2. Print first 5 natural numbers.
for i in range(1, 6):
    print(i)
3. Print even numbers from 1 to 20.
for i in range(2, 21, 2):
    print(i)
4. Print odd numbers from 1 to 15.
for i in range(1, 16, 2):
    print(i)
5. Print squares of numbers from 1 to 10.
for i in range(1, 11):
    print(i ** 2)
6. Print cubes of numbers from 1 to 5.
for i in range(1, 6):
    print(i ** 3)
7. Calculate sum of first 10 natural numbers.
total = 0
for i in range(1, 11):
    total += i
print(total)
8. Calculate sum of even numbers up to 20.
s = 0
for i in range(2, 21, 2):
    s += i
print(s)
9. Print characters of a string.
text = "Python"
for ch in text:
    print(ch)
10. Print string in reverse order.
text = "Python"
for i in range(len(text) - 1, -1, -1):
    print(text[i])
11. Count vowels in a string.
text = "education"
count = 0
for ch in text:
    if ch in "aeiou":
        count += 1
print(count)
12. Print multiplication table of 5.
for i in range(1, 11):
    print(f"5 x {i} = {5*i}")
13. Print first 10 odd numbers.
for i in range(1, 20, 2):
    print(i)
14. Find largest number in a list.
nums = [4, 8, 1, 9, 12]
largest = nums[0]
for n in nums:
    if n > largest:
        largest = n
print(largest)
15. Find smallest number in a list.
nums = [4, 8, 1, 9, 12]
smallest = nums[0]
for n in nums:
    if n < smallest:
        smallest = n
print(smallest)
16. Print factorial of 5.
fact = 1
for i in range(1, 6):
    fact *= i
print(fact)
17. Print factorials of numbers from 1 to 5.
for num in range(1, 6):
    fact = 1
    for i in range(1, num+1):
        fact *= i
    print(f"{num}! = {fact}")
18. Print Fibonacci sequence (first 7 terms).
a, b = 0, 1
for _ in range(7):
    print(a, end=" ")
    a, b = b, a + b
19. Print pattern of stars:
*
**
***
****
*****
for i in range(1, 5):
    print("*" * i)
20. Print pattern of numbers:
1
12
123
1234
12345
for i in range(1, 4):
    for j in range(1, i+1):
        print(j, end="")
    print()
21. Count digits in a number.
num = 12345
count = 0
for d in str(num):
    count += 1
print(count)
22. Find sum of digits of a number.
num = 1234
s = 0
for d in str(num):
    s += int(d)
print(s)
23. Print ASCII values of characters in a string.
text = "AB"
for ch in text:
    print(ch, ord(ch))
24. Check palindrome string using loop.
text = "madam"
rev = ""
for ch in text:
    rev = ch + rev
print("Palindrome" if rev == text else "Not Palindrome")
25. Print numbers divisible by 3 between 1 and 30.
for i in range(1, 31):
    if i % 3 == 0:
        print(i)
26. Print sum of first 5 odd numbers.
s = 0
for i in range(1, 10, 2):
    s += i
print(s)
27. Print elements of a list with indexes.
nums = [10, 20, 30]
for i in range(len(nums)):
    print(i, nums[i])
28. Print elements at even indexes in a list.
nums = [10, 20, 30, 40, 50]
for i in range(0, len(nums), 2):
    print(nums[i])
29. Print elements of a list in reverse order.
nums = [1, 2, 3, 4]
for i in range(len(nums)-1, -1, -1):
    print(nums[i])
30. Find product of elements in a list.
nums = [2, 3, 4]
prod = 1
for n in nums:
    prod *= n
print(prod)
Intermediate Level (31–70)
31. Print prime numbers from 1 to 20.
for num in range(2, 21):
    is_prime = True
    for i in range(2, num):
        if num % i == 0:
            is_prime = False
            break
    if is_prime:
        print(num)
32. Count uppercase letters in a string.
text = "PyThOn"
count = 0
for ch in text:
    if ch.isupper():
        count += 1
print(count)
33. Print common elements of two lists.
a = [1, 2, 3, 4]
b = [3, 4, 5]
for x in a:
    if x in b:
        print(x)
34. Reverse a string without slicing.
text = "Python"
rev = ""
for ch in text:
    rev = ch + rev
print(rev)
35. Create a list of squares using for loop.
squares = []
for i in range(1, 6):
    squares.append(i**2)
print(squares)
36. Print numbers divisible by both 3 and 5 up to 50.
for i in range(1, 51):
    if i % 3 == 0 and i % 5 == 0:
        print(i)
37. Print frequency of characters in a string.
text = "banana"
freq = {}
for ch in text:
    freq[ch] = freq.get(ch, 0) + 1
print(freq)
38. Print matrix 2x2 using nested loop.
for i in range(2):
    for j in range(2):
        print(f"({i},{j})", end=" ")
    print()
39. Print sum of numbers in nested list.
nums = [[1, 2], [3, 4]]
s = 0
for row in nums:
    for val in row:
        s += val
print(s)
40. Print multiplication tables from 1 to 3.
for i in range(1, 4):
    for j in range(1, 6):
        print(f"{i} x {j} = {i*j}")
    print()
41. Print pyramid of stars.
n = 3
for i in range(1, n+1):
    print(" "*(n-i) + "*"*(2*i-1))
42. Print all substrings of a string.
text = "abc"
for i in range(len(text)):
    for j in range(i+1, len(text)+1):
        print(text[i:j])
43. Print diagonal elements of a 3x3 matrix.
matrix = [[1,2,3],[4,5,6],[7,8,9]]
for i in range(len(matrix)):
    print(matrix[i][i])
44. Count spaces in a string.
text = "Python for AI"
count = 0
for ch in text:
    if ch == " ":
        count += 1
print(count)
45. Find maximum digit in a number.
num = 5729
max_d = 0
for d in str(num):
    if int(d) > max_d:
        max_d = int(d)
print(max_d)
46. Print matrix transpose (manual).
matrix = [[1,2],[3,4]]
for i in range(2):
    for j in range(2):
        print(matrix[j][i], end=" ")
    print()
47. Print string without vowels.
text = "education"
res = ""
for ch in text:
    if ch not in "aeiou":
        res += ch
print(res)
48. Find second largest element in list.
nums = [10, 20, 5, 8]
largest = second = float('-inf')
for n in nums:
    if n > largest:
        second = largest
        largest = n
    elif n > second and n != largest:
        second = n
print(second)
49. Count frequency of words in a sentence.
sentence = "AI is the future and AI is powerful"
words = sentence.split()
freq = {}
for w in words:
    freq[w] = freq.get(w, 0) + 1
print(freq)
50. Print Pascal’s Triangle (first 5 rows).
n = 5
for i in range(n):
    num = 1
    for j in range(i+1):
        print(num, end=" ")
        num = num*(i-j)//(j+1)
    print()
51. Print matrix multiplication (2x2 with 2x2).
A = [[1,2],[3,4]]
B = [[5,6],[7,8]]
result = [[0,0],[0,0]]
for i in range(2):
    for j in range(2):
        for k in range(2):
            result[i][j] += A[i][k]*B[k][j]
print(result)
52. Generate prime factors of a number.
num = 28
factors = []
for i in range(2, num+1):
    while num % i == 0:
        factors.append(i)
        num //= i
print(factors)
53. Print all permutations of string "ABC" (length 3).
text = "ABC"
for i in text:
    for j in text:
        for k in text:
            if i != j and j != k and i != k:
                print(i+j+k)
54. Generate 2D identity matrix (3x3).
n = 3
for i in range(n):
    row = ""
    for j in range(n):
        if i == j:
            row += "1 "
        else:
            row += "0 "
    print(row)
55. Print prime numbers in a range (50–100).
for num in range(50, 101):
    is_prime = True
    for i in range(2, int(num**0.5)+1):
        if num % i == 0:
            is_prime = False
            break
    if is_prime:
        print(num)
56. Print sum of diagonals of 3x3 matrix.
mat = [[1,2,3],[4,5,6],[7,8,9]]
d1 = d2 = 0
for i in range(3):
    d1 += mat[i][i]
    d2 += mat[i][2-i]
print(d1, d2)
57. Flatten a nested list.
nested = [[1,2],[3,4],[5]]
flat = []
for row in nested:
    for val in row:
        flat.append(val)
print(flat)
58. Generate multiplication table (1–5) as dictionary.
tables = {}
for i in range(1, 6):
    tables[i] = []
    for j in range(1, 6):
        tables[i].append(i*j)
print(tables)
59. Print diamond star pattern.
n = 3
for i in range(1, n+1):
    print(" "*(n-i) + "*"*(2*i-1))
for i in range(n-1, 0, -1):
    print(" "*(n-i) + "*"*(2*i-1))
60. Find intersection of two sets using loop.
a = {1,2,3,4}
b = {3,4,5,6}
inter = []
for x in a:
    if x in b:
        inter.append(x)
print(inter)
61. Rotate a list by k positions.
nums = [1,2,3,4,5]
k = 2
rotated = []
for i in range(len(nums)):
    rotated.append(nums[(i+k)%len(nums)])
print(rotated)
62. Print all factors of a number.
num = 36
for i in range(1, num+1):
    if num % i == 0:
        print(i)
63. Check if list is sorted.
nums = [1,2,3,4]
is_sorted = True
for i in range(len(nums)-1):
    if nums[i] > nums[i+1]:
        is_sorted = False
        break
print(is_sorted)
64. Print first 10 triangular numbers.
n = 10
for i in range(1, n+1):
    print(i*(i+1)//2)
65. Generate pattern of prime numbers (first 5 rows).
count = 0
num = 2
for row in range(1, 6):
    for col in range(row):
        while True:
            is_prime = True
            for i in range(2, int(num**0.5)+1):
                if num % i == 0:
                    is_prime = False
                    break
            if is_prime:
                print(num, end=" ")
                num += 1
                break
            num += 1
    print()
66. Find GCD using loops.
a, b = 48, 18
gcd = 1
for i in range(1, min(a,b)+1):
    if a % i == 0 and b % i == 0:
        gcd = i
print(gcd)
67. Print numbers in spiral (3x3 simple).
matrix = [[1,2,3],[4,5,6],[7,8,9]]
for i in matrix[0]:
    print(i)
for i in range(1,3):
    print(matrix[i][2])
for i in range(1,3):
    print(matrix[2][2-i])
for i in range(1,2):
    print(matrix[2-i][0])
68. Convert decimal to binary using loop.
num = 13
binary = ""
while num > 0:
    binary = str(num%2) + binary
    num //= 2
print(binary)
69. Generate all pairs (i,j) with i<j from list.
nums = [1,2,3]
for i in range(len(nums)):
    for j in range(i+1, len(nums)):
        print(nums[i], nums[j])
70. Print multiplication triangle.
n = 5
for i in range(1, n+1):
    for j in range(1, i+1):
        print(i*j, end=" ")
    print()
Advanced Level (71–100)
71. Generate prime twin pairs under 50.
primes = []
for num in range(2, 51):
    is_prime = True
    for i in range(2, int(num**0.5)+1):
        if num % i == 0:
            is_prime = False
            break
    if is_prime:
        primes.append(num)
for i in range(len(primes)-1):
    if primes[i+1] - primes[i] == 2:
        print(primes[i], primes[i+1])
72. Generate Pascal’s triangle in list form.
n = 5
triangle = []
for i in range(n):
    row = [1]
    if triangle:
        last = triangle[-1]
        for j in range(len(last)-1):
            row.append(last[j] + last[j+1])
        row.append(1)
    triangle.append(row)
for r in triangle:
    print(r)
73. Generate all prime palindromes below 200.
def is_prime(x):
    if x < 2: return False
    for i in range(2, int(x**0.5)+1):
        if x % i == 0:
            return False
    return True

for num in range(2, 200):
    if str(num) == str(num)[::-1] and is_prime(num):
        print(num)
74. Generate Armstrong numbers between 100–999.
for num in range(100, 1000):
    s = 0
    for d in str(num):
        s += int(d)**3
    if s == num:
        print(num)
75. Generate all anagrams of word "CAT".
word = "CAT"
for i in word:
    for j in word:
        for k in word:
            if len({i,j,k}) == 3:
                print(i+j+k)
76. Generate primes using Sieve of Eratosthenes.
n = 50
is_prime = [True]*(n+1)
for i in range(2, int(n**0.5)+1):
    if is_prime[i]:
        for j in range(i*i, n+1, i):
            is_prime[j] = False
for i in range(2, n+1):
    if is_prime[i]:
        print(i)
77. Print all triplets with sum=0 from list.
nums = [-1,0,1,2,-1,-4]
for i in range(len(nums)):
    for j in range(i+1,len(nums)):
        for k in range(j+1,len(nums)):
            if nums[i]+nums[j]+nums[k] == 0:
                print(nums[i], nums[j], nums[k])
78. Print magic square (3x3 odd order).
n = 3
magic = [[0]*n for _ in range(n)]
i, j = 0, n//2
for num in range(1, n*n+1):
    magic[i][j] = num
    i2, j2 = (i-1)%n, (j+1)%n
    if magic[i2][j2]:
        i = (i+1)%n
    else:
        i, j = i2, j2
for row in magic:
    print(row)
79. Generate Collatz sequence for n=6.
n = 6
while n != 1:
    print(n, end=" ")
    if n % 2 == 0:
        n //= 2
    else:
        n = 3*n+1
print(1)
80. Find Pythagorean triplets up to 20.
for a in range(1,21):
    for b in range(a,21):
        for c in range(b,21):
            if a*a + b*b == c*c:
                print(a,b,c)
81. Generate prime spiral numbers (Ulam spiral like).
n = 25
for num in range(1,n+1):
    def prime(x):
        if x<2:return False
        for i in range(2,int(x**0.5)+1):
            if x%i==0:return False
        return True
    if prime(num):
        print(num,end=" ")
82. Generate Harshad numbers (1–100).
for num in range(1,101):
    s = 0
    for d in str(num):
        s += int(d)
    if num % s == 0:
        print(num)
83. Print transpose of matrix (nested loops).
matrix = [[1,2,3],[4,5,6],[7,8,9]]
for i in range(len(matrix[0])):
    for j in range(len(matrix)):
        print(matrix[j][i], end=" ")
    print()
84. Print snake pattern of matrix.
mat = [[1,2,3],[4,5,6],[7,8,9]]
for i in range(len(mat)):
    if i%2==0:
        for j in range(len(mat[i])):
            print(mat[i][j], end=" ")
    else:
        for j in range(len(mat[i])-1,-1,-1):
            print(mat[i][j], end=" ")
    print()
85. Print frequency of digits in number.
num = 112233
freq = {}
for d in str(num):
    freq[d] = freq.get(d,0)+1
print(freq)
86. Generate factorial numbers less than 1000.
fact = 1
for i in range(1,100):
    fact *= i
    if fact > 1000:
        break
    print(fact)
87. Generate prime circular numbers (rotate digits).
def is_prime(n):
    if n<2:return False
    for i in range(2,int(n**0.5)+1):
        if n%i==0:return False
    return True

for num in range(2,200):
    s=str(num)
    circ=True
    for i in range(len(s)):
        if not is_prime(int(s[i:]+s[:i])):
            circ=False
            break
    if circ:
        print(num)
88. Print twin primes up to 200.
def is_prime(n):
    if n<2:return False
    for i in range(2,int(n**0.5)+1):
        if n%i==0:return False
    return True

for i in range(2,200):
    if is_prime(i) and is_prime(i+2):
        print(i,i+2)
89. Generate lucky numbers up to 50.
nums = list(range(1,51))
i=1
while i<len(nums):
    step = nums[i]
    nums = [n for idx,n in enumerate(nums,1) if idx%step!=0]
    i+=1
print(nums)
90. Generate automorphic numbers (n^2 ends with n).
for num in range(1,100):
    if str(num*num).endswith(str(num)):
        print(num)
91. Print perfect numbers up to 1000.
for num in range(2,1001):
    s=0
    for i in range(1,num):
        if num%i==0:
            s+=i
    if s==num:
        print(num)
92. Generate amicable pairs under 300.
def d(n):
    s=0
    for i in range(1,n):
        if n%i==0:
            s+=i
    return s

for a in range(2,300):
    b = d(a)
    if b>a and d(b)==a:
        print(a,b)
93. Generate Catalan numbers up to 10 terms.
import math
for n in range(10):
    cat = math.comb(2*n,n)//(n+1)
    print(cat)
94. Generate Bell numbers up to 5 terms.
bell=[[0]*6 for _ in range(6)]
bell[0][0]=1
for i in range(1,6):
    bell[i][0]=bell[i-1][i-1]
    for j in range(1,i+1):
        bell[i][j]=bell[i-1][j-1]+bell[i][j-1]
for i in range(5):
    print(bell[i][0])
95. Print Hamming numbers under 100.
nums=[]
for i in range(100):
    n=i
    while n%2==0:n//=2
    while n%3==0:n//=3
    while n%5==0:n//=5
    if n==1 and i>0:
        nums.append(i)
print(nums)
96. Print prime triplets (p, p+2, p+6).
def prime(n):
    if n<2:return False
    for i in range(2,int(n**0.5)+1):
        if n%i==0:return False
    return True

for i in range(2,200):
    if prime(i) and prime(i+2) and prime(i+6):
        print(i,i+2,i+6)
97. Generate Euler totient function (phi).
n=10
for i in range(1,n+1):
    count=0
    for j in range(1,i+1):
        import math
        if math.gcd(i,j)==1:
            count+=1
    print(i,count)
98. Generate Gray code (n=3 bits).
n=3
codes=["0","1"]
for i in range(2,n+1):
    rev=["1"+c for c in codes[::-1]]
    codes=["0"+c for c in codes]+rev
print(codes)
99. Generate prime numbers with digit sum prime.
def prime(n):
    if n<2:return False
    for i in range(2,int(n**0.5)+1):
        if n%i==0:return False
    return True

for num in range(2,100):
    if prime(num) and prime(sum(int(d) for d in str(num))):
        print(num)
100. Generate Sudoku-like 3x3 Latin square.
n=3
for i in range(n):
    row=[]
    for j in range(n):
        row.append((i+j)%n+1)
    print(row)
