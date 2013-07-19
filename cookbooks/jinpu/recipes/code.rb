# clone the code repo of php
execute "clone php code repo" do
  user node['anjuke']['username']
  cmds = [
          "cd /code",
          "git clone #{node['anjuke']['code_repo']} jinpu"
  ]
  command (cmds.join " ; ")
end

# checkout pages files
execute "clone pages repo" do
  user node['anjuke']['username']
  cmds = [
          "cd /code",
          "git clone #{node['jinpu']['page_repo']} jinpu"
  ]
  command (cmds.join " ; ")
end
