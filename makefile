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
	unmake \
	yamllint

all: lint test

audit: safety docker-scout

bashate:
	stank -exInterp zsh . | \
		grep -v .sample | \
		xargs -n 1 bashate -i E006

docker-build:
	docker build -t mcandre/valgrind-peak --load .

docker-publish:
	docker push mcandre/valgrind-peak

docker-scout:
	docker scout cves -e mcandre/valgrind-peak

funk:
	funk .

lint: \
	bashate \
	funk \
	shellcheck \
	shfmt \
	slick \
	unmake \
	yamllint

safety:
	safety check

shellcheck:
	stank -exInterp zsh . | \
		grep -v .sample | \
		xargs -n 1 shellcheck

shfmt:
	stank -exInterp zsh . | \
		grep -v .sample | \
		xargs -n 1 shfmt -w -i 4

slick:
	stank -sh . | \
		grep -v .sample | \
		xargs -n 1 slick

test:
	docker run mcandre/valgrind-peak echo hello

unmake:
	unmake .
	unmake -n .

yamllint:
	yamllint -s .yamllint .
