pipeline {
    agent any

    stages {
        stage('Create Stack') {
            steps {
                aws cloudformation create-stack --stack-name blue-green --template-body file://blueGreen.yaml --parameters file://param.json
echo -e "Stack will be created in few moments...\n"
aws cloudformation wait stack-create-complete --stack-name blue-green

echo -e "Stack Created Successfully !!! \n"
            }
        }
        stage('Delete Stack') {
            steps {
                echo -e "Deleting the Stack... "

aws cloudformation delete-stack --stack-name blue-green

aws cloudformation wait stack-delete-complete --stack-name blue-green

echo "Stacks Deleted along with RDS and EC2 instances..." 
            }
        }

        
    }
}