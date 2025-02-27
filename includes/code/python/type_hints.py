#!/usr/bin/env python3


def add(a: int, b: int) -> int:
    return a + b

print(add(3, 5))   # 8
print(add("3", "5"))  # Works but should be avoided if using type checking tools
