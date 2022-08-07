pipeline {
    agent any

    stages {
        stage('Create Stack') {
            steps {
                echo 'Creating Stack'
                aws cloudformation create-stack \
                --stack-name myteststack \
                --template-body file:/blueGreen.yaml \
                --parameters file:/param.json
            }
        }
        

        
    }
}