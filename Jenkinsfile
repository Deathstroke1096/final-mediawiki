pipeline {
    agent any

    stages {
        stage('Create Stack') {
            steps {
                echo 'Creating Stack'
                sh 'sh createStack.sh'
            }
        }
        stage('Create Dynamic inventory') {
            steps {
                echo 'Creating Dynamic Inventory'
                sh 'python3 dynamicInventory.py'
            }
        }
        stage('Deploy mediawiki') {
            steps {
                echo 'Deploying mediawiki'
                sh 'ansible-playbook playbook.yaml -i inventory.txt -u root'
            }
        }        
    }
}