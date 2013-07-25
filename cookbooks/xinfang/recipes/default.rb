### setup php
include_recipe "xinfang::php"

### setup php extensions
include_recipe "xinfang::php-extension"

### setup php serverconfig
include_recipe "xinfang::serverconfig"

### checkout code
include_recipe "xinfang::code"