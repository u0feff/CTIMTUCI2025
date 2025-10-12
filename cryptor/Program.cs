using System.Text;

class Program
{
    private static void Main()
    {
        var key = "DjFAl74KB12Wt5q6";
        var data = Encoding.UTF8.GetBytes("prohor");

        var encrypted = Encrypt(data, key);
        var decrypted = Decrypt(encrypted, key);

        var data2 = Encoding.UTF8.GetString(decrypted.ToArray());

        var decrypted2 = Decrypt("M/El>F_H.^Lc:&kr)mQQXB_/Nf(roT/<mAu-(\\;e", key);

        var data3 = Encoding.UTF8.GetString(decrypted2.ToArray());
    }

    private static string Encrypt(IEnumerable<byte> data, string key)
    {
        var encrypted = data.ToList();

        G95Encrypt(encrypted, key); // prohor -> 34 18 29 29 03 45
        A12Encrypt(encrypted, key); // 34 18 29 29 03 45 -> 45 29 03 29 18 34

        var f12Encrypted = F12Encrypt(encrypted, key).ToList(); // 45 29 03 29 18 34 -> 29 C5 7D E0 1F 19 D4 71
        var g72Encrypted = G72Encrypt(f12Encrypted); // 29 C5 7D E0 1F 19 D4 71 -> .E-_n*uWRJ

        return g72Encrypted;
    }

    private static IEnumerable<byte> Decrypt(string data, string key)
    {
        var g72Decrypted = G72Decrypt(data);
        var decrypted = F12Decrypt(g72Decrypted, key);

        A12Decrypt(decrypted, key);
        G95Encrypt(decrypted, key);

        return decrypted;
    }

    public static void G95Encrypt(List<byte> data, string key)
    {
        var dataLength = data.Count;
        var keyLength = key.Length;

        if (dataLength == 0 || keyLength == 0)
            return;

        for (var i = 0; i < dataLength; i++)
        {
            var keyIndex = i % keyLength;

            data[i] ^= (byte)key[keyIndex];
        }
    }

    public static void G95Decrypt(List<byte> data, string key)
    {
        // XOR is its own inverse, so decode is the same as encode
        G95Encrypt(data, key);
    }

    public static void A12Encrypt(List<byte> data, string key)
    {
        var dataLength = data.Count;
        var keyLength = key.Length;

        if (dataLength == 0 || keyLength == 0)
            return;

        // Process each byte of the key
        for (int keyIndex = 0; keyIndex < keyLength; keyIndex++)
        {
            byte keyByte = (byte)key[keyIndex];

            // Calculate initial swap position
            int swapPos = keyByte % dataLength;

            // Swap first element with calculated position
            byte temp = data[0];
            data[0] = data[swapPos];
            data[swapPos] = temp;

            // If data has more than 1 element, perform additional swaps
            if (dataLength > 1)
            {
                for (int i = 1; i < dataLength; i++)
                {
                    // Calculate next swap position
                    int nextSwapPos = (swapPos + i) % dataLength;

                    // Swap elements at positions i and nextSwapPos
                    temp = data[i];
                    data[i] = data[nextSwapPos];
                    data[nextSwapPos] = temp;
                }
            }
        }
    }

    public static void A12Decrypt(List<byte> data, string key)
    {
        var dataLength = data.Count;
        var keyLength = key.Length;

        if (dataLength == 0 || keyLength == 0)
            return;

        // Process each byte of the key in REVERSE order
        for (int keyIndex = keyLength - 1; keyIndex >= 0; keyIndex--)
        {
            byte keyByte = (byte)key[keyIndex];

            // Calculate initial swap position
            int swapPos = keyByte % dataLength;

            // Reverse the swaps - perform them in reverse order
            if (dataLength > 1)
            {
                for (int i = dataLength - 1; i >= 1; i--)
                {
                    // Calculate next swap position (same as encode)
                    int nextSwapPos = (swapPos + i) % dataLength;

                    // Swap elements at positions i and nextSwapPos
                    byte temp = data[i];
                    data[i] = data[nextSwapPos];
                    data[nextSwapPos] = temp;
                }
            }

            // Swap first element with calculated position
            byte temp2 = data[0];
            data[0] = data[swapPos];
            data[swapPos] = temp2;
        }
    }

