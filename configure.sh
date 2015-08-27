#!/bin/bash
roleProfile=$(curl -s http://169.254.169.254/latest/meta-data/iam/info | grep -Eo 'instance-profile/([a-zA-Z.-]+)' | sed  's#instance-profile/##')
credentials=$(curl -s http://169.254.169.254/latest/meta-data/iam/security-credentials/$roleProfile/)

ACCESS_KEY=$(echo "$credentials" | jq .AccessKeyId | sed 's/"//g')
SECRET_KEY=$(echo "$credentials" | jq .SecretAccessKey | sed 's/"//g')
TOKEN=$(echo "$credentials" | jq .Token | sed 's/"//g')

EC2_REGION=$(curl -s http://169.254.169.254/latest/dynamic/instance-identity/document | jq .region | sed 's/"//g')

echo -e "[default]\noutput = json\nregion = $EC2_REGION\naws_access_key_id = $ACCESS_KEY\naws_secret_access_key = $SECRET_KEY\naws_session_token = $TOKEN" > /root/.aws/config
