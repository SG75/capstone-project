
## Capstone Project: Implement a rolling deployment CI/CD pipeline.

![simple devops cicd pipeline](https://github.com/SG75/capstone-project/blob/master/images/cicd.jpg)

This project builds a simple DevOps Rolling deployment CI/ CD pipeline.

##### Tool used:
- ######  [git](https://git-scm.com/) :  Source Code Management [SCM](https://git-scm.com/)
- ######  [Jenkins](https://jenkins.io/) :  to build [CI / CD](https://codilime.com/what-is-ci-cd-all-you-need-to-know/)   [pipelines](https://jenkins.io/doc/book/pipeline/)
- ###### [Ansible](https://www.ansible.com/) : for configuration management and deployment
- ###### [docker](https://www.docker.com/) : [dockerhub](https://hub.docker.com/) to host application images
- ###### [kubernetes](https://kubernetes.io/) : to manage docker [containers](https://kubernetes.io/docs/concepts/containers/overview/) 

---


###### Continuous Integration:

Developers push their code to SCM, in this project git is used as SCM. Once the code is pushed to git the CI tool (Jenkins) which is configured to detect new commits will automatically build and test the artifacts.

###### Continuous Delivery:

The artifacts from the previous stage get deployed into the target environment like a VM, docker container or Kubernetes cluster.
in this project, Ansible is used as Deployment tool which pushes the application image to DockerHub. This image can be pulled by a docker container or Kubernetes cluster to deploy the application.

###### Continuous Deployment: 
ansible deploys the application on to a Kubernetes cluster, hosting the application on port 8080, which can be accessed via master node's IP address. This entire process happens automatically whenever a developer commits new code to the SCM.


***

###### Infrastructure Setup:

* The Infrastructure for the Project is done via multiple VMs running on an [VirtualBox](https://www.virtualbox.org/) Software.
* all VMs are installed with Ubuntu 18.04 LTS
* The colorGame HTML application is used to test the working of CI / CD pipeline on Docker as well as Kubernetes cluster. This application was a project done while doing the [The Web Developer Bootcamp](https://www.udemy.com/course/the-web-developer-bootcamp/) by *Colt Steele*

###### Docker VM :
 * Used to host docker container
 * dockeradmin user, member of the docker group
 * copy dockeradmin credentials to Jenkins-VM
 * ansadmin user, member of the docker
 * install tidy and hadolint for linting HTML and Dockerfile
 * The colorGame HTML application is hosted on a docker container on port **8080**
 
###### Jenkins VM : 
*  Jenkins running on https://<ip-address>:8080
*  Jenkins plugins :
            * publish over SSH
            * GitHUB 
            * Blue Ocean
###### Ansible VM :
* used to host Ansible playbook to create and deploy docker images and container
* docker must be installed to run docker commands
* ansadmin user, member of sudo and docker group
* enable ssh key based authentication to docker host using ansadmin, to copy docker images to the docker host
* copy ansadmin users public key on to k8s-VM's root account, needed for ansible-playbook to run deployment and service on k8s-VM

###### Kubernetes VM :

* [minikube](https://kubernetes.io/docs/setup/learning-environment/minikube/)
* The application is hosted inside the cluster on port **80** and to the external world on port **31000**
