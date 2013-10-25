execute "export PHP" do
  user 'root'
  cmds = [
          "cd #{node['anjukeinc']['build_root']}",
          "tar zxvf #{node['anjukeinc']['php_tarball']}"
         ]
  command (cmds.join " ; ")
end

execute "export php extension amqp" do
  user 'root'
  cmds = [
          "cd #{node['anjukeinc']['build_root']}",
          "tar zxvf #{node['anjukeinc']['php_amqp_tarball']}"
  ]
  command (cmds.join " ; ")
end

execute "export php extension apc" do
  user 'root'
  cmds = [ 
          "cd #{node['anjukeinc']['build_root']}",
          "tar zxvf #{node['anjukeinc']['php_apc_tarball']}"
  ]
  command (cmds.join " ; ")
end

execute "export php extension memcache" do
  user 'root'
  cmds = [
          "cd #{node['anjukeinc']['build_root']}",
          "tar zxvf #{node['anjukeinc']['php_memcache_tarball']}"  ]
  command (cmds.join " ; ")
end

execute "export php extension msgpack" do
  user 'root'
  cmds = [
          "cd #{node['anjukeinc']['build_root']}",
          "tar zxvf #{node['anjukeinc']['php_msgpack_tarball']}"  ]
  command (cmds.join " ; ")
end

execute "export php extension redis" do
  user 'root'
  cmds = [
          "cd #{node['anjukeinc']['build_root']}",
          "tar zxvf #{node['anjukeinc']['php_redis_tarball']}"  ]
  command (cmds.join " ; ")
end

execute "export php extension solr" do
  user 'root'
  cmds = [
          "cd #{node['anjukeinc']['build_root']}",
          "tar zxvf #{node['anjukeinc']['php_solr_tarball']}"
  ]
  command (cmds.join " ; ")
end

execute "export php extension php-zmq" do
  user 'root'
  cmds = [
          "cd #{node['anjukeinc']['build_root']}",
          "git clone #{node['anjukeinc']['php_zmq_repo']}"
  ]
  command (cmds.join " ; ")
end

execute "export php extension uuid" do
  user 'root'
  cmds = [
          "cd #{node['anjukeinc']['build_root']}",
          "tar zxvf #{node['anjukeinc']['php_uuid_tarball_url']}"
  ]
  command (cmds.join " ; ")
end
