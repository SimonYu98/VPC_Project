#!/bin/bash
# Script to deploy Terraform configuration
terraform apply -var-file=env/dev.tfvars
