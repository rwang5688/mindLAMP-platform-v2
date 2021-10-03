#!/bin/bash
export MINDLAMP_PLATFORM_V2_SRC=$MINDLAMP_PLATFORM_V2_HOME/src

# print environment variables
echo "MINDLAMP_PLATFORM_V2_SRC=$MINDLAMP_PLATFORM_V2_SRC"

# execute
echo "update-mindLAMP-platform-v2-comp=$1 in region=$2 profile=$3 project=$4"
aws cloudformation update-stack --stack-name mindLAMP-platform-v2-$1 \
--template-body file://$MINDLAMP_PLATFORM_V2_SRC/mindLAMP-platform-v2-$1.yaml \
--capabilities CAPABILITY_NAMED_IAM CAPABILITY_AUTO_EXPAND \
--parameters file://mindLAMP-platform-v2-$1-parameters.json \
--region $2 \
--profile $3 \
--tags Key="Project",Value="$4"
