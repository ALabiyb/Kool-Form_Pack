#!/bin/bash

########################
# Author: Munim DevOps
# Date: 2024-03-09
#
# Version: v1
#
# Description: This script will report the AWS resource usage
########################

set -x

# The resource which will be track
# AWS IAM
# AWS S3
# AWS EC2
# AWS Lambda

# List s3 buckets
echo "Listing S3 buckets..."
aws s3 ls

# List EC2 instances
echo "Listing EC2 instances..."
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# List IAM users
echo "Listing IAM users..."
aws iam list-users

# List Lambda functions
echo "Listing Lambda functions..."
aws lambda list-functions
