#!/usr/bin/python
# Caesar shift cipher
# April 18, 2015

import string

def caesar(text, shift):
	alphabet = string.ascii_lowercase
	shifted_alphabet = alphabet[shift:] + alphabet[:shift]
	table = string.maketrans(alphabet, shifted_alphabet)
	print text.translate(table)

text = raw_input("Enter the secret message\n")
shift = int(raw_input("How far should this message be shifted\n"))

caesar(text, shift)
