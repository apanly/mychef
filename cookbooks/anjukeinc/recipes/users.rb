### ensure user
group "create group" do
  group_name node['anjukeinc']['group_name']
  gid node['anjukeinc']['gid']
  system true
end

user "create user" do
  username node['anjukeinc']['username']
  uid node['anjukeinc']['uid']
  gid node['anjukeinc']['gid']
  shell node['anjukeinc']['shell']
  home node['anjukeinc']['home']
  supports({:manage_home => true })
  system true
end

directory node['anjukeinc']['home'] + '/.ssh/' do
  owner node['anjukeinc']['username']
  group node['anjukeinc']['group_name']
  mode 00700
  action :create
end

template "id_rsa" do
    path "#{node['anjukeinc']['home']}/.ssh/id_rsa"
    owner node['anjukeinc']['username']
    group node['anjukeinc']['group_name']
    mode "0600"
end

template "id_rsa.pub" do
    path "#{node['anjukeinc']['home']}/.ssh/id_rsa.pub"
    owner node['anjukeinc']['username']
    group node['anjukeinc']['group_name']
    mode "0644"
end

template "known_hosts" do
    path "#{node['anjukeinc']['home']}/.ssh/known_hosts"
    owner node['anjukeinc']['username']
    group node['anjukeinc']['group_name']
    mode "0644"
end