# hardened-nginx

Base on [Adrien Kuhn's work](https://github.com/AdrienKuhn/hardened-nginx)

Nginx hardened image based on `alpine` [nginx image](https://hub.docker.com/_/nginx).

## Main features

* Don't expose Nginx version
* Quad9 as default DNS resolver
* TLSv1.2 & TLSv1.3 only
* Disabled some weak ciphers
* Default self signed certificate is generated at start
* Some performance optimization
* Stream configuration
