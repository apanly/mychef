execute "install php extension bcmath" do
    user 'root'
    cmds = [
	    "cd #{node['jinpu']['build_root']}/#{node['jinpu']['php_source']}/ext/bcmath",
	    "#{node['jinpu']['php_install_path']}/bin/phpize",
	    "./configure --with-php-config=#{node['jinpu']['php_install_path']}/bin/php-config",
	    "make && make install"
    ]
    command (cmds.join " ; ")
end

execute "install php extension gd" do
    user 'root'
    cmds = [
            "cd #{node['jinpu']['build_root']}/#{node['jinpu']['php_source']}/ext/gd",
            "#{node['jinpu']['php_install_path']}/bin/phpize",
            "./configure --with-php-config=#{node['jinpu']['php_install_path']}/bin/php-config --with-jpeg-dir --with-png-dir --with-freetype-dir",
            "make && make install"
    ]
    command (cmds.join " ; ")
end

execute "install php extension mbstring" do
    user 'root'
    cmds = [
	    "cd #{node['jinpu']['build_root']}/#{node['jinpu']['php_source']}/ext/mbstring",
	    "#{node['jinpu']['php_install_path']}/bin/phpize",
	    "./configure --with-php-config=#{node['jinpu']['php_install_path']}/bin/php-config",
	    "make && make install"
    ]
    command (cmds.join " ; ")
end

execute "install php extension apc" do
  user 'root'
  cmds = [ 
          "cd #{node['jinpu']['build_root']}",
          "tar zxvf #{node['jinpu']['php_apc_source']}",
          "cd #{node['jinpu']['build_root']}/#{node['jinpu']['php_apc_source']}",
          "#{node['jinpu']['php_install_path']}/bin/phpize",
          "./configure --with-php-config=#{node['jinpu']['php_install_path']}/bin/php-config",
          "make && make install"
  ]
  command (cmds.join " ; ")
end

execute "install php extension memcache" do
  user 'root'
  cmds = [
          "cd #{node['jinpu']['build_root']}",
          "tar zxvf #{node['jinpu']['php_memcache_source']}",
          "cd #{node['jinpu']['build_root']}/#{node['jinpu']['php_memcache_source']}",
          "#{node['jinpu']['php_install_path']}/bin/phpize",
          "./configure --with-php-config=#{node['jinpu']['php_install_path']}/bin/php-config",
          "make && make install"
  ]
  command (cmds.join " ; ")
end

execute "install php extension msgpack" do
  user 'root'
  cmds = [
          "cd #{node['jinpu']['build_root']}",
          "tar zxvf #{node['jinpu']['php_msgpack_source']}",
          "cd #{node['jinpu']['build_root']}/#{node['jinpu']['php_msgpack_source']}",
          "#{node['jinpu']['php_install_path']}/bin/phpize",
          "./configure --with-php-config=#{node['jinpu']['php_install_path']}/bin/php-config",
          "make && make install"
  ]
  command (cmds.join " ; ")
end

execute "install php extension solr" do
  user 'root'
  cmds = [
          "cd #{node['jinpu']['build_root']}",
          "tar zxvf #{node['jinpu']['php_solr_source']}",
          "cd #{node['jinpu']['build_root']}/#{node['jinpu']['php_solr_source']}",
          "#{node['jinpu']['php_install_path']}/bin/phpize",
          "./configure --with-php-config=#{node['jinpu']['php_install_path']}/bin/php-config",
          "make && make install"
  ]
  command (cmds.join " ; ")
end

execute "install php extension amqp" do
  user 'root'
  cmds = [
          "cd #{node['jinpu']['build_root']}",
          "tar zxvf #{node['jinpu']['php_amqp_source']}",
          "cd #{node['jinpu']['build_root']}/#{node['jinpu']['php_amqp_source']}",
          "#{node['jinpu']['php_install_path']}/bin/phpize",
          "./configure --with-php-config=#{node['jinpu']['php_install_path']}/bin/php-config",
          "make && make install"
  ]
  command (cmds.join " ; ")
end

execute "install php extension php-zmq" do
  user 'root'
  cmds = [
          "cd #{node['jinpu']['build_root']}",
          "cd php-zmq",
          "#{node['jinpu']['php_install_path']}/bin/phpize",
          "./configure --with-php-config=#{node['jinpu']['php_install_path']}/bin/php-config --with-zmq=#{node['jinpu']['zeromq_install_path']}",
          "make && make install"
  ]
  command (cmds.join " ; ")
end
