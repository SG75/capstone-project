##### Folder and files
1) colorgame : The colorGame Application folder
2) k8s : Kubernetes cluster related files
* Dockerfile : Dockerfile for creating nginx image and copying colorGame app files used with k8s cluster
* cg-deploy.yml : configuration file in YAML for resource deployment on k8s cluster
* cg-service.yml : configuration filr in YAML for creating service on deployment 
* create-cg-image.yml : Ansible playbook for creating docker image and pushing it to dockerHUB
* hosts : hosts file used by ansible-playbook
* k8s-cg-deploy.yml : Ansible playbook used with Jenkins for resource deployment on k8s cluster
* k8s-cg-service.yml : Ansible playbook used with Jenkins for creating Service on deployment
3) screenshots : screenshots of CI/CD deployments
4) Dockerfile : Dockerfile for creating nginx image and copying colorGame app files
5) Jenkinsfile : Jenkinsfile for creating a pipeline
6) Makefile : for docker container and image cleanup
7) README.md: Project setup and Description
8) create-cg-image.yml : Ansible playbook for creating a docker image and pushing the image to dockerHUB
9) create-cg-project.yml : Ansible playbook for creating docker container for hosting colorGame app
10) hosts : hosts file used by Ansible playbook

11) Files.md : the file which you are reading
