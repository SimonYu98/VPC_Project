#!/bin/bash
# Script to destroy Terraform configuration
terraform destroy -var-file=env/dev.tfvars
