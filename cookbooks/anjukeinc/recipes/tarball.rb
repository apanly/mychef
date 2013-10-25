### create build root
directory node['anjukeinc']['build_root'] do
  owner 'root'
  group 'root'
  mode 00755
  action :create
end

# tarballs
remote_file node['anjukeinc']['build_root'] + "/" + node['anjukeinc']['mysql_tarball'] do
  source node['anjukeinc']['mysql_tarball_url']
  owner 'root'
  group 'root'
  action :create
end

remote_file node['anjukeinc']['build_root'] + "/" + node['anjukeinc']['php_tarball'] do
  source node['anjukeinc']['php_tarball_url']
  owner 'root'
  group 'root'
  checksum node['anjukeinc']['php_tarball_checksum']
  action :create
end

remote_file node['anjukeinc']['build_root'] + "/" + node['anjukeinc']['zeromq_tarball'] do
  source node['anjukeinc']['zeromq_tarball_url']
  owner 'root'
  group 'root'
  action :create
end

remote_file node['anjukeinc']['build_root'] + "/" + node['anjukeinc']['php_amqp_tarball'] do
  source node['anjukeinc']['php_amqp_tarball_url']
  owner 'root'
  group 'root'
  action :create
end

remote_file node['anjukeinc']['build_root'] + "/" + node['anjukeinc']['php_apc_tarball'] do
  source node['anjukeinc']['php_apc_tarball_url']
  owner 'root'
  group 'root'
  action :create
end

remote_file node['anjukeinc']['build_root'] + "/" + node['anjukeinc']['php_memcache_tarball'] do
  source node['anjukeinc']['php_memcache_tarball_url']
  owner 'root'
  group 'root'
  action :create
end

remote_file node['anjukeinc']['build_root'] + "/" + node['anjukeinc']['php_msgpack_tarball'] do
  source node['anjukeinc']['php_msgpack_tarball_url']
  owner 'root'
  group 'root'
  action :create
end

remote_file node['anjukeinc']['build_root'] + "/" + node['anjukeinc']['php_redis_tarball'] do
  source node['anjukeinc']['php_redis_tarball_url']
  owner 'root'
  group 'root'
  action :create
end

remote_file node['anjukeinc']['build_root'] + "/" + node['anjukeinc']['php_solr_tarball'] do
  source node['anjukeinc']['php_solr_tarball_url']
  owner 'root'
  group 'root'
  action :create
end

remote_file node['anjukeinc']['build_root'] + "/" + node['anjukeinc']['php_uuid_tarball'] do
  source node['anjukeinc']['php_uuid_tarball_url']
  owner 'root'
  group 'root'
  action :create
end

