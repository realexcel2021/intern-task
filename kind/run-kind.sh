#!/bin/bash

# function to install kind on a linux machine (ubuntu)
function install_kind(){
    echo "installing kind..."
    curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.22.0/kind-linux-amd64
    chmod +x ./kind
    sudo mv ./kind /usr/local/bin/kind
}

function create_kind_cluster(){
    # attempt to create kind cluster
    kind create cluster --config kind-config.yml   
}

create_kind_cluster

# check if kind cluster creation is successful if not, install kind
if [[ $? -eq 0 ]]; then
    echo "kind cluster successfully created..."

    exit
else
    echo "kind is not installed on host machine..."
    echo "attempting to install kind..."
    install_kind

    # create kind cluster again
    echo "Atempt to create cluster again"
    create_kind_cluster
    exit
fi