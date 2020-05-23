#base centos
FROM centos

MAINTAINER wanghang89@gmail.com

#add file
ADD jdk-8u251-linux-x64.tar.gz /opt/jdk/
ADD jdk.sh /tmp/

RUN mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup \
    && curl -o /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-8.repo \
    && yum update -y \
    && yum -y install openssh openssh-server openssh-clients net-tools passwd nano \
    && sh -c  '/bin/echo -e "\n\n\n" | ssh-keygen -t rsa' \
    && sh -c  '/bin/echo -e "123456789\n123456789\n" |  passwd root' \
    && ls -lht /opt/jdk  \
    && mv /tmp/jdk.sh /etc/profile.d/jdk.sh \
    && yum clean all \
    && rm -rf /tmp/*

CMD ["/usr/bin/sshd","-D"]
