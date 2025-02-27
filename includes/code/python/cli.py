#!/usr/bin/env python3

import sys

# ./cli.py toto 123

def main(argv):
    assert len(argv) >= 1, 'Too few parameter provided' 
    assert len(argv) <= 3, 'Too many parameters'
    print(argv)

    prog_name = argv[0]
    argument_1 = argv[1]

    print(f"Program Name: {prog_name}")
    print(f"First Argument: {argument_1}")

    # Print all arguments (excluding script name)
    print("Arguments:", argv[1:])


if __name__ == "__main__":
    main(sys.argv)
