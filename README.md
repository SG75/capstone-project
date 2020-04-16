
## Capstone Project: Implement a rolling deployment CI/CD pipeline.

![simple devops cicd pipeline](https://github.com/SG75/Udacity-Cloud-DevOps-Engineer/blob/master/Capstone-Project/images/cicd.jpg)

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

