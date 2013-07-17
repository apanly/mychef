execute 'change locale to en_US.UTF-8' do
  command 'locale-gen en_US.UTF-8; update-locale LANG="en_US.UTF-8" LC_ALL="en_US.UTF-8"'
  user 'root'
end

template 'sources.list' do
  path '/etc/apt/sources.list'
  source 'sources.list'
  owner 'root'
  group 'root'
  mode '0644'
end

execute 'update apt index' do
  command 'aptitude update'
  user 'root'
end

execute 'update timezone' do
  command 'cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime'
  user 'root'
end

%w[git autoconf libcurl4-gnutls-dev libxml2-dev g++ make cmake libpcre++-dev nginx libjpeg8-dev libpng12-dev libfreetype6-dev uuid-dev libtool libncurses5-dev re2c subversion].each do |p|
  package p do
    action :install
  end
end
