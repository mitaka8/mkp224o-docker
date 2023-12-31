.PHONY: image
image:
	docker buildx build -t mitaka8/mkp224o:latest --load .
push:
	docker push mitaka8/mkp224o:latest
