# passtrust

Ruby-based tool which allows you to have secure passwords that you can use anywhere, only by remembering simple passphrases.

PassTrust is able to convert any simple string into a secure password between 16 and 64 characters. This allows you to have easy-to-remember passphrases but strong & secure passwords.

**PassTrust is not a password manager, it's a generator.** It uses a variety of hashing algorithms to create your password, and the process is not reversible. (So nobody will know what your passphrase was unless it was really easy to begin with)

The generated passwords are very hard to brute-force, especially on the longer password settings.

## Installation

For installation instructions, look at the [INSTALL.md file](https://github.com/xorond/passtrust/blob/master/INSTALL.md)

## Usage

Usage is pretty straightforward:

```
$ passtrust -h
  PassTrust Password Generator

    Usage: passtrust [options]
    -v, --verify                     Ask the keyword twice
    -l, --length [LENGTH]            Change password length (default is 16, max is 64)
    -t, --timeout [SECONDS]          Change the amount of seconds the password will be on screen (default is 10)
    -c, --clipboard                  Copy the password to the clipboard
    -s, --secret                     Don't show any character when typing
    -r, --random                     Don't ask for a passphrase, use a random one.
    -h, --help                       Show this message
```

To use the default options, run passtrust without arguments.

```
$ passtrust
Password will be 16 characters long
Enter passphrase:
```

To make passtrust ask the passphrase twice (useful if you don't want to risk mistyping and losing your password in the future)

```
$ passtrust -v
Password will be 16 characters long
Verification is on
Enter passphrase: 
```

The default timeout is 10 seconds, this can be changed with the -t flag
```
$ passtrust -t 30
Password will be 16 characters long
Enter passphrase: [something]
Your generated password is: [something] 
The screen will clear in 30 seconds.
```

The password length can be changed with -l, maximum is 64 and minimum is 16.
```
$ passtrust -l 32
Password will be 32 characters long
Enter passphrase:
```

As you type in your password, the characters will show up as `*`. You can disable that with the -s flag

```
$ passtrust -s
Password will be 16 characters long
Secret mode is activated
Enter passphrase: 
```

If you have the `clipboard` gem installed, you can use the clipboard options.
When you pass the -c flag, the generated password will be copied to your clipboard.
It will then be replaced with a fake one when the timer reaches zero.

```
$ passtrust -c
Password will be 16 characters long
Enter passphrase: [something]
Your generated password is: [something]
Password has been copied to your clipboard.
Text in clipboard will be replaced with a fake after timer.
The screen will clear in 10 seconds.
```

If you don't want to think of a passphrase, passtrust can generate a random passphrase as well.

```
$ passtrust -r
Password will be 16 characters long
Your random passphrase is: 
"[something]"
Your generated password is: [something]
The screen will clear in 10 seconds.
```

## About
A big inspiration for this project was [passera](https://github.com/mwgg/passera).

PassTrust has been tested under the following distributions:
```
Archlinux
Debian Jessie
Android (Termux App)
```
