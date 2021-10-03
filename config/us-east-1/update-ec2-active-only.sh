#!/bin/bash
cp mindLAMP-platform-v2-ec2-parameters-active-only.json \
mindLAMP-platform-v2-ec2-parameters.json

update-mindLAMP-platform-v2-comp.sh ec2 us-east-1 default mindLAMP-platform-v2
