### ensure `developer` user
group "create group developer" do
  group_name node['anjukeinc']['group_name']
  gid node['anjukeinc']['gid']
  system true
end

user "create user developer" do
  username node['anjukeinc']['username']
  uid node['anjukeinc']['uid']
  gid node['anjukeinc']['gid']
  shell node['anjukeinc']['shell']
  home node['anjukeinc']['home']
  supports({:manage_home => true })
  system true
end

directory node['anjukeinc']['home'] + '/.ssh/' do
  owner 'developer'
  group 'developer'
  mode 00700
  action :create
end
