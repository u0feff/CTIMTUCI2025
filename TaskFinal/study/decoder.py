import sys
import base64

def simple_xor_decrypt(input_file, output_file, key):
    with open(input_file, 'rb') as f:
        encrypted_data = f.read()

    half_decrypted_data = base64.b64decode(encrypted_data)
    decrypted_data = bytes([b ^ key for b in half_decrypted_data])

    with open(output_file, 'wb') as f:
        f.write(decrypted_data)

if __name__ == "__main__":
    input_file = sys.argv[1]
    output_file = sys.argv[2]
    key = 0x55

    simple_xor_decrypt(input_file, output_file, key)
