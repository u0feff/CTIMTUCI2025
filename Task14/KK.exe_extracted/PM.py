# uncompyle6 version 3.9.3
# Python bytecode version base 3.8.0 (3413)
# Decompiled from: Python 3.11.13 (main, Jun  5 2025, 13:12:00) [GCC 11.2.0]
# Embedded file name: PM.py
import os, sys, time, threading, random, string, hashlib, codecs
from base64 import b64decode

def y9(z):
    return b64decode(z).decode("utf-8")


def w3():
    p = [
     y9("WWVsbA=="),
     y9("b3dTdQ=="),
     y9("Ym1hcg=="),
     y9("aW5l")]
    return "".join(p) // return "YellowSubmarine"


def v5(i):
    if len(i) < 8:
        return False
    r = codecs.encode(i, "rot13")
    h = hashlib.sha256(r.encode()).hexdigest()
    x = "".join((chr(ord(c) ^ 170) for c in ))
    return h.startswith("0000")


def e5():
    f = w3()
    t1 = "".join(random.choices((string.ascii_letters + string.digits), k=10))
    t2 = "".join(random.choices((string.hexdigits), k=32))
    t3 = os.path.join(os.getenv("TEMP"), t1 + ".tmp")
    with open(t3, "w") as f1:
        f1.write(t2)
    print("Enter Master-Code: ", end="", flush=True)
    u = sys.stdin.readline().strip()
    if v5(u):
        print("Valid code! But nothing happens...")
    else:
        print("Invalid code! Exiting...")

    def f6():
        try:
            if u == t1:
                print(f"\n[!] ACCESS GRANTED! FLAG: {f}")
            else:
                print("\n[!] Verification failed")
        except:
            pass
        else:
            try:
                os.remove(t3)
            except:
                pass
            else:
                os._exit(0)

    t = threading.Timer(3.0, f6)
    t.daemon = True
    t.start()
    time.sleep(4)


if __name__ == "__main__":
    e5()

# okay decompiling PM.pyc
