#!/usr/bin/env ruby

require 'optparse'

options = {}
option_parser = OptionParser.new do |opts|
  opts.banner = 'here is help messages of the bootstrap command.'

  opts.on('-d DOMAIN', '--domain Domain', 'Pass-in your domain name') do |value|
    options[:domain] = value
  end

  opts.on('-p PATH', '--path Code Path', 'Pass-in the path of your code') do |value|
    options[:path] = value
  end

end.parse!

def init_userdomain(domain)
  files = ['./cookbooks/anjukeinc/attributes/default.rb', './cookbooks/anjuke/attributes/default.rb', './cookbooks/haozu/attributes/default.rb', './cookbooks/jinpu/attributes/default.rb']
  files.each do |file|
  	text = File.read(file)
    replace = text.gsub(/\{\$USER\}/, "#{domain}")
    File.open(file, "w") { |f| f.puts replace }
  end
end

def create_vagrant_file(path)
  text = File.read('./Vagrantfile')
  replace = text.gsub(/\{\$PATH\}/, "#{path}")
  File.open('./Vagrantfile', "w") { |file| file.puts replace }
end

if options[:domain]
  init_userdomain(options[:domain])
end

if options[:path]
	create_vagrant_file(options[:path])
end

exec 'vagrant up'