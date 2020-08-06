NAME = cocoapods
VERSION = 1.9

.PHONY: build
build:
	@echo "Build ${VERSION}"

	@docker run \
		--rm \
		--volume "$(shell pwd)":/app \
		finalgene/hadolint \
		Dockerfile

	@docker build \
		--no-cache \
		--tag maspeng/${NAME}:${VERSION}-dev \
		./

	@docker images maspeng/${NAME}:${VERSION}-dev

.PHONY: clean
clean:
	-@docker rmi \
		--force \
		$(shell docker images maspeng/${NAME}:*-dev -q)
