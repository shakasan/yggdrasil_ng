![yggdrasil](logo.png)

About
-----

The purpose of this script is to provide a tool to install, customize and tweak a fresh installation of Linux Mint / Ubuntu.

The Linux Mint 18 / Ubuntu 16.04 branch is now removed since the 0.5.1 version of Yggdrasil.
No bugs fixed, features or any changes will be made on this branch anymore.
If you still need it, please use an older version from the repository at your own risk ;)

Installation
------------

Linux Mint 20 / Ubuntu 20.04 (Yggdrasil >= 0.5.1)

```shell
# coming soon
```

Linux Mint 19 / Ubuntu 18.04 (Yggdrasil >= 0.5.1)

```shell
curl -L https://packagecloud.io/makoto/stable/gpgkey | sudo apt-key add -
echo "deb https://packagecloud.io/makoto/stable/ubuntu/ bionic main" | sudo tee /etc/apt/sources.list.d/makoto.list
sudo apt-get update
sudo apt-get install yggdrasil
```

Linux Mint 18 / Ubuntu 16.04 (Yggdrasil < 0.5.1)

```shell
curl -L https://packagecloud.io/makoto/stable/gpgkey | sudo apt-key add -
echo "deb https://packagecloud.io/makoto/stable/ubuntu/ xenial main" | sudo tee /etc/apt/sources.list.d/makoto.list
sudo apt-get update
sudo apt-get install yggdrasil
```

Credits
-------

This script has been written by Francois B. (Makotosan)

* Email : francois@makotonoblog.be
* Website : https://makotonoblog.be/yggdrasil/

Licence
-------

The script is licensed under the terms of the GPLv3
