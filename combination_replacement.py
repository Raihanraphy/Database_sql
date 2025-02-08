from itertools import combinations_with_replacement
s, n = input().split(" ")
[print(''.join(x)) for x in (combinations_with_replacement(sorted(s),int(n)))]