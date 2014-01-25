Overview
========

This is a set of Chef recipes (think of them as macros to automatically build a running Virtual Machine) that will work to set the
geoq app up on either a local Virtualbox VM or onto an Amazon Web Service VM.


Configuration
=============

1. Download VirtualBox and install it (free at https://www.virtualbox.org/)
2. Download Vagrant and install it (free at http://www.vagrantup.com/downloads)
3. Download Git and install it (free at http://git-scm.com/downloads or it might be preinstalled if on a mac)
4. Download Berkshelf and install it (works best through a gem install:
5. If you want to deploy to Amazon or some other provider, create a file named 'vagrant_dev_settings.yml' in the code directory (i.e. ~/Sites) and add in provider deployment details.
6. After everything is installed, you can type 'vagrant provision' to have it update code from github and install new libraries, or 'vagrant halt' to stop the VM.

Installation Steps
==================

    sudo gem install berkshelf
    sudo vagrant plugin install vagrant-berkshelf
    cd ~/Sites (or wherever you keep your code)
    git clone https://github.com/jaycrossler/geoq-chef-repo.git
    cd geoq-chef-repo

    vagrant up (to deploy to a local virtualbox vm)

    (Or, if deploying to amazon)
    vagrant plugin install vagrant-aws
    vagrant plugin install unf
    vagrant up --provider=aws (if using AWS, and the vagrant_dev_settings.yml were created)
