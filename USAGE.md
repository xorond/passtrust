## Usage

### Getting Help

```
$ passtrust -h

  Passtrust Password Generator

  Usage: passtrust [options]
  -v, --verify                     Ask the passphrase twice
  -l, --length [length]            Change password length (min 16 max 64)
  -t, --timeout [seconds]          Change default timeout (10 seconds)
  -c, --clipboard                  Copy generated password to clipboard
  -r, --random                     Use a random passphrase
  -p, --pass_security              Check security of passphrase
  -h, --help                       Show this text
  -V, --version                    Show version info and exit
```

### Run with default options

```
$ passtrust
Password will be 16 characters long
Enter passphrase:
Your generated password is: NjRiNDYjMGI0OWQ
```

### Enable passphrase verification

```
$ passtrust -v
Password will be 16 characters long
Verification is activated
Enter passphrase:
Verify passphrase:
Passphrase verified
Your generated password is: NjRiNDYjMGI0OWQ
The screen will clear in 00:10 seconds
```

```
$ passtrust -v
Password will be 16 characters long
Verification is activated
Enter passphrase:
Verify passphrase:
Passphrases did not match
```


### Change timeout seconds

```
$ passtrust -t 30
Password will be 16 characters long
Enter passphrase:
Your generated password is: NjRiNDYjMGI0OWQ
The screen will clear in 00:30 seconds
```

### Change length of generated password

```
$ passtrust -l 32
Password will be 32 characters long
Enter passphrase:
Your generated password is: NjRiNDYwYjEzOWYjOGNjZThjMGI0OWQ
The screen will clear in 00:10 seconds
```

### Copy generated password to clipboard

```
$ passtrust -c
Password will be 16 characters long
Enter passphrase:
Password has been copied to your clipboard.
It will be replaced with a fake one after timer hits zero.
The screen will clear in 00:10 seconds
```

### Generate random passphrase

```
$ passtrust -r
Password will be 16 characters long
Your random passphrase is:
"b26ab9d7e75b4b13b770ad9a108dcb62"
Your generated password is: NmNiNDQ3MjdlMWQ
The screen will clear in 00:10 seconds
```

### Check security of the given passphrase

```
$ passtrust -p
Password will be 16 characters long
Security testing is activated
Enter passphrase:
Evaluating password security
Score: 0/4
Password is too weak. Choose a better one
```
```
$ passtrust -p
Password will be 16 characters long
Security testing is activated
Enter passphrase:
Evaluating password security
Score: 4/4
Your generated password is: MTc1YjgwNjJhMmY
The screen will clear in 00:10 seconds
```
