#base centos
FROM centos

MAINTAINER wanghang89@gmail.com

#add file
ADD jdk-8u251-linux-x64.tar.gz /opt/hadoop
ADD hadoop.sh /etc/profile.d/hadoop.sh

RUN mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup \
    && curl -o /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-8.repo \
    && yum update -y \
    && yum -y install openssh openssh-server openssh-clients net-tools passwd nano \
    && sh -c  '/bin/echo -e "123456789\n123456789\n" |  passwd root' \
    && mkdir /opt/hadoop/hadoop \
    && mkdir /opt/hadoop/hive-0.11.0 \
    && mkdir /opt/hadoop/hbase \
    && mkdir /opt/hadoop/scala \
    && mkdir /opt/hadoop/spark \
    && yum clean all \
    && rm -rf /tmp/*

CMD ["/usr/bin/sshd","-D"]
