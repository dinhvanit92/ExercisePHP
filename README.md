# DEPLOY ExercisePHP

**1. Settup enviroment in Docker**
Cd to docker-compose file:

```
docke-compose up --build

```

View myshop: http://localhost

_Note: my settup docker nginx at ports 80, if your computer added port 80, please change port at nginx docker-compose.yml_

**2. Settup enviroment in Nginx Ubuntu**

Config nginx `vhocphp.com.conf` in `/etc/nginx/sites-availble`

```
server {
     listen 80;
     server_name vhocphp.com www.vhocphp.com;
     include snippets/phpmyadmin.conf;
     root /var/www/vhocphp.com/public_html/public;

     index index.php index.html index.htm;

     location / {
        try_files $uri $uri/ /index.php?$args;
    }

    location = /favicon.ico { access_log off; log_not_found off; }
    location = /robots.txt  { access_log off; log_not_found off; }

    error_page 404 /index.php;

    location ~ \.php$ {
        fastcgi_pass unix:/var/run/php/php7.4-fpm.sock;
        fastcgi_param SCRIPT_FILENAME $realpath_root$fastcgi_script_name;
        include fastcgi_params;
    }
}
```

Link to /etc/nginx/sites-enabled:

```
sudo ln -s /etc/nginx/sites-available/vhocphp.com /etc/nginx/sites-enabled
```

Create file local: `mkdir /var/www/vhocphp.com/public_html`

Copy all source to forder `public_html`

**Setting hosts file**

`sudo nano /etc/hosts`
add domain:

```
127.0.0.1      vhocphp.com
```

**2. Setup database;**

databse file: `/var/www/vhocphp.com/public_html/produc.sql`

config database is: `/var/www/vhocphp.com/public_html/config/config.php`

```
<?php

const PATH_ROOT =  __DIR__ . '/../';

const BAR_URL = __DIR__ . '/public/';

const URL = 'http://localhost/';

//Config Database

const DB_HOST = 'localhost';

const DB_NAME = 'product';

const DB_USER = 'root';

const DB_PASSWORD = 'vanit@1992';

const SHOW_ERRORS = true;

```

Thank you so much!
