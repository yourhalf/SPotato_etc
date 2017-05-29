#!/bin/bash -eu

##################################################
# This script pulls docker images from hyperledger
# docker hub repository and Tag it as
# hyperledger/fabric-<image> <fabric tag>
##################################################

#Set ARCH variable i.e ppc64le,s390x,x86_64,i386
ARCH=`uname -m`


: ${FABRIC_TAG:="$ARCH-1.0.0-alpha2"}

echo "===> Pulling Alpha2 Image"

docker pull bctc/lego-ca:$FABRIC_TAG
docker pull bctc/lego-peer:$FABRIC_TAG
docker pull bctc/lego-orderer:$FABRIC_TAG
docker pull bctc/lego-couchdb:$FABRIC_TAG
docker pull bctc/lego-kafka:$FABRIC_TAG
docker pull bctc/lego-zookeeper:$FABRIC_TAG
docker pull bctc/lego-ccenv:$FABRIC_TAG
docker pull bctc/lego-javaenv:$FABRIC_TAG

docker tag bctc/lego-ca:${FABRIC_TAG} hyperledger/fabric-ca:${FABRIC_TAG}
docker tag bctc/lego-peer:${FABRIC_TAG} hyperledger/fabric-peer:${FABRIC_TAG}
docker tag bctc/lego-orderer:${FABRIC_TAG} hyperledger/fabric-orderer:${FABRIC_TAG}
docker tag bctc/lego-couchdb:${FABRIC_TAG} hyperledger/fabric-couchdb:${FABRIC_TAG}
docker tag bctc/lego-kafka:${FABRIC_TAG} hyperledger/fabric-kafka:${FABRIC_TAG}
docker tag bctc/lego-zookeeper:${FABRIC_TAG} hyperledger/fabric-zookeeper:${FABRIC_TAG}
docker tag bctc/lego-ccenv:${FABRIC_TAG} hyperledger/fabric-ccenv:${FABRIC_TAG}
docker tag bctc/lego-javaenv:${FABRIC_TAG} hyperledger/fabric-javaenv:${FABRIC_TAG}

docker tag hyperledger/fabric-ca:${FABRIC_TAG} hyperledger/fabric-ca:latest
docker tag hyperledger/fabric-peer:${FABRIC_TAG} hyperledger/fabric-peer:latest
docker tag hyperledger/fabric-orderer:${FABRIC_TAG} hyperledger/fabric-orderer:latest
docker tag hyperledger/fabric-couchdb:${FABRIC_TAG} hyperledger/fabric-couchdb:latest
docker tag hyperledger/fabric-kafka:${FABRIC_TAG} hyperledger/fabric-kafka:latest
docker tag hyperledger/fabric-zookeeper:${FABRIC_TAG} hyperledger/fabric-zookeeper:latest
docker tag hyperledger/fabric-ccenv:${FABRIC_TAG} hyperledger/fabric-ccenv:latest
docker tag hyperledger/fabric-javaenv:${FABRIC_TAG} hyperledger/fabric-javaenv:latest
