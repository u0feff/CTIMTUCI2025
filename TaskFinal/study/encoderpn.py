import os
import sys
import base64

def simple_xor_encrypt(input_file, output_file, key):
    with open(input_file, 'rb') as f:
        data = f.read()
    
    half_encrypted_data = bytes([b ^ key for b in data])
    encrypted_data = base64.b64encode(half_encrypted_data)

    with open(output_file, 'wb') as f:
        f.write(encrypted_data)

if __name__ == "__main__":
    input_file = sys.argv[1]
    output_file = sys.argv[2]
    key = 0x55
    
    simple_xor_encrypt(input_file, output_file, key)
