import secrets
import string
import re

LOWER = string.ascii_lowercase
UPPER = string.ascii_uppercase
DIGITS = string.digits
SPECIAL_CHARS = "!$#%"
ALPHABET = LOWER + UPPER + DIGITS + SPECIAL_CHARS
PASS_PATTERN = r"^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$"

def password_generate(pwd_length: int) -> str:
    while True:
        pwd = ''
        
        for _ in range(pwd_length):
            pwd += ''.join(secrets.choice(ALPHABET))
        
        if re.match(PASS_PATTERN, pwd): break
    
    return pwd