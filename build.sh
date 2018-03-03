export AWS_PROFILE=jiangren
npm install
npm run build
aws s3 sync ./dist s3://jiangren-serve-static-files/my-cloud-app --grants read=uri=http://acs.amazonaws.com/groups/global/AllUsers --storage-class REDUCED_REDUNDANCY
aws cloudformation package --template-file serverless.yml --s3-bucket jiangren-artifacts --output-template-file cfn-template.yml
