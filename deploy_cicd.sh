export AWS_PROFILE=jiangren
template=$(<cicd.yml)
githubtoken=$(<.githubtoken)
aws cloudformation update-stack --template-body "$template" --stack-name my-cloud-app-cicd --parameters "[{\"ParameterKey\":\"OAuthToken\",\"ParameterValue\":\"$githubtoken\"}]" --region ap-southeast-2 --capabilities CAPABILITY_IAM
