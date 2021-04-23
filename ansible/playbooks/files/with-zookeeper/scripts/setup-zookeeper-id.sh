#!/bin/bash


ZOOKEEPER_ID=$1
ZOOKEEPER_HOME="/var/lib/zookeeper"
ZOOKEEPER_ID_FILE="$ZOOKEEPER_HOME/myid"

# These commands in here below need to be idempotent to avoid side-effects of repeated execution
echo "Creating Log directories for Zookeeper metadata"
mkdir -p $ZOOKEEPER_HOME

echo "$ZOOKEEPER_ID" > $ZOOKEEPER_ID_FILE

chown -R kafka:oss $ZOOKEEPER_ID_FILE

chmod -R 0644 $ZOOKEEPER_ID_FILE