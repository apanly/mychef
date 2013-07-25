execute "install php extension bcmath" do
    user 'root'
    cmds = [
	    "cd #{node['xinfang']['build_root']}/#{node['xinfang']['php_source']}/ext/bcmath",
	    "#{node['xinfang']['php_install_path']}/bin/phpize",
	    "./configure --with-php-config=#{node['xinfang']['php_install_path']}/bin/php-config",
	    "make && make install"
    ]
    command (cmds.join " ; ")
end

execute "install php extension gd" do
    user 'root'
    cmds = [
            "cd #{node['xinfang']['build_root']}/#{node['xinfang']['php_source']}/ext/gd",
            "#{node['xinfang']['php_install_path']}/bin/phpize",
            "./configure --with-php-config=#{node['xinfang']['php_install_path']}/bin/php-config --with-jpeg-dir --with-png-dir --with-freetype-dir",
            "make && make install"
    ]
    command (cmds.join " ; ")
end

execute "install php extension mbstring" do
    user 'root'
    cmds = [
	    "cd #{node['xinfang']['build_root']}/#{node['xinfang']['php_source']}/ext/mbstring",
	    "#{node['xinfang']['php_install_path']}/bin/phpize",
	    "./configure --with-php-config=#{node['xinfang']['php_install_path']}/bin/php-config",
	    "make && make install"
    ]
    command (cmds.join " ; ")
end

execute "install php extension apc" do
  user 'root'
  cmds = [ 
          "cd #{node['xinfang']['build_root']}",
          "tar zxvf #{node['xinfang']['php_apc_source']}",
          "cd #{node['xinfang']['build_root']}/#{node['xinfang']['php_apc_source']}",
          "#{node['xinfang']['php_install_path']}/bin/phpize",
          "./configure --with-php-config=#{node['xinfang']['php_install_path']}/bin/php-config",
          "make && make install"
  ]
  command (cmds.join " ; ")
end

execute "install php extension memcache" do
  user 'root'
  cmds = [
          "cd #{node['xinfang']['build_root']}",
          "tar zxvf #{node['xinfang']['php_memcache_source']}",
          "cd #{node['xinfang']['build_root']}/#{node['xinfang']['php_memcache_source']}",
          "#{node['xinfang']['php_install_path']}/bin/phpize",
          "./configure --with-php-config=#{node['xinfang']['php_install_path']}/bin/php-config",
          "make && make install"
  ]
  command (cmds.join " ; ")
end

execute "install php extension msgpack" do
  user 'root'
  cmds = [
          "cd #{node['xinfang']['build_root']}",
          "tar zxvf #{node['xinfang']['php_msgpack_source']}",
          "cd #{node['xinfang']['build_root']}/#{node['xinfang']['php_msgpack_source']}",
          "#{node['xinfang']['php_install_path']}/bin/phpize",
          "./configure --with-php-config=#{node['xinfang']['php_install_path']}/bin/php-config",
          "make && make install"
  ]
  command (cmds.join " ; ")
end

execute "install php extension solr" do
  user 'root'
  cmds = [
          "cd #{node['xinfang']['build_root']}",
          "tar zxvf #{node['xinfang']['php_solr_source']}",
          "cd #{node['xinfang']['build_root']}/#{node['xinfang']['php_solr_source']}",
          "#{node['xinfang']['php_install_path']}/bin/phpize",
          "./configure --with-php-config=#{node['xinfang']['php_install_path']}/bin/php-config",
          "make && make install"
  ]
  command (cmds.join " ; ")
end

execute "install php extension php-zmq" do
  user 'root'
  cmds = [
          "cd #{node['xinfang']['build_root']}",
          "cd php-zmq",
          "#{node['xinfang']['php_install_path']}/bin/phpize",
          "./configure --with-php-config=#{node['xinfang']['php_install_path']}/bin/php-config --with-zmq=#{node['xinfang']['zeromq_install_path']}",
          "make && make install"
  ]
  command (cmds.join " ; ")
end