FROM centos:7
RUN mkdir /root/puppet
WORKDIR /root/puppet
RUN rpm -Uvh https://yum.puppetlabs.com/puppet5/puppet5-release-el-7.noarch.rpm && \
    yum update -y && \
    yum install -y puppet-agent
ENV PATH=/opt/puppetlabs/server/bin:/opt/puppetlabs/puppet/bin:/opt/puppetlabs/bin:$PATH
CMD ["/bin/sh"]

