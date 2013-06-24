## setup anjukeinc

### create build root
directory node['anjukeinc']['build_root'] do
  owner 'root'
  group 'root'
  mode 00755
  action :create
end

### setup users
include_recipe "anjukeinc::users"

### download tarball files
include_recipe "anjukeinc::tarball"

### setup mysql
include_recipe "anjukeinc::mysql"

### setup php
include_recipe "anjukeinc::php"

### setup zeromq
include_recipe "anjukeinc::zeromq"

### setup rabbitmq-c
include_recipe "anjukeinc::rabbitmq"

### setup php-extensions
include_recipe "anjukeinc::php-extension"

#template "php.ini" do
#end

#template "php extension config" do
#end

#template "php fpm" do
#end

#template "nginx config" do
#end

#template "anjuke nginx config" do
#end

#template "haozu nginx config" do
#end

#template "jinpu nginx config" do
#end

#execute "init web font" do
#
#end
