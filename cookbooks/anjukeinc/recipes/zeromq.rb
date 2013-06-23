# install zero mq

execute "install zero mq" do
  user 'root'
  cmds = [
          "cd #{node['anjukeinc']['build_root']}",
          "tar zxvf #{node['anjukeinc']['zeromq_tarball']}",
          "cd #{node['anjukeinc']['build_root']}/#{node['anjukeinc']['zeromq_tarball'].gsub('.tar.gz', '')}",
          "./configure --prefix=#{node['anjukeinc']['zeromq_install_path']}",
          "make && make install"
  ]
  command (cmds.join " ; ")
end
