pipeline {
    agent any

    stages {
        stage('Create Stack') {
            steps {
                echo 'Creating Stack'
                aws cloudformation create-stack \
                --stack-name myteststack \
                --template-body file:{name:'blueGreen.yaml'} \
                --parameters file:{name:'param.json'}
            }
        }
        

        
    }
}