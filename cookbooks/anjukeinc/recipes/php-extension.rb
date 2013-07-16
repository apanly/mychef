execute "install PHP" do
  user 'root'
  cmds = [
          "cd #{node['anjukeinc']['build_root']}",
          "tar zxvf #{node['anjukeinc']['php_tarball']}"
         ]
  command (cmds.join " ; ")
end

execute "install php extension amqp" do
  user 'root'
  cmds = [
          "cd #{node['anjukeinc']['build_root']}",
          "tar zxvf #{node['anjukeinc']['php_amqp_tarball']}"
  ]
  command (cmds.join " ; ")
end

execute "install php extension apc" do
  user 'root'
  cmds = [ 
          "cd #{node['anjukeinc']['build_root']}",
          "tar zxvf #{node['anjukeinc']['php_apc_tarball']}"
  ]
  command (cmds.join " ; ")
end

execute "install php extension memcache" do
  user 'root'
  cmds = [
          "cd #{node['anjukeinc']['build_root']}",
          "tar zxvf #{node['anjukeinc']['php_memcache_tarball']}"  ]
  command (cmds.join " ; ")
end

execute "install php extension msgpack" do
  user 'root'
  cmds = [
          "cd #{node['anjukeinc']['build_root']}",
          "tar zxvf #{node['anjukeinc']['php_msgpack_tarball']}"  ]
  command (cmds.join " ; ")
end

execute "install php extension redis" do
  user 'root'
  cmds = [
          "cd #{node['anjukeinc']['build_root']}",
          "tar zxvf #{node['anjukeinc']['php_redis_tarball']}"  ]
  command (cmds.join " ; ")
end

execute "install php extension solr" do
  user 'root'
  cmds = [
          "cd #{node['anjukeinc']['build_root']}",
          "tar zxvf #{node['anjukeinc']['php_solr_tarball']}"
  ]
  command (cmds.join " ; ")
end

execute "install php extension php-zmq" do
  user 'root'
  cmds = [
          "cd #{node['anjukeinc']['build_root']}",
          "git clone #{node['anjukeinc']['php_zmq_repo']}"
  ]
  command (cmds.join " ; ")
end
