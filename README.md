WordPressDB Cookbook
====================
This cookbook will create the MySQL database for WordPress

Requirements
------------
#### packages
- `database` - cookbook to create database
- `mysql` - cookbook to install and configure MySQL
- `mysql-chef_gem` - cookbook to interact with MySQL database
- `iptables` - open the firewall for remote access of database


Attributes
----------

#### wordpressdb::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Sample Value</th>
  </tr>
  <tr>
    <td><tt>['mysql']['server_root_password']</tt></td>
    <td>String</td>
    <td>MySQL root password</td>
    <td><tt>N/A</tt></td>
  </tr>
  <tr>
    <td><tt>['mysql']['allow_remote_root']</tt></td>
    <td>Boolean</td>
    <td>Allow remote access with root</td>
    <td><tt>true</tt></td>
  </tr>
  <tr>
    <td><tt>['mysql']['bind-address']</tt></td>
    <td>String</td>
    <td>Binding address for MySQL</td>
    <td><tt>0.0.0.0</tt></td>
  </tr>
  <tr>
    <td><tt>['wordpress']['db_name']</tt></td>
    <td>String</td>
    <td>WordPress DB name</td>
    <td><tt>sample</tt></td>
  </tr>
</table>

Usage
-----
#### wordpressdb::default

Just include `wordpressdb` in your node's `run_list`:

```json
{
    "name": "my_node",
    "mysql": {
        "server_root_password": "passw0rd",
        "allow_remote_root": true,
        "bind-address": "0.0.0.0"
    },
    "wordpress": {
        "db_name": "sample"
    },
    "run_list": [
        "recipe[maestro]"
    ]
}
```

Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: denverdino@gmail.com
