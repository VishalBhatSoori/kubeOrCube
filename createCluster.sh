#!/bin/bash

echo"Stopping nginx running on port 80"
systemctl stop nginx

echo"Deleting the master and worker nodes running before shutting down"
kind delete cluster kind-my-cluster

echo"Creating the kind cluster named my-cluster with config.yml configurations"
kind create cluster --name=my-cluster --config=config.yml

