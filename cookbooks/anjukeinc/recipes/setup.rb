## setup anjukeinc

### setup users
#include_recipe "anjukeinc::users"

### download tarball files
#include_recipe "anjukeinc::tarball"

### setup mysql
#include_recipe "anjukeinc::mysql"

### setup php
#include_recipe "anjukeinc::php"

### setup zeromq
#include_recipe "anjukeinc::zeromq"

### setup rabbitmq-c
#include_recipe "anjukeinc::rabbitmq"

### setup php-extensions
#include_recipe "anjukeinc::php-extension"

### setup config
include_recipe "anjukeinc::serverconfig"

### set up system font
#include_recipe "anjukeinc::font"

### download php config
#include_recipe "anjukeinc::phpconfig"

### download index config
#include_recipe "anjukeinc::phpindex"