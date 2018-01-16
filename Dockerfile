FROM nickistre/centos-lamp
MAINTAINER Richard <riwei@cj.com> 
WORKDIR /var/www/html

#RUN yum -y update
RUN yum -y install wget ; yum clean all
RUN yum -y install tar; yum clean all
# RUN yum -y update && \
#  yum -y install wget && \
#  yum -y install tar

RUN wget https://github.com/ethicalhack3r/DVWA/archive/v1.9.tar.gz -O- | tar xvz --strip-components=1
RUN service mysqld start && mysqladmin -uroot password p@ssw0rd && service mysqld stop
EXPOSE 80 
CMD ["supervisord", "-n"]