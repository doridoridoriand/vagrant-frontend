# Local Development Environment for Frontend on Virtualbox
(Although it is more acurate to say Web rather than Frontend)

# Dependencies
- Vagrant (>= 5.2)
- Virtualbox (>= 2.0.3)
- python (>= 3.5)
- Ansible (>= 1.8.0)
- ubuntu/xenial64 (>=20180510.0.0)

# What's the available on this vagrant?
- Ubuntu 16.04 LTS
- docker CE of latest version
- Latest LTS version of nodejs
- Latest version of ruby (But something wrong with ansible role. now it not work..)
- Latest version of python3 (But something wrong with ansible role. now it not work..)
- nginx of Latest mainline version

# How to USE
```bash

$ git clone git@github.com:doridoridoriand/vagrant-frontend.git
$ cd vagrant-frontend
$ vagrant up
```
