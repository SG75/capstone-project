#Simple Makefile  to Build,Push ,Deploy and cleanup the Docker apps.
.PHONY: build push deploy  cleanup rmi stop_single_container rm_single_container rmi_docker_hub

DOCKER = docker
AAP_NAME := simple-cg-image:v1
RELEASE_TAG := v1
DOCKER_HUB_REPO := "SG75"
USER_NAME = "gururaj.sudhindra@gmail.com"
#PASSWORD = ""



cleanup:
	${DOCKER} stop $(shell ${DOCKER} ps -q)
	${DOCKER} rm $(shell ${DOCKER} ps -a -q)


rmi:
	${DOCKER} rmi -f $(shell docker images -a -q)
	
rmi_docker_hub:
	curl --raw -L -X DELETE -u "${USER_NAME}" -H "Accept: application/json" -H "Content-Type: application/json"  --post3 https://hub.docker.com/v1/repositories/${DOCKER_HUB_REPO}/${AAP_NAME}/$(RELEASE_TAG)


