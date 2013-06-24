# copy font to directory
cookbook_file "/usr/share/fonts/arial.ttf" do
    user 'root'
    mode 0755
    backup false
    path "./resource/font/arial.ttf"
    action :create_if_missing
end
