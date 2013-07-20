execute "install php extension bcmath" do
    user 'root'
    cmds = [
	    "cd #{node['anjuke']['build_root']}/#{node['anjuke']['php_source']}/ext/bcmath",
	    "#{node['anjuke']['php_install_path']}/bin/phpize",
	    "./configure --with-php-config=#{node['anjuke']['php_install_path']}/bin/php-config",
	    "make && make install"
    ]
    command (cmds.join " ; ")
end

execute "install php extension gd" do
    user 'root'
    cmds = [
            "cd #{node['anjuke']['build_root']}/#{node['anjuke']['php_source']}/ext/gd",
            "#{node['anjuke']['php_install_path']}/bin/phpize",
            "./configure --with-php-config=#{node['anjuke']['php_install_path']}/bin/php-config --with-jpeg-dir --with-png-dir --with-freetype-dir",
            "make && make install"
    ]
    command (cmds.join " ; ")
end

execute "install php extension mbstring" do
    user 'root'
    cmds = [
	    "cd #{node['anjuke']['build_root']}/#{node['anjuke']['php_source']}/ext/mbstring",
	    "#{node['anjuke']['php_install_path']}/bin/phpize",
	    "./configure --with-php-config=#{node['anjuke']['php_install_path']}/bin/php-config",
	    "make && make install"
    ]
    command (cmds.join " ; ")
end

execute "install php extension apc" do
  user 'root'
  cmds = [ 
          "cd #{node['anjuke']['build_root']}",
          "tar zxvf #{node['anjuke']['php_apc_source']}",
          "cd #{node['anjuke']['build_root']}/#{node['anjuke']['php_apc_source']}",
          "#{node['anjuke']['php_install_path']}/bin/phpize",
          "./configure --with-php-config=#{node['anjuke']['php_install_path']}/bin/php-config",
          "make && make install"
  ]
  command (cmds.join " ; ")
end

execute "install php extension memcache" do
  user 'root'
  cmds = [
          "cd #{node['anjuke']['build_root']}",
          "tar zxvf #{node['anjuke']['php_memcache_source']}",
          "cd #{node['anjuke']['build_root']}/#{node['anjuke']['php_memcache_source']}",
          "#{node['anjuke']['php_install_path']}/bin/phpize",
          "./configure --with-php-config=#{node['anjuke']['php_install_path']}/bin/php-config",
          "make && make install"
  ]
  command (cmds.join " ; ")
end

execute "install php extension msgpack" do
  user 'root'
  cmds = [
          "cd #{node['anjuke']['build_root']}",
          "tar zxvf #{node['anjuke']['php_msgpack_source']}",
          "cd #{node['anjuke']['build_root']}/#{node['anjuke']['php_msgpack_source']}",
          "#{node['anjuke']['php_install_path']}/bin/phpize",
          "./configure --with-php-config=#{node['anjuke']['php_install_path']}/bin/php-config",
          "make && make install"
  ]
  command (cmds.join " ; ")
end

execute "install php extension php-zmq" do
  user 'root'
  cmds = [
          "cd #{node['anjuke']['build_root']}",
          "cd php-zmq",
          "#{node['anjuke']['php_install_path']}/bin/phpize",
          "./configure --with-php-config=#{node['anjuke']['php_install_path']}/bin/php-config --with-zmq=#{node['anjuke']['zeromq_install_path']}",
          "make && make install"
  ]
  command (cmds.join " ; ")
end