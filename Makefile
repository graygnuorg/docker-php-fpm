PROJECT=php-fpm
VERSION=7.4

all: .$(PROJECT)-$(VERSION).ts	

.$(PROJECT)-%.ts: Dockerfile
	docker build -t graygnuorg/$(PROJECT):$* $(CACHE) \
               --build-arg PHP_VERSION=$(VERSION) \
               .
	touch $@
