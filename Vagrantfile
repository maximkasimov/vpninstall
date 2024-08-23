ENV['VAGRANT_SERVER_URL'] = 'https://vagrant.elab.pro'

Vagrant.configure("2") do |config|

  config.vm.define "testnode" do |controlnode|
    controlnode.vm.box = "ubuntu/focal64"
    controlnode.vm.hostname = "testnode"
    controlnode.vm.network "private_network", ip: "192.168.56.34"
    controlnode.vm.synced_folder "./ansible","/home/vagrant/ansible"
  end
end  
