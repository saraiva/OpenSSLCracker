# OpenSSLCracker
Simple bash script to brute force OpennSSL Salted AES-256-cbc files.

OpenSSL decrypt will output an error if the password entered was wrong. Because of this I built a script that will brute force the file with passwords from a passwords list. If the password is wrong then the script will ignore it and move on to try another one. The only issues is OpenSSL decrypt doesn't always output errors on a wrong password. This is because AES/CBC can only determine if "decryption works" based on getting the padding right. Because of this I've added an extra step of checking the file type. If file equals out.txt: ASCII text then print the output (the decrypted file) along with the correct password. 


Download both the script and the password.txt in the same directory. 

```chmod 755 opensslcracker.sh```

Feel free to replace "password.txt" with "rockyou.txt" or any other password list you like.

Examples

```./opensslcracker.sh PATH/TO/THE/FILE.txt.enc```
