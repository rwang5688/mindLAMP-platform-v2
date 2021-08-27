#!/bin/bash
export MINDLAMP_PLATFORM_V2_SRC=$MINDLAMP_PLATFORM_V2_HOME/src

# print environment variables
echo "MINDLAMP_PLATFORM_V2_SRC=$MINDLAMP_PLATFORM_V2_SRC"

# execute
echo "validate-mindLAMP-platform-v2-vpc.sh"
aws cloudformation validate-template \
--template-body file://$MINDLAMP_PLATFORM_V2_SRC/mindLAMP-platform-v2-key.yaml

