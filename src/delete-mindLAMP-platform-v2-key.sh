#!/bin/bash
export MINDLAMP_PLATFORM_V2_SRC=$MINDLAMP_PLATFORM_V2_HOME/src

# print environment variables
echo "MINDLAMP_PLATFORM_V2_SRC=$MINDLAMP_PLATFORM_V2_SRC"

# execute
echo "delete-mindLAMP-platform-v2-key in region=$1"
aws cloudformation delete-stack --stack-name mindLAMP-platform-v2-key \
--region $1

