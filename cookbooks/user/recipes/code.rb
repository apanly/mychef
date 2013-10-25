# clone the code repo of anjuke
execute "clone anjuke code repo" do
  user node['user']['username']
  group node['user']['user_group']
  cmds = [
          "cd /code",
          "git clone #{node['user']['repo1']} anjuke"
  ]
  command (cmds.join " ; ")
end
