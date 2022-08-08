echo -e "Deleting the Stack... "
aws cloudformation delete-stack --stack-name blue-green --region us-east-1
aws cloudformation wait stack-delete-complete --stack-name blue-green
echo "Stacks Deleted along with RDS and EC2 instances..." 