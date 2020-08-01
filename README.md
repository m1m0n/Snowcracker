# Snowcracker
**Snowcracker** is a bash script to brute force the password required by stegsnow.

**stegsnow** is a whitespace steganography tool for concealing messages in text files by appending tabs and spaces on the end of lines, for extracting messages from files containing hidden messages you can use it without any flags or if the file protected by password you can use _snowcracker_ to brute force this password.

# Getting Started
```
$ git clone https://github.com/m1m0n/Snowcracker.git
$ cd Snowcracker/
$ chmod +x snowcracker.sh
$ cp snowcracker.sh /usr/local/bin/ #optional
```

# Usage
`Usage: ./snowcracker.sh <Wordlist> <File> <Flag Format>`

# Example
```
$ snowcracker.sh /usr/share/wordlists/rockyou.txt snow.txt "flag{.*}"
Password is: bambam
flag{dummy_snow_flag}
```

![alt text](https://github.com/m1m0n/Snowcracker/blob/master/example.png?raw=true)
