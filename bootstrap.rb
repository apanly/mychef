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
  cfg_domain = "default['anjukeinc']['subdomain'] = '#{domain}'"
  p cfg_domain
end

def init_codepath(path)
end

def create_vagrant_file()
end

init_userdomain(options[:domain])
