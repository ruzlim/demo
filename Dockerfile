FROM centos:7

# MAINTAINER linuxtechlab
# LABEL Remarks="This is a dockerfile example for Centos system"

RUN yum -y update && \
    yum -y install wget httpd unzip xauth openssh-server openssh-clients NetworkManager net-tools iproute telnet firewalld cronie && \
    yum clean all
    # java-1.8.0-openjdk-devel

# COPY data/httpd.conf /etc/httpd/conf/httpd.conf
# ADD data/html.tar.gz /var/www/html/

ENV HOME /root
# ENV JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk-1.8.0.342.b07-1.el7_9.x86_64/jre
# ENV PATH $PATH:$JAVA_HOME/bin

WORKDIR /root

# Download test
# RUN wget -c https://sourceforge.net/projects/pentaho/files/Pentaho-9.3/client-tools/psw-ce-9.3.0.0-428.zip.sum/download && rm download

# Download Pentaho
# RUN wget -c https://sourceforge.net/projects/pentaho/files/Pentaho-9.3/client-tools/pdi-ce-9.3.0.0-428.zip && \
#    unzip -d ./Pentaho pdi-ce-9.3.0.0-428.zip && \
#    rm pdi-ce-9.3.0.0-428.zip

# COPY mytemp .

EXPOSE 80

# ENTRYPOINT ["ping"]
# CMD ["google.com"]

VOLUME ["/sys/fs/cgroup"]
CMD ["/usr/sbin/init"]