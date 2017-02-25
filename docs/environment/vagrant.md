# Environment Setup

## Vagrant

In order to get your vagrant box setup, do the following:

1. Install the vagrant no-chef plugin:

  ```sh
  vagrant plugin install vagrant-librarian-chef-nochef
  ```

2. Provision the vagrant box (this may take awhile):

  ```sh
  vagrant up
  ```

3. Navigate to the project mounted at `/vagrant`:

  ```sh
  vagrant ssh
  cd /vagrant
  ```

NOTE: If you experience problems provisioning with chef, try upgrading vagrant to the [latest version](https://www.vagrantup.com/downloads.html).
