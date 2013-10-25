# clone the code repo of anjuke
execute "clone anjuke code repo" do
  user node['member']['username']
  group node['member']['user_group']
  cmds = [
          "cd /code",
          "git clone #{node['member']['repo1']} anjuke"
  ]
  command (cmds.join " ; ")
end
