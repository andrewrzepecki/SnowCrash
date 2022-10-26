import sys

i = 0

token = open('token').readlines()[0]

with open('/home/user/level09/token') as fd:
    token = fd.readlines()[0]
    fd.close()

for char in token:
    try:
        sys.stdout.write(chr(ord(char) - i))
    except Exception:
        pass
    i += 1
print('\n')
