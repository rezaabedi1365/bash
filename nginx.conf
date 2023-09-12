user www-data;
worker_procecces auto;
pid /run/nginx.pid;

events {
}

http {
      server {
      #Basic Setting

      #SSL Setting

      #Logging Setting

      #gzip Setting

      #Virtual Host Config
}
}
#--------------------------------------------------------------------
user www-data;
worker_procecces auto;
pid /run/nginx.pid;

events {
      worker_connections 768;
}

http {
      server {
              listen 127.0.0.1:80;
              root /var/www/html

              sendfile on;
              tcp_nopush on;
              types_hash_max_size 2048;

         #Logging Setting
              access_log /var/log/nginx/access.log;
              error_log /var/log/nginx/error.log;

              ssl_protocols TLSv1 TLSv1.1 TLSv1.2 TLSv1.3; # Dropping SSLv3, ref: POODLE
              ssl_prefer_server_ciphers on;

          #Virtual Host Config
              include /etc/nginx/conf.d/*.conf;
              include /etc/nginx/sites-enabled/*;

}
}
