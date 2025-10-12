FROM httpd:2.4.65

ARG BASEDIR=/opt/znuny
ARG BASEDIR_SCRIPTS=${BASEDIR}/scripts
ARG BASEDIR_CRON=${BASEDIR}/var/cron
ARG BASEDIR_BIN=${BASEDIR}/bin
ARG BASEDIR_KERNEL=${BASEDIR}/Kernel

EXPOSE 80

COPY ../znuny ${BASEDIR}
WORKDIR ${BASEDIR}

RUN apt update && \
    apt -y install cron libapache2-mod-perl2 libdbd-mysql-perl libtimedate-perl                      \
    libnet-ldap-perl libio-socket-ssl-perl libpdf-api2-perl libyaml-libyaml-perl                \
    libsoap-lite-perl libtext-csv-xs-perl libjson-xs-perl libapache-dbi-perl                    \
    libxml-libxml-perl libxml-libxslt-perl libyaml-perl libcrypt-eksblowfish-perl               \
    libencode-hanextra-perl libtemplate-perl libdatetime-perl libmoo-perl bash-completion       \
    libjavascript-minifier-xs-perl libcss-minifier-xs-perl libauthen-ntlm-perl                  \
    libhash-merge-perl libical-parser-perl libdata-uuid-perl libnet-dns-perl libcgi-pm-perl     \
    libspreadsheet-xlsx-perl libauthen-sasl-perl libmail-imapclient-perl libarchive-zip-perl    \
    && rm -rf /var/lib/apt/lists/*

COPY ../config/Config.pm Kernel/Config.pm 
COPY ../config/znuny_daemon.conf ${BASEDIR_CRON}/znuny_daemon

RUN useradd -d ${BASEDIR} -g www-data -s /bin/bash znuny     
RUN chown -R znuny:www-data ${BASEDIR} /usr/local/apache2   
RUN crontab ${BASEDIR_CRON}/znuny_daemon 

COPY ../config/httpd.conf /usr/local/apache2/conf/httpd.conf
COPY ../config/znuny.conf /usr/local/apache2/conf/extra/znuny.conf

CMD ["httpd-foreground"]