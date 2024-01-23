#!/bin/bash
# shellcheck disable=SC2002
# AWS
TF_VAR_aws_region=us-east-1

export TF_VAR_aws_region

# OCI
TF_VAR_ssh_public_key=$(cat ~/.ssh/id_rsa.pub)
TF_VAR_ssh_private_key=$(cat ~/.ssh/id_rsa)

TF_VAR_user_ocid=$(cat ~/.oci/config | grep user= | cut -d= -f2)
TF_VAR_fingerprint=$(cat ~/.oci/config | grep fingerprint= | cut -d= -f2)
TF_VAR_tenancy_ocid=$(cat ~/.oci/config | grep tenancy= | cut -d= -f2)
TF_VAR_compartment_id=$(cat ~/.oci/oci_cli_rc | grep compartment-id= | cut -d= -f2)
TF_VAR_private_key_path=$(cat ~/.oci/config | grep key_file= | cut -d= -f2)
TF_VAR_oci_profile=$(cat ~/.oci/config | grep default_profile | cut -d= -f2)
TF_VAR_oci_region=$(cat ~/.oci/config | grep region= | cut -d= -f2)
OCI_REGION=$(cat ~/.oci/config | grep region= | cut -d= -f2)
OCI_CLI_AUTH=security_token
oci_auth_cmd="oci session authenticate --region ${TF_VAR_oci_region} --profile-name ${TF_VAR_oci_profile}"

export TF_VAR_ssh_public_key
export TF_VAR_ssh_private_key
export TF_VAR_user_ocid
export TF_VAR_fingerprint
export TF_VAR_tenancy_ocid
export TF_VAR_compartment_id
export TF_VAR_private_key_path
export TF_VAR_oci_profile
export TF_VAR_oci_region
export OCI_REGION
export OCI_CLI_AUTH

export oci_auth_cmd