echo -e "Creating Stack ....."
aws cloudformation create-stack --stack-name blue-green --template-body file://blueGreen.yaml --parameters file://param.json --region 'us-east-1'
echo -e "Stack will be created in few moments...\n"
aws cloudformation wait stack-create-complete --stack-name blue-green
echo -e "Stack Created Successfully !!! \n"
