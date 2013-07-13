# user and group
default['anjukeinc']['username']  = 'developer'
default['anjukeinc']['group_name']  = 'developer'
default['anjukeinc']['uid']   = 1200
default['anjukeinc']['gid']   = 1200
default['anjukeinc']['home']  = '/home/developer'
default['anjukeinc']['shell'] = '/bin/bash'

default['anjukeinc']['build_root'] = '/root/install'

# mysql
default['anjukeinc']['mysql_tarball'] = 'mysql-5.5.28.tar.gz'
default['anjukeinc']['mysql_tarball_url'] = 'http://downloads.sourceforge.net/project/mysql.mirror/MySQL%205.5.28/mysql-5.5.28.tar.gz?r=http%3A%2F%2Fsourceforge.net%2Fprojects%2Fmysql.mirror%2Ffiles%2FMySQL%25205.5.28%2F&ts=1373457022&use_mirror=nchc'
default['anjukeinc']['mysql_install_path'] = '/usr/local/mysql'

# php
default['anjukeinc']['php_tarball'] = 'php-5.3.17.tar.gz'
default['anjukeinc']['php_tarball_url'] = 'http://www.php.net/get/php-5.3.17.tar.gz/from/ar2.php.net/mirror'
default['anjukeinc']['php_tarball_checksum'] = '002e02e36c2cbcada8c49a7e5956d787'
default['anjukeinc']['php_install_path'] = '/usr/local/php'

# rabbitmq-c
default['anjukeinc']['rabbitmq-repo'] = 'git://github.com/alanxz/rabbitmq-c.git'
j# zeromq
default['anjukeinc']['zeromq_tarball'] = 'zeromq-2.2.0.tar.gz'
default['anjukeinc']['zeromq_tarball_url'] = 'http://download.zeromq.org/zeromq-2.2.0.tar.gz'
default['anjukeinc']['zeromq_install_path'] = '/usr/local/zeromq-2.2.0'

# php extension
default['anjukeinc']['php_amqp_tarball'] = 'amqp-0.2.2.tgz'
default['anjukeinc']['php_amqp_tarball_url'] = 'http://pecl.php.net/get/amqp-0.2.2.tgz'

default['anjukeinc']['php_apc_tarball'] = 'APC-3.1.9.tgz'
default['anjukeinc']['php_apc_tarball_url'] = 'http://pecl.php.net/get/APC-3.1.9.tgz'

default['anjukeinc']['php_memcache_tarball'] = 'memcache-2.2.7.tgz'
default['anjukeinc']['php_memcache_tarball_url'] = 'http://pecl.php.net/get/memcache-2.2.7.tgz'

default['anjukeinc']['php_msgpack_tarball'] = 'msgpack-0.5.5.tgz'
default['anjukeinc']['php_msgpack_tarball_url'] = 'http://pecl.php.net/get/msgpack-0.5.5.tgz'

default['anjukeinc']['php_redis_tarball'] = 'redis-2.2.3.tgz'
default['anjukeinc']['php_redis_tarball_url'] = 'http://pecl.php.net/get/redis-2.2.3.tgz'

default['anjukeinc']['php_zmq_repo'] = 'git://github.com/mkoppanen/php-zmq.git'

default['anjukeinc']['php_solr_tarball'] = 'solr-1.0.2.tgz'
default['anjukeinc']['php_solr_tarball_url'] = 'http://pecl.php.net/get/solr-1.0.2.tgz'

default['anjukeinc']['php_indexes_repo'] = ''
default['anjukeinc']['php_config_repo'] = ''

# python extension
default['anjukeinc']['subdomain'] = 'yyang'
