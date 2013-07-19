execute "install php extension bcmath" do
    user 'root'
    cmds = [
	    "cd #{node['haozu']['build_root']}/#{node['haozu']['php_source']}/ext/bcmath",
	    "#{node['haozu']['php_install_path']}/bin/phpize",
	    "./configure --with-php-config=#{node['haozu']['php_install_path']}/bin/php-config",
	    "make && make install"
    ]
    command (cmds.join " ; ")
end

execute "install php extension gd" do
    user 'root'
    cmds = [
            "cd #{node['haozu']['build_root']}/#{node['haozu']['php_source']}/ext/gd",
            "#{node['haozu']['php_install_path']}/bin/phpize",
            "./configure --with-php-config=#{node['haozu']['php_install_path']}/bin/php-config --with-jpeg-dir --with-png-dir --with-freetype-dir",
            "make && make install"
    ]
    command (cmds.join " ; ")
end

execute "install php extension mbstring" do
    user 'root'
    cmds = [
	    "cd #{node['haozu']['build_root']}/#{node['haozu']['php_source']}/ext/mbstring",
	    "#{node['haozu']['php_install_path']}/bin/phpize",
	    "./configure --with-php-config=#{node['haozu']['php_install_path']}/bin/php-config",
	    "make && make install"
    ]
    command (cmds.join " ; ")
end

execute "install php extension apc" do
  user 'root'
  cmds = [ 
          "cd #{node['haozu']['build_root']}",
          "tar zxvf #{node['haozu']['php_apc_source']}",
          "cd #{node['haozu']['build_root']}/#{node['haozu']['php_apc_source']}",
          "#{node['haozu']['php_install_path']}/bin/phpize",
          "./configure --with-php-config=#{node['haozu']['php_install_path']}/bin/php-config",
          "make && make install"
  ]
  command (cmds.join " ; ")
end

execute "install php extension memcache" do
  user 'root'
  cmds = [
          "cd #{node['haozu']['build_root']}",
          "tar zxvf #{node['haozu']['php_memcache_source']}",
          "cd #{node['haozu']['build_root']}/#{node['haozu']['php_memcache_source']}",
          "#{node['haozu']['php_install_path']}/bin/phpize",
          "./configure --with-php-config=#{node['haozu']['php_install_path']}/bin/php-config",
          "make && make install"
  ]
  command (cmds.join " ; ")
end

execute "install php extension msgpack" do
  user 'root'
  cmds = [
          "cd #{node['haozu']['build_root']}",
          "tar zxvf #{node['haozu']['php_msgpack_source']}",
          "cd #{node['haozu']['build_root']}/#{node['haozu']['php_msgpack_source']}",
          "#{node['haozu']['php_install_path']}/bin/phpize",
          "./configure --with-php-config=#{node['haozu']['php_install_path']}/bin/php-config",
          "make && make install"
  ]
  command (cmds.join " ; ")
end

execute "install php extension solr" do
  user 'root'
  cmds = [
          "cd #{node['haozu']['build_root']}",
          "tar zxvf #{node['haozu']['php_solr_source']}",
          "cd #{node['haozu']['build_root']}/#{node['haozu']['php_solr_source']}",
          "#{node['haozu']['php_install_path']}/bin/phpize",
          "./configure --with-php-config=#{node['haozu']['php_install_path']}/bin/php-config",
          "make && make install"
  ]
  command (cmds.join " ; ")
end

execute "install php extension redis" do
  user 'root'
  cmds = [
          "cd #{node['haozu']['build_root']}",
          "tar zxvf #{node['haozu']['php_redis_source']}",
          "cd #{node['haozu']['build_root']}/#{node['haozu']['php_redis_source']}",
          "#{node['haozu']['php_install_path']}/bin/phpize",
          "./configure --with-php-config=#{node['haozu']['php_install_path']}/bin/php-config",
          "make && make install"
  ]
  command (cmds.join " ; ")
end

execute "install php extension php-zmq" do
  user 'root'
  cmds = [
          "cd #{node['haozu']['build_root']}",
          "cd php-zmq",
          "#{node['haozu']['php_install_path']}/bin/phpize",
          "./configure --with-php-config=#{node['haozu']['php_install_path']}/bin/php-config --with-zmq=#{node['haozu']['zeromq_install_path']}",
          "make && make install"
  ]
  command (cmds.join " ; ")
end
