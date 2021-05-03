
FROM ubuntu:20.04

RUN apt-get update

RUN apt-get -y install aptitude ansible

RUN apt-get -y install vim

# Generates the RSA Public and Private Key for your Docker Container

# Build and Tag the Docker image for the Ansible Client
# docker build . -t izzyacademy.com/ssh-keygen:3.0 -f Keygen.Dockerfile

# Run the Docker Container and mount the keys relative directory as a volume

# On UNIX/Mac OS X
# docker run -v `pwd`/keys:/ansible-keys --name ssh-keygen -it izzyacademy.com/ssh-keygen:3.0 

# On Windows PowerShell
# docker run -v $pwd/keys:/ansible-keys --name ssh-keygen -it izzyacademy.com/ssh-keygen:3.0 

# On Windows Command Prompt
# docker run -v %CD%/keys:/ansible-keys --name ssh-keygen -it izzyacademy.com/ssh-keygen:3.0 

# Once you are in the container, run the following to generate the RSA key pairs
# ssh-keygen -b 2048 -t rsa -N '' -f kraftdemo -C "kraftdemo"

# Stop the Docker Container
# docker stop ssh-keygen

# Delete the Docker Container
# docker rm ssh-keygen
