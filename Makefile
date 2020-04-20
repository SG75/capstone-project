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
	${DOCKER} rmi -f $(shell ${DOCKER} images -a -q)
	


