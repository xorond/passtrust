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

In theory, the following steps should work for installing on Windows.

* Install [Ruby](http://rubyinstaller.org/)

* Download the [zipped repository](https://github.com/xorond/passtrust/archive/master.zip)

* Extract the zip file

* `gem install bundler` and then `bundle install` inside the extracted directory

* `ruby passtrust` should work now.

Please note that I did not try this, so there may be something missing or wrong. Feel free to open up a pull request/issue related to this.
