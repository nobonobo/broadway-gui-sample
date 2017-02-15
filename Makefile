
build:
	docker build --rm -t localhost/gtk3builder builder
	$(MAKE) -C sample build

start:
	docker build --rm -t localhost/gtk3runner runner
	@-docker rm -f broadway 2> /dev/null
	docker run -d --name broadway\
		-p 8080:8080 \
		-v $$PWD:/app \
		localhost/gtk3runner

stop:
	docker rm -f broadway

run:
	$(MAKE) -C sample run
