# packega�̃C���X�g�[��
#  sudo yum install httpd
package "httpd" do
  action :install
end

package "httpd-devel" do
  action :install
end

package "mod_ssl" do
  action :install
end

# �N���Ǝ����N���̐ݒ�
#  sudo service httpd start
#  sudo chkconfig on
service "httpd" do
  action [:start,:enable]
  supports :status => true, :restart => true, :reload => true
end


# conf �̔z�u
template "virtualhost.conf" do
  path "/etc/httpd/conf.d/virtualhost.conf"
  source "virtualhost.conf.erb"
  mode 0644
  notifies :start, 'service[httpd]' 
  notifies :reload, 'service[httpd]'
end


package "php" do
  action :install
end

package "php-devel" do
  action :install
end

package "php-mysql" do
  action :install
end

package "mysql" do
  action :install
end

package "mysql-server" do
  action :install
end

service "mysqld" do
  action [ :enable, :start ]
end

#mysql root pass�ݒ�
execute "set root password" do
  command "mysqladmin -u root password ''"
  only_if "mysql -u root -e 'show databases;'"
end

