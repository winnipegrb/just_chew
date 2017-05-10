# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure('2') do |config|

  # Use the just_chew base box
  config.vm.box = 'gmcgibbon/just_chew'

  # Forward host SSH agent
  config.ssh.forward_agent = true

  # Forward the Rails server default port to the host
  config.vm.network :forwarded_port, guest: 3000, host: 3000

  # Configurate the virtual machine to use 2GB of RAM
  config.vm.provider :virtualbox do |vb|
    vb.name = 'just-chew'
    vb.customize ['modifyvm', :id, '--memory', '2048']
  end

  config.vm.provision 'setup', type: :shell do |setup|
    setup.privileged = false
    setup.inline     = <<-SCRIPT
    cd /vagrant
    bundle install
    bundle exec rake db:create db:migrate db:test:prepare
    rbenv rehash
    SCRIPT
  end
end