    public static List<byte> F12Encrypt(List<byte> inputData, string key)
    {
        if (inputData == null || key == null || key.Length < 16)
            return new List<byte>();

        // Convert key string to uint array (4 x 32-bit values = 128 bits)
        uint[] keyArray = new uint[4];
        byte[] keyBytes = System.Text.Encoding.UTF8.GetBytes(key);

        for (int i = 0; i < 4; i++)
        {
            int offset = i * 4;
            // Big-endian conversion
            keyArray[i] = ((uint)keyBytes[offset] << 24) |
                          ((uint)keyBytes[offset + 1] << 16) |
                          ((uint)keyBytes[offset + 2] << 8) |
                          keyBytes[offset + 3];
        }

        int inputLength = inputData.Count;

        // Calculate padding needed (must be multiple of 8 bytes)
        int remainder = inputLength % 8;
        int paddedLength = remainder == 0 ? inputLength : inputLength + (8 - remainder);

        // Create output buffer
        List<byte> result = new List<byte>(paddedLength);

        // Copy input data to result
        result.AddRange(inputData);

        // Add padding bytes (zeros)
        while (result.Count < paddedLength)
        {
            result.Add(0);
        }

        // Process data in 8-byte (64-bit) blocks
        for (int i = 0; i < paddedLength; i += 8)
        {
            // Read two 32-bit values (8 bytes total) in big-endian
            uint[] block = new uint[2];

            // First 32-bit value (bytes 0-3)
            block[0] = ((uint)result[i] << 24) |
                       ((uint)result[i + 1] << 16) |
                       ((uint)result[i + 2] << 8) |
                       result[i + 3];

            // Second 32-bit value (bytes 4-7)
            block[1] = ((uint)result[i + 4] << 24) |
                       ((uint)result[i + 5] << 16) |
                       ((uint)result[i + 6] << 8) |
                       result[i + 7];

            // Decrypt the block
            B98Encode(block, keyArray);

            // Write decrypted values back to result (big-endian)
            for (int j = 0; j < 2; j++)
            {
                int offset = i + (j * 4);
                result[offset] = (byte)(block[j] >> 24);
                result[offset + 1] = (byte)(block[j] >> 16);
                result[offset + 2] = (byte)(block[j] >> 8);
                result[offset + 3] = (byte)block[j];
            }
        }

        return result;
    }

    public static List<byte> F12Decrypt(List<byte> inputData, string key)
    {
        if (inputData == null || key == null || key.Length < 16)
            return new List<byte>();

        // Convert key string to uint array (4 x 32-bit values = 128 bits)
        uint[] keyArray = new uint[4];
        byte[] keyBytes = System.Text.Encoding.UTF8.GetBytes(key);

        for (int i = 0; i < 4; i++)
        {
            int offset = i * 4;
            // Big-endian conversion
            keyArray[i] = ((uint)keyBytes[offset] << 24) |
                          ((uint)keyBytes[offset + 1] << 16) |
                          ((uint)keyBytes[offset + 2] << 8) |
                          keyBytes[offset + 3];
        }

        int inputLength = inputData.Count;

        // Create output buffer
        List<byte> result = new List<byte>(inputLength);

        // Copy input data to result
        result.AddRange(inputData);

        // Process data in 8-byte (64-bit) blocks
        for (int i = 0; i < result.Count; i += 8)
        {
            // Read two 32-bit values (8 bytes total) in big-endian
            uint[] block = new uint[2];

            // First 32-bit value (bytes 0-3)
            block[0] = ((uint)result[i] << 24) |
                       ((uint)result[i + 1] << 16) |
                       ((uint)result[i + 2] << 8) |
                       result[i + 3];

            // Second 32-bit value (bytes 4-7)
            block[1] = ((uint)result[i + 4] << 24) |
                       ((uint)result[i + 5] << 16) |
                       ((uint)result[i + 6] << 8) |
                       result[i + 7];

            // Encrypt the block (reverse operation)
            B98Decrypt(block, keyArray);

            // Write encrypted values back to result (big-endian)
            for (int j = 0; j < 2; j++)
            {
                int offset = i + (j * 4);
                result[offset] = (byte)(block[j] >> 24);
                result[offset + 1] = (byte)(block[j] >> 16);
                result[offset + 2] = (byte)(block[j] >> 8);
                result[offset + 3] = (byte)block[j];
            }
        }

        while (result.Last() == 0)
            result.RemoveAt(result.Count - 1);

        return result;
    }

