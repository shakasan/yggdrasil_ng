![yggdrasil](logo.png)

About
-----

!! Warnings : this is a early beta version !!

The purpose of this script is to provide a full set of tools to install, customize and tweak a fresh installation of Linux Mint 18.x/19.x, Ubuntu 16.04/18.04 and derivatives

Installation
------------

Linux Mint 18

```
curl -L https://packagecloud.io/makoto/stable/gpgkey | sudo apt-key add -
echo "deb https://packagecloud.io/makoto/stable/ubuntu/ xenial main" | sudo tee /etc/apt/sources.list.d/makoto.list
sudo apt-get update
sudo apt-get install yggdrasil
```

Linux Mint 19

```
curl -L https://packagecloud.io/makoto/stable/gpgkey | sudo apt-key add -
echo "deb https://packagecloud.io/makoto/stable/ubuntu/ bionic main" | sudo tee /etc/apt/sources.list.d/makoto.list
sudo apt-get update
sudo apt-get install yggdrasil
```

Credits
-------

This script has been written by Francois B. (Makotosan)

* Email : shakasan@sirenacorp.be
* Website : https://makotonoblog.be/

Licence
-------

The script is licensed under the terms of the GPLv3
