#!/bin/bash
cp mindLAMP-platform-v2-ec2-parameters-active-passive-100.json \
mindLAMP-platform-v2-ec2-parameters.json

create-mindLAMP-platform-v2-component.sh ec2 us-east-1 default
