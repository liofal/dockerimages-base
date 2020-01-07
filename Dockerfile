# Specify base image
FROM centos:latest as base

# Build dependencies in python
FROM base as builder

# Install every build dependencies in builder image
RUN yum install -y epel-release
RUN yum install -y mc
RUN yum install -y htop
RUN yum install -y ncdu

# Configure entrypoint with environment variables (only user is mandatory)
ENTRYPOINT /bin/bash