# docker-wordpress

Dockerfile to create and run your own wordpress process inside a debian docker container.

## docker volumes

/var/www/html

Contains: Wordpress files

## docker build
```shell
docker build -t YOURNAME/YOURCONTAINER:YOURTAG .
```
## docker run
```shell
docker run --name wordpress \
    -v volume-www:/var/www/html \
    -d 11notes/wordpress:5.0.0-php7.2-apache
```

## difference between wordpress:5.0.0-php7.2-apache

ports & uid/gid:

```shell
    replaced port 80 with 8080 and 443 with 8443 (non-root)
    uid:gid both set to static 1000:1000
```

## build with

* [wordpress](https://github.com/docker-library/wordpress/blob/b3739870faafe1886544ddda7d2f2a88882eeb31/php7.2/apache/Dockerfile) - official container image

## tips

* [alpine-docker-netshare](https://github.com/11notes/alpine-docker-netshare) - Examples to store persistent storage on NFS/CIFS/etc