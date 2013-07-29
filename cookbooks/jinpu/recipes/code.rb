# clone the code repo of php
execute "clone php code repo" do
  user node['jinpu']['username']
  cmds = [
          "cd /code",
          "git clone #{node['jinpu']['code_repo']} jinpu"
  ]
  command (cmds.join " ; ")
end

# checkout pages files
execute "clone pages repo" do
  user node['jinpu']['username']
  cmds = [
          "cd /code",
          "git clone #{node['jinpu']['page_repo']} jinpu_pages"
  ]
  command (cmds.join " ; ")
end
