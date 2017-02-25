# -*- mode: ruby -*-
# vi: set ft=ruby :
# Source: https://gorails.com/guides/using-vagrant-for-rails-development
Vagrant.configure('2') do |config|
  # Use Ubuntu 14.04 Trusty Tahr 64-bit as our operating system
  config.vm.box = 'ubuntu/trusty64'

  # Configurate the virtual machine to use 2GB of RAM
  config.vm.provider :virtualbox do |vb|
    vb.name = 'just_chew'
    vb.customize ['modifyvm', :id, '--memory', '2048']
  end

  # Forward host SSH agent
  config.ssh.forward_agent = true

  # Forward the Rails server default port to the host
  config.vm.network :forwarded_port, guest: 3000, host: 3001

  # Use Chef Solo to provision our virtual machine
  config.vm.provision :chef_solo do |chef|
    chef.channel        = 'stable'
    chef.cookbooks_path = %w(cookbooks)

    chef.add_recipe 'apt'
    chef.add_recipe 'vim'
    chef.add_recipe 'phantomjs2'
    chef.add_recipe 'nodejs'
    chef.add_recipe 'ruby_build'
    chef.add_recipe 'ruby_rbenv::user'
    chef.add_recipe 'postgresql::server'
    chef.add_recipe 'postgresql::client'

    # Install Ruby 2.3.1 and Bundler
    # Set PostgreSQL settings
    chef.json = {
      rbenv: {
        user_installs: [{
          user: 'vagrant',
          rubies: %w(2.3.1),
          global: '2.3.1',
          gems: {
            '2.3.1' => [
              { name: 'bundler' }
            ]
          }
        }]
      },
      postgresql: {
        password: {
          postgres: 'root'
        },
        users: [
          {
            username: 'vagrant',
            password: 'vagrant',
            superuser: true,
          }
        ]
      }
    }
  end
end
