.SILENT:
include vendor/sigwin/infra/resources/Common/default.mk

vendor/sigwin/infra/resources/Common/default.mk:
	docker run --rm --user '$(shell id -u):$(shell id -g)' --volume '$(shell pwd):/app' --workdir /app composer:2 require sigwin/infra
	rm -f composer.*
