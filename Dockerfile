FROM amazonlinux:2

ARG packer_template=packer-ami-template.json

# Install Python and Ansible
ENV ANSIBLE_VERSION=2.7.10
LABEL ansible_version=${ANSIBLE_VERSION}

RUN yum -y install python3

RUN pip3 install -q ansible==${ANSIBLE_VERSION} 

#Install Packer
ENV PACKER_VERSION=1.3.5
LABEL packer_version=${PACKER_VERSION}

RUN yum -y install openssh git wget openssl unzip

ADD https://releases.hashicorp.com/packer/${PACKER_VERSION}/packer_${PACKER_VERSION}_linux_amd64.zip ./
RUN unzip packer_${PACKER_VERSION}_linux_amd64.zip -d /usr/local/bin

RUN rm -rf packer_${PACKER_VERSION}_linux_amd64.zip

COPY $packer_template /usr/local/share/packer/packer-template.json

VOLUME /opt
WORKDIR /opt

