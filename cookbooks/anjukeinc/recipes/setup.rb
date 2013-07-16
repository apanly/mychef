## setup anjukeinc

### setup users
include_recipe "anjukeinc::users"

### download tarball files
include_recipe "anjukeinc::tarball"

### export tarball
include_recipe "anjukeinc::php-extension"

### setup mysql
include_recipe "anjukeinc::mysql"

### setup zeromq
include_recipe "anjukeinc::zeromq"

### setup rabbitmq-c
include_recipe "anjukeinc::rabbitmq"

### setup config
include_recipe "anjukeinc::serverconfig"

### set up system font
include_recipe "anjukeinc::font"
