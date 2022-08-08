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
                
    }
}