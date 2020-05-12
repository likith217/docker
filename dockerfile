from centos
maintainer likith.ht@gmail.com
arg web=httpd

run yum install $web -y
run mkdir /webapps /webapps/a1 /webapps/a2
copy start.sh /webapps
copy a1 /webapps/a1
copy a2 /webapps/a2
env x=web1
expose 80
entrypoint ["/bin/bash","/webapps/start.sh"]