    public static void B98Encode(uint[] data, uint[] key)
    {
        if (data == null || data.Length < 2 || key == null || key.Length < 4)
            return;

        uint v3 = data[0];
        int v2 = 0;
        uint v1 = data[1];

        do
        {
            v2 = v2 - 0x61c88647;
            v3 = v3 + (v1 * 0x10 + key[0] ^ (v1 >> 5) + key[1] ^ unchecked((uint)v2) + v1);
            v1 = v1 + (v3 * 0x10 + key[2] ^ (v3 >> 5) + key[3] ^ unchecked((uint)v2) + v3);
        }
        while (v2 != -0x3910c8e0);

        data[0] = v3;
        data[1] = v1;
    }

    public static void B98Decrypt(uint[] data, uint[] key)
    {
        if (data == null || data.Length < 2 || key == null || key.Length < 4)
            return;

        uint v3 = data[0];
        int v2 = -0x3910c8e0;
        uint v1 = data[1];

        do
        {
            v1 = v1 - (v3 * 0x10 + key[2] ^ (v3 >> 5) + key[3] ^ unchecked((uint)v2) + v3);
            v3 = v3 - (v1 * 0x10 + key[0] ^ (v1 >> 5) + key[1] ^ unchecked((uint)v2) + v1);
            v2 = v2 + 0x61c88647;
        }
        while (v2 != 0);

        data[0] = v3;
        data[1] = v1;
    }

    public static string G72Encrypt(List<byte> input)
    {
        const string BASE85_ALPHABET = "!\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~";

        if (input == null || input.Count == 0)
            return string.Empty;

        StringBuilder result = new StringBuilder();

        // Calculate padding needed to make length divisible by 4
        int padding = (4 - (input.Count % 4)) % 4;

        // Create a copy of input with padding
        List<byte> paddedInput = new List<byte>(input);
        for (int i = 0; i < padding; i++)
        {
            paddedInput.Add(0);
        }

        // Process 4 bytes at a time
        for (int i = 0; i < paddedInput.Count; i += 4)
        {
            // Combine 4 bytes into a 32-bit unsigned integer (big-endian)
            uint value = ((uint)paddedInput[i] << 24) |
                         ((uint)paddedInput[i + 1] << 16) |
                         ((uint)paddedInput[i + 2] << 8) |
                         ((uint)paddedInput[i + 3]);

            if (value == 0 && padding == 0)
            {
                // Special case: all zeros encodes as 'z'
                result.Append('z');
            }
            else
            {
                // Encode as 5 base-85 digits (in reverse order, then reversed)
                char[] encoded = new char[5];
                for (int j = 4; j >= 0; j--)
                {
                    encoded[j] = BASE85_ALPHABET[(int)(value % 85)];
                    value /= 85;
                }
                result.Append(encoded);
            }
        }

        // Remove padding characters from the end
        if (padding > 0)
        {
            result.Length -= padding;
        }

        return result.ToString();
    }

    public static List<byte> G72Decrypt(string input)
    {
        const string BASE85_ALPHABET = "!\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~";

        if (string.IsNullOrEmpty(input))
            return new List<byte>();

        List<byte> result = new List<byte>();

        // Calculate how many characters we need to process
        int inputLength = input.Length;
        int padding = (5 - (inputLength % 5)) % 5;

        // Pad the input string to make it divisible by 5
        string paddedInput = input + new string('u', padding); // 'u' is last char in alphabet

        // Process 5 characters at a time
        for (int i = 0; i < paddedInput.Length; i += 5)
        {
            // Special case: 'z' represents all zeros
            if (i < inputLength && paddedInput[i] == 'z')
            {
                result.AddRange(new byte[] { 0, 0, 0, 0 });
                continue;
            }

            // Decode 5 base-85 characters into a 32-bit value
            uint value = 0;
            for (int j = 0; j < 5; j++)
            {
                char c = paddedInput[i + j];
                int index = BASE85_ALPHABET.IndexOf(c);
                if (index == -1)
                    throw new ArgumentException($"Invalid character '{c}' in base85 string");

                value = value * 85 + (uint)index;
            }

            // Convert 32-bit value to 4 bytes (big-endian)
            byte[] bytes = new byte[4];
            bytes[0] = (byte)(value >> 24);
            bytes[1] = (byte)(value >> 16);
            bytes[2] = (byte)(value >> 8);
            bytes[3] = (byte)value;

            result.AddRange(bytes);
        }

        // Remove padding bytes
        if (padding > 0)
        {
            result.RemoveRange(result.Count - padding, padding);
        }

        return result;
    }
}