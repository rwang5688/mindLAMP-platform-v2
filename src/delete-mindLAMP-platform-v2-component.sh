#!/bin/bash
export MINDLAMP_PLATFORM_V2_SRC=$MINDLAMP_PLATFORM_V2_HOME/src

# print environment variables
echo "MINDLAMP_PLATFORM_V2_SRC=$MINDLAMP_PLATFORM_V2_SRC"

# execute
echo "delete-mindLAMP-platform-v2-component=$1 in region=$2 and profile=$3"
aws cloudformation delete-stack --stack-name mindLAMP-platform-v2-$1 \
--region $2
--profile $3
