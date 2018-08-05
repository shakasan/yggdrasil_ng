![yggdrasil](logo.png)

About
-----

__!! Warnings : this is a early beta version !!__

The purpose of this script is to provide a tool to install, customize and tweak a fresh installation of Linux Mint 18.x/19.x, Ubuntu 16.04/18.04 and derivatives

The Linux Mint 18 branch is now freezed and only bugs will be fixed.

New features are only added to Linux Mint 19 branch from now.

Installation
------------

Linux Mint 18

```shell
curl -L https://packagecloud.io/makoto/stable/gpgkey | sudo apt-key add -
echo "deb https://packagecloud.io/makoto/stable/ubuntu/ xenial main" | sudo tee /etc/apt/sources.list.d/makoto.list
sudo apt-get update
sudo apt-get install yggdrasil
```

Linux Mint 19

```shell
curl -L https://packagecloud.io/makoto/stable/gpgkey | sudo apt-key add -
echo "deb https://packagecloud.io/makoto/stable/ubuntu/ bionic main" | sudo tee /etc/apt/sources.list.d/makoto.list
sudo apt-get update
sudo apt-get install yggdrasil
```

Credits
-------

This script has been written by Francois B. (Makotosan)

* Email : francois@makotonoblog.be
* Website : https://makotonoblog.be/

Licence
-------

The script is licensed under the terms of the GPLv3
