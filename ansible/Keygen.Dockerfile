
FROM ubuntu:20.04

RUN apt-get update

RUN apt-get -y install aptitude ansible

RUN apt-get -y install vim

# Generates the RSA Public and Private Key for your Docker Container
# @TODO This step needs to be done outside of the container
# Then the output for the private and public key pairs needs to be kept outside version controll
# to allow for consistent private key contents for kraftdemo.ppk
# RUN cp kraftdemo.ppk /etc/ansible/authentication/ansible-admin


# Once you are in the container, run the following
# ssh-keygen -b 2048 -t rsa -N '' -f kraftdemo -C "kraftdemo"


# Build and Tag the Docker image for the Ansible Client
# docker build . -t izzyacademy.com/ssh-keygen:3.0 -f Keygen.Dockerfile

# Run the Docker Container
# On UNIX/Mac OS X
# docker run --name ssh-keygen -it izzyacademy.com/ssh-keygen:3.0 -v `pwd`/keys:/ansible-keys

# On PowerShell
# docker run --name ssh-keygen -it izzyacademy.com/ssh-keygen:3.0 -v $pwd/keys:/ansible-keys

# On Windows Command Prompt
# docker run --name ssh-keygen -it izzyacademy.com/ssh-keygen:3.0 -v %CD%/keys:/ansible-keys

# Stop the Docker Container
# docker stop ssh-keygen

# Delete the Docker Container
# docker rm ssh-keygen
