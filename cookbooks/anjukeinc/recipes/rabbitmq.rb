# install rabbitmq-c

execute "install rabbitmq-c" do
  user 'root'
  cmds = [
          "cd #{node['anjukeinc']['build_root']}",
          "git clone #{node['anjukeinc']['rabbitmq-repo']}",
          "cd rabbitmq-c",
          "git submodule init",
          "git submodule update",
          "autoreconf -i && ./configure",
          "make && make install"
  ]
  command (cmds.join " ; ")
end
