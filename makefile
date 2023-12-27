.POSIX:
.SILENT:
.PHONY: \
	all \
	audit \
	bashate \
	docker-build \
	docker-publish \
	docker-scout \
	funk \
	lint \
	safety \
	shellcheck \
	shfmt \
	slick \
	test \
	unmake

all: lint test

audit: safety docker-scout

docker-build:
	docker build -t mcandre/valgrind-peak --load .

docker-publish:
	docker push mcandre/valgrind-peak

docker-scout:
	docker scout cves -e mcandre/valgrind-peak

lint: \
	bashate \
	funk \
	shellcheck \
	shfmt \
	slick \
	unmake

bashate:
	stank . | \
		xargs -n 1 bashate -i E006

funk:
	funk .

safety:
	safety check

shellcheck:
	stank -exInterp zsh . | \
		xargs -n 1 shellcheck

shfmt:
	stank -exInterp zsh . | \
		xargs -n 1 shfmt -w -i 4

slick:
	stank -sh . | \
		xargs -n 1 slick

test:
	docker run mcandre/valgrind-peak echo hello

unmake:
	unmake .
