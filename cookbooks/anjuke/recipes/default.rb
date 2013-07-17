### setup php
include_recipe "anjuke::php"

### setup php extensions
include_recipe "anjuke::php-extension"

### setup php serverconfig
include_recipe "anjuke::serverconfig"

### download php config
include_recipe "anjuke::phpconfig"
