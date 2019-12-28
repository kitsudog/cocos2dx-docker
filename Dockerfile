FROM centos:7.0.1406
MAINTAINER for cocos2dx <kitsudo163@163.com>
COPY sdk /opt/sdk
RUN yum install -y ant-apache-regexp glibc.i686 libstdc++ libstdc++.i686 \
    && yum install -y zlib.i686 --setopt=protected_multilib=false \
    && yum clean all
ENV PATH=/opt/sdk/tools:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
