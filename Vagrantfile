 VAGRANTFILE_API_VERSION = "2"
 Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
   config.vm.box = "ubuntu12.04"
   config.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/precise/current/precise-server-cloudimg-amd64-vagrant-disk1.box"

 config.vm.network :forwarded_port, guest: 3306, host: 3307   # mysql
 config.vm.network :forwarded_port, guest: 3000, host: 3000    # rails
 
 config.vm.synced_folder "shared/", "/shared", owner: "root", group: "root"
 #após dar um vagrant up logar no vagrant ssh e rodar : sudo chmod +x /tmp/vagrant-shell && /tmp/vagrant-shell && sudo ln -s /opt/VBoxGuestAdditions-4.3.10/lib/VBoxGuestAdditions /usr/lib/VBoxGuestAdditions "
 
 config.vm.provider :virtualbox do |vb|
   vb.customize ["modifyvm", :id, "--memory", "2048"]
 end
end
