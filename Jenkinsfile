pipeline {
    agent any

    parameters{
        booleanParam(name: 'Create_Stack',
                    defaultValue: false,
                    description:'Uncheck this box to exclude this step from being run')
        
        booleanParam(name: 'Create_Dynamic_inventory',
                    defaultValue: false,
                    description:'Uncheck this box to exclude this step from being run')

        booleanParam(name: 'Deploy_mediawiki',
                    defaultValue: false,
                    description:'Uncheck this box to exclude this step from being run')
        
        booleanParam(name: 'Delete_Stack',
                    defaultValue: false,
                    description:'Uncheck this box to exclude this step from being run')


    }

    stages {
        stage('Create Stack') {

            when {
                expression { params.Create_Stack == true}
            }    

            steps {
                echo 'Creating Stack'
                sh 'sh createStack.sh'
            }
        }
        stage('Create Dynamic inventory') {
            
            when {
                expression { params.Create_Dynamic_inventory == true}
            } 

            steps {
                echo 'Creating Dynamic Inventory'
                sh 'python3 dynamicInventory.py'
            }
        }
        stage('Deploy mediawiki') {

            when {
                expression { params.Deploy_mediawiki == true}
            } 

            steps {
                echo 'Deploying mediawiki'
                sh 'ansible-playbook playbook.yaml -i inventory.txt'
            }
        }

        stage('Delete Stack') {

            when {
                expression { params.Delete_Stack == true}
            } 

            steps {
                echo 'Creating Stack'
                sh 'sh deleteStack.sh'
            }
        }        
    }
}