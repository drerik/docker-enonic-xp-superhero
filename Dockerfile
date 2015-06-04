# Base image
FROM enonic/xp-app:latest

MAINTAINER Erik Kaareng-sunde <esu@enonic.com>



RUN cp -rf /enonic-xp/home.org /enonic-xp/home

# automatic download superhero module from repo.enonic.net 
RUN wget -O /enonic-xp/home/deploy/superhero-0.1.0-SNAPSHOT.jar http://repo.enonic.com/public/com/enonic/theme/superhero/0.1.0-SNAPSHOT/superhero-0.1.0-SNAPSHOT.jar

# add vhost config
ADD com.enonic.xp.web.vhost.cfg /enonic-xp/home/config/com.enonic.xp.web.vhost.cfg


CMD /launcher.sh
