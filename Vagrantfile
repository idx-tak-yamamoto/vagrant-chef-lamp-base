VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "opscode-centos-6.5"
  config.vm.hostname = "centos"
  config.vm.box_url = "http://opscode-vm-bento.s3.amazonaws.com/vagrant/virtualbox/opscode_centos-6.5_chef-provisionerless.box"

  # host(127.0.0.1)��8080�Ԃ��Aguest(���z��)��80�ԂɃ|�[�g�t�H���[�h����
  config.vm.network :forwarded_port, guest: 80, host: 8080
  config.vm.network :forwarded_port, guest: 443, host: 443
  # Chef
  config.vm.provision "chef_solo" do |chef|
    chef.cookbooks_path = ["./cookbooks"]
    chef.add_recipe "webapp"
  end

   # ���z���ɃC���X�g�[������chef�̃o�[�W����
  config.omnibus.chef_version = :latest

  config.vm.synced_folder "D:\\tmp\\vagrant\\webapp\\www", "/home/www"

end

