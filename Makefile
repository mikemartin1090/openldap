NAME = mikemartin1090/openldap
VERSION = latest

.PHONY: all build build-nocache

all: build compose

build:
	docker build -t $(NAME):$(VERSION) --rm .

build-nocache:
	docker build -t $(NAME):$(VERSION) --no-cache --rm .

compose:
	bash -c "trap 'docker-compose down' EXIT; docker-compose up"
