#Simple Makefile  to Build,Push ,Deploy and cleanup the Docker apps.
.PHONY: build push deploy  cleanup rmi stop_single_container rm_single_container rmi_docker_hub

DOCKER = docker



cleanup:
	${DOCKER} stop $(shell ${DOCKER} ps -q)
	${DOCKER} rm $(shell ${DOCKER} ps -a -q)


rmi:
	${DOCKER} rmi -f $(shell docker images -a -q)

