# user and group
# user and group
default['jinpu']['username']  = 'developer'
default['jinpu']['group_name']  = 'developer'
default['jinpu']['home']  = '/home/developer'

default['jinpu']['repo']  = 'git@git.corp.anjuke.com:jinpu/jinpu-site'
default['jinpu']['build_root'] = '/root/install'
default['jinpu']['mysql_install_path'] = '/usr/local/mysql'
default['jinpu']['php_install_path'] = '/usr/local/php_jinpu'
default['jinpu']['zeromq_install_path'] = '/usr/local/zeromq-2.2.0'

default['jinpu']['php_source'] = 'php-5.3.17'
default['jinpu']['php_apc_source'] = 'APC-3.1.9'
default['jinpu']['php_memcache_source'] = 'memcache-2.2.7'
default['jinpu']['php_msgpack_source'] = 'msgpack-0.5.5'
default['jinpu']['php_solr_source'] = 'solr-1.0.2'
default['jinpu']['php_amqp_source'] = 'amqp-0.2.2'

default['jinpu']['code_repo'] = 'git@git.corp.anjuke.com:jinpu/jinpu-site'
default['jinpu']['page_repo'] = 'git@git.corp.anjuke.com:jinpu/pages'

default['jinpu']['subdomain'] = '{$USER}'
