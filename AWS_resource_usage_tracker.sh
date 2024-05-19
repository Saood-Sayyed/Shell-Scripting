#!/bin/bash
#
########
#This script is used to track usage of AWS resources
#AWS S3
#AWS EC2
#AWS LAMBDA
#AWS IAM USER
#########

#CLI command to list S3 bucket
echo "list of s3 buckets"
aws s3 ls >> resourceuage.txt

#list ec2 instances
echo "list of ec2 instances"
#aws ec2 describe-instances
#aws ec2 describe_instances | jq '.Reservations[].Instances[].InstanceId'
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

#list of lambda functions
aws lambda list-functions

#list of IAM Users
aws iam list-users >> resourceuage.txt


