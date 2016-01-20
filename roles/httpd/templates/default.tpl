<VirtualHost *:80>
  ServerAdmin webmaster@localhost
  DocumentRoot /var/www/html/{{ doc_root }}/public
  ServerAlias www.{{ domain }}
  ServerAlias {{ domain }}


  <Directory /var/www/html/{{ doc_root }}/public>
    Options Indexes FollowSymLinks Includes ExecCGI
    AllowOverride All
    Order allow,deny
    Allow from all
  </Directory>

  ErrorLog "/var/log/httpd/{{domain}}.log"
  CustomLog "/var/log/httpd/html-access_log" common
</VirtualHost>
