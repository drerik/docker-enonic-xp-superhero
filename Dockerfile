# Base image
FROM enonic/xp-app:5.2.0

MAINTAINER Erik Kaareng-sunde <esu@enonic.com>



RUN cp -rf /enonic-xp/home.org /enonic-xp/home

# automatic download superhero module from repo.enonic.net 
RUN wget -O /enonic-xp/home/deploy/superhero-0.1.1-SNAPSHOT.jar http://repo.enonic.com/public/com/enonic/theme/superhero/0.1.1-SNAPSHOT/superhero-0.1.1-SNAPSHOT.jar

# add vhost config
ADD com.enonic.xp.web.vhost.cfg /enonic-xp/home/config/com.enonic.xp.web.vhost.cfg

VOLUME /enonic-xp/home

