FROM amazonlinux:2.0.20200722.0

RUN yum install -y python38 && \
    yum install -y python3-pip && \
    yum install -y zip && \
    yum clean all

RUN python3.8 -m pip install --upgrade pip && \
    python3.8 -m pip install virtualenv