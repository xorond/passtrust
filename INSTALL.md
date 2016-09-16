# Passtrust Installation

## For Linux

```
(#) : Run as root
($) : Run as normal user
```

### Archlinux

```
$ git clone https://github.com/xorond/passtrust
$ cd passtrust
# pacman -S ruby ruby-bundler
$ bundler install
```

### Debian, Ubuntu and derivatives

```
$ git clone https://github.com/xorond/passtrust
$ cd passtrust
# apt-get install ruby bundler
$ bundler install
```

To install the `passtrust` binary on your path, run the following after running your distro-specific commands:

```
$ cd install-scripts
# ./linux-install
```

After the install script is completed, you should be able to use passtrust like any other command:

```
$ passtrust
```

## For Android

* Get the Termux app from [Google Play](https://play.google.com/store/apps/details?id=com.termux) or [FDroid](https://f-droid.org/repository/browse/?fdid=com.termux).

Open the termux app and run the following commands:

```
$ apt install git ruby
$ git clone https://github.com/xorond/passtrust
$ cd passtrust
$ gem install bundler
$ bundle install
```

You can then run passtrust inside that directory with `ruby passtrust`. If you want to install it on your path, run the following after the ones above:

```
$ cd install-scripts
$ ./android-install
```

You should now be able to use passtrust like any other command.

## For Windows

To be added.

NOTE: If you manage to get passtrust working under windows please contact me or open a pull request with the instructions.
