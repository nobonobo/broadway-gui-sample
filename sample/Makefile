
build:
	docker run --rm -it -v $$PWD:$$PWD -w $$PWD localhost/gtk3builder go build .

run:
	docker exec -d broadway /app/sample/sample
	-xdg-open http://localhost:8080 2> /dev/null || open http://localhost:8080
