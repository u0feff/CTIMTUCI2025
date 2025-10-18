import zlib

str_object1 = open('test', 'rb').read()
str_object2 = zlib.decompress(str_object1)

f = open('decompressed_file', 'wb')
f.write(str_object2)
f.close()