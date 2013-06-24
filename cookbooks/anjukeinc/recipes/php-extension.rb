execute "install php extension bcmath" do
    user 'root'
    cmds = [
	    "cd #{node['anjukeinc']['build_root']}/#{node['anjukeinc']['php_tarball'].gsub('.tar.gz', '')}/ext/bcmath",
	    "#{node['anjukeinc']['php_install_path']}/bin/phpize",
	    "./configure --with-php-config=#{node['anjukeinc']['php_install_path']}/bin/php-config",
	    "make && make install"
    ]
    command (cmds.join " ; ")
end

execute "install php extension gd" do
    user 'root'
    cmds = [
            "cd #{node['anjukeinc']['build_root']}/#{node['anjukeinc']['php_tarball'].gsub('.tar.gz', '')}/ext/gd",
            "#{node['anjukeinc']['php_install_path']}/bin/phpize",
            "./configure --with-php-config=#{node['anjukeinc']['php_install_path']}/bin/php-config --with-jpeg-dir --with-png-dir --with-freetype-dir",
            "make && make install"
    ]
    command (cmds.join " ; ")
end

execute "install php extension mbstring" do
    user 'root'
    cmds = [
	    "cd #{node['anjukeinc']['build_root']}/#{node['anjukeinc']['php_tarball'].gsub('.tar.gz', '')}/ext/mbstring",
	    "#{node['anjukeinc']['php_install_path']}/bin/phpize",
	    "./configure --with-php-config=#{node['anjukeinc']['php_install_path']}/bin/php-config",
	    "make && make install"
    ]
    command (cmds.join " ; ")
end

execute "install php extension amqp" do
  user 'root'
  cmds = [
          "cd #{node['anjukeinc']['build_root']}",
          "tar zxvf #{node['anjukeinc']['php_amqp_tarball']}",
          "cd #{node['anjukeinc']['build_root']}/#{node['anjukeinc']['php_amqp_tarball'].gsub('.tgz', '')}",
          "#{node['anjukeinc']['php_install_path']}/bin/phpize",
          "./configure --with-php-config=#{node['anjukeinc']['php_install_path']}/bin/php-config",
          "make && make install"
  ]
  command (cmds.join " ; ")
end

execute "install php extension apc" do
  user 'root'
  cmds = [ 
          "cd #{node['anjukeinc']['build_root']}",
          "tar zxvf #{node['anjukeinc']['php_apc_tarball']}",
          "cd #{node['anjukeinc']['build_root']}/#{node['anjukeinc']['php_apc_tarball'].gsub('.tgz', '')}",
          "#{node['anjukeinc']['php_install_path']}/bin/phpize",
          "./configure --with-php-config=#{node['anjukeinc']['php_install_path']}/bin/php-config",
          "make && make install"
  ]
  command (cmds.join " ; ")
end

execute "install php extension memcache" do
  user 'root'
  cmds = [
          "cd #{node['anjukeinc']['build_root']}",
          "tar zxvf #{node['anjukeinc']['php_memcache_tarball']}",
          "cd #{node['anjukeinc']['build_root']}/#{node['anjukeinc']['php_memcache_tarball'].gsub('.tgz', '')}",
          "#{node['anjukeinc']['php_install_path']}/bin/phpize",
          "./configure --with-php-config=#{node['anjukeinc']['php_install_path']}/bin/php-config",
          "make && make install"
  ]
  command (cmds.join " ; ")
end

execute "install php extension msgpack" do
  user 'root'
  cmds = [
          "cd #{node['anjukeinc']['build_root']}",
          "tar zxvf #{node['anjukeinc']['php_msgpack_tarball']}",
          "cd #{node['anjukeinc']['build_root']}/#{node['anjukeinc']['php_msgpack_tarball'].gsub('.tgz', '')}",
          "#{node['anjukeinc']['php_install_path']}/bin/phpize",
          "./configure --with-php-config=#{node['anjukeinc']['php_install_path']}/bin/php-config",
          "make && make install"
  ]
  command (cmds.join " ; ")
end

execute "install php extension redis" do
  user 'root'
  cmds = [
          "cd #{node['anjukeinc']['build_root']}",
          "tar zxvf #{node['anjukeinc']['php_redis_tarball']}",
          "cd #{node['anjukeinc']['build_root']}/#{node['anjukeinc']['php_redis_tarball'].gsub('.tgz', '')}",
          "#{node['anjukeinc']['php_install_path']}/bin/phpize",
          "./configure --with-php-config=#{node['anjukeinc']['php_install_path']}/bin/php-config",
          "make && make install"
  ]
  command (cmds.join " ; ")
end

execute "install php extension solr" do
  user 'root'
  cmds = [
          "cd #{node['anjukeinc']['build_root']}",
          "tar zxvf #{node['anjukeinc']['php_solr_tarball']}",
          "cd #{node['anjukeinc']['build_root']}/#{node['anjukeinc']['php_solr_tarball'].gsub('.tgz', '')}",
          "#{node['anjukeinc']['php_install_path']}/bin/phpize",
          "./configure --with-php-config=#{node['anjukeinc']['php_install_path']}/bin/php-config",
          "make && make install"
  ]
  command (cmds.join " ; ")
end

execute "install php extension php-zmq" do
  user 'root'
  cmds = [
          "cd #{node['anjukeinc']['build_root']}",
          "git clone #{node['anjukeinc']['php_zmq_repo']}",
          "cd php-zmq",
          "#{node['anjukeinc']['php_install_path']}/bin/phpize",
          "./configure --with-php-config=#{node['anjukeinc']['php_install_path']}/bin/php-config --with-zmq=#{node['anjukeinc']['zeromq_install_path']}",
          "make && make install"
  ]
  command (cmds.join " ; ")
end
