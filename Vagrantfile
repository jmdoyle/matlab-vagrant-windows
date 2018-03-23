Vagrant.configure("2") do |config|
  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
    v.cpus = 2
    v.customize ["modifyvm", :id, "--vram", "64"]
    v.customize ['modifyvm', :id, '--clipboard', 'bidirectional']  
  end

  config.vm.box = "mwrock/Windows2016"
  config.vm.synced_folder "installers/MathWorks", "c:/Users/vagrant/Downloads/MathWorks"

  config.vm.provision "file", source: "secrets/license.lic", destination: "c:/tmp/secrets/license.lic"
  config.vm.provision "file", source: "secrets/file-installation-key.txt", destination: "c:/tmp/secrets/file-installation-key.txt"
  config.vm.provision "file", source: "matlab-installer-options.ini", destination: "c:/tmp/matlab-installer-options.ini"
  config.vm.provision "file", source: "matlab_activate.ini", destination: "c:/tmp/matlab_activate.ini"
  config.vm.provision "shell", path: "add-matlab.ps1"
end
