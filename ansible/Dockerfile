
FROM ubuntu:20.04

RUN apt-get update

RUN apt-get -y install aptitude ansible

RUN apt-get -y install vim

# Generates the RSA Public and Private Key for your Docker Container
# @TODO This step needs to be done outside of the container
# Then the output for the private and public key pairs needs to be kept outside version controll
# to allow for consistent private key contents for kraftdemo.ppk
# RUN cp kraftdemo.ppk /etc/ansible/authentication/ansible-admin
# RUN cd ~/ && ssh-keygen -b 2048 -t rsa -N '' -f ansible-admin -C "kraftdemo"

# Setup the directory for the Configuration files
RUN mkdir -p /ansible-playground/files

# Copy over all the Ansible playbooks
COPY playbooks/*.yml /ansible-playground

# Copy the configuration files used by the Ansible playbooks
COPY playbooks/files/ /ansible-playground/files/

RUN mkdir -p /etc/ansible/authentication/

COPY ansible.cfg /etc/ansible/ansible.cfg

COPY inventory.ini /etc/ansible/hosts

# RUN cp ~/ansible-admin /etc/ansible/authentication/ansible-admin
COPY kraftdemo.ppk /etc/ansible/authentication/ansible-admin

RUN chmod -R 0600 /etc/ansible/authentication/*

# Build and Tag the Docker image for the Ansible Client
# docker build . -t izzyacademy.com/ansible-clients:3.0

# Run the Docker Container
# docker run --name ansible_clients -it izzyacademy.com/ansible-clients:3.0

# Stop the Docker Container
# docker stop ansible_clients

# Delete the Docker Container
# docker rm ansible_clients
