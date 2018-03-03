export AWS_PROFILE=jiangren
# template=$(<cfn-template.yml)
# aws cloudformation create-stack --stack-name my-cloud-app --template-body "$template" --region ap-southeast-2

aws cloudformation deploy --template cfn-template.yml --stack-name my-cloud-app --region ap-southeast-2 --capabilities CAPABILITY_IAM
