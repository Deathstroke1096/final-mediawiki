export AWS_ACCESS_KEY_ID=AKIAQC7RXWCSBAEJKS7H && \
export AWS_SECRET_ACCESS_KEY=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 &&\
export DEFAULT_REGION_NAME=us-east-1 &&\
export DEFAULT_OUTPUT_FORMAT=json
echo -e "Deleting the Stack... "
aws cloudformation delete-stack --stack-name blue-green
aws cloudformation wait stack-delete-complete --stack-name blue-green
echo "Stacks Deleted along with RDS and EC2 instances..." 