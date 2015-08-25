# vagrant-chef-lamp-base
VAGRANT＋CHEFを使ってLAMPの仮想環境を構築する。
※Windows環境を想定

1.各種アプリをインストール
VirtualBox
https://www.virtualbox.org/
Vagrant
https://www.vagrantup.com/
Chef
https://www.chef.io/chef/

2.Vagrant プラグインをインストール
$ vagrant plugin install vagrant-omnibus 

3.任意のフォルダを作成
mkdir D:\webapp
cd D:\webapp

4.Vagrant実行
vagrant up --provision
