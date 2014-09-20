name             'wordpressdb'
maintainer       'YOUR_COMPANY_NAME'
maintainer_email 'YOUR_EMAIL'
license          'All rights reserved'
description      'Installs/Configures wordpressdb'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends "database", ">= 1.6.0"
depends "mysql", ">= 5.0.0"
depends "mysql-chef_gem", ">= 0.0.2"
depends 'iptables'


