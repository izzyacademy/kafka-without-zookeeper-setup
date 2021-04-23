#!/bin/bash

TARGET_USER=$1
TARGET_USER_HOME="/home/$TARGET_USER"


echo "" >> $TARGET_USER_HOME/.profile
echo "# JAVA and SCALA environment variables set by Ansible Installers" >> $TARGET_USER_HOME/.profile
echo "" >> $TARGET_USER_HOME/.profile

echo "JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64" >> $TARGET_USER_HOME/.profile
echo "export JAVA_HOME" >> $TARGET_USER_HOME/.profile
echo 'export PATH="$JAVA_HOME/bin:$PATH"' >> $TARGET_USER_HOME/.profile

echo "export KAFKA_HEAP_OPTS=\"-Xmx1G -Xms1G\"" >> $TARGET_USER_HOME/.profile

touch $TARGET_USER_HOME/.setup-java-home