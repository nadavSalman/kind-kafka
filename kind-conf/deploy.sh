#!/bin/bash

kind create cluster --config kind-config.yml --name kafka-kind

# Load kafka image for faster boot up the cluster 
kind load --name kafka-kind  docker-image  doughgle/kafka-kraft:latest