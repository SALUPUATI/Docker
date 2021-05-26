From owncloud/server:latest

# -----------------------------------------------------------------------------
# Configuration du proxy pour fonctionnement en interne à l'UCBL
# -----------------------------------------------------------------------------
## RUN echo "\
## export http_proxy=http://proxy.univ-lyon1.fr:3128;\
## export ftp_proxy=http://proxy.univ-lyon1.fr:3128;\
## export https_proxy=http://proxy.univ-lyon1.fr:3128;\
## export all_proxy=http://proxy.univ-lyon1.fr:3128;\
## export HTTP_PROXY=http://proxy.univ-lyon1.fr:3128;\
## export FTP_PROXY=http://proxy.univ-lyon1.fr:3128;\
## export HTTPS_PROXY=http://proxy.univ-lyon1.fr:3128;\
## export ALL_PROXY=http://proxy.univ-lyon1.fr:3128;\
## " >> /etc/bash.bashrc

## RUN echo 'Acquire::http::Proxy "http://proxy.univ-lyon1.fr:3128";' > /etc/apt/apt.conf.d/99proxy

# changement des repos poiur que ce soit l'in2p3
# RUN sed -i "{s#^\(deb.*\) http://[^/]*/ubuntu/#\\1 http://mirror.in2p3.fr/linux/ubuntu/#}" /etc/apt/sources.list

# -----------------------------------------------------------------------------------
# exemple d'installation d'un utilitaire
# -----------------------------------------------------------------------------------

RUN  apt-get update && apt-get -y install net-tools && apt-get clean

## ENV OWNCLOUD_PROXY=http://proxy.univ-lyon1.fr:3128

# Mise en place d'un script de post installation
COPY pinst.sh /etc/post_install.d/
RUN chmod a+x /etc/post_install.d/pinst.sh


