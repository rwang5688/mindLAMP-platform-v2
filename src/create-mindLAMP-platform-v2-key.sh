#!/bin/bash
export MINDLAMP_PLATFORM_V2_SRC=$MINDLAMP_PLATFORM_V2_HOME/src

# print environment variables
echo "MINDLAMP_PLATFORM_V2_SRC=$MINDLAMP_PLATFORM_V2_SRC"

# execute
echo "create-mindLAMP-platform-key in region=$1"
aws cloudformation create-stack --stack-name mindLAMP-platform-v2-key \
--template-body file://$MINDLAMP_PLATFORM_V2_SRC/mindLAMP-platform-v2-key.yaml \
--capabilities CAPABILITY_NAMED_IAM \
--parameters file://mindLAMP-platform-v2-key-parameters.json \
--region $1

