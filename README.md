# COCOAPODS
[![CircleCI](https://circleci.com/gh/MaSpeng/docker-hub-cocoapods/tree/master.svg?style=svg)](https://circleci.com/gh/MaSpeng/docker-hub-cocoapods/tree/master) [![Codacy Badge](https://api.codacy.com/project/badge/Grade/d73a415805a84e7db7f54287f6a5ee9c)](https://www.codacy.com/app/marco.spengler/docker-hub-cocoapods?utm_source=github.com&utm_medium=referral&utm_content=MaSpeng/docker-hub-cocoapods&utm_campaign=Badge_Grade)

This docker image includes the dependency manager [CocoaPods](https://cocoapods.org) for Swift and Objective-C Cocoa projects.

## Supported tags and respective Dockerfile links
* `1.5`, `latest` [(1.5/Dockerfile)](https://github.com/maspeng/docker-hub-cocoapods/blob/master/1.5/Dockerfile)

## How to use this image
To use the `CocoaPods` you can do the following.

```bash
$ docker run \
    --rm \
    --interactive \
    --tty \
    --workdir /app \
    --volume "$(pwd)":/app \
    maspeng/cocoapods
```

`CocoaPods` should not run as root so you might want to use your current user inside the container. To do this you can do the following.

```bash
$ docker run \
    --rm \
    --interactive \
    --tty \
    --user $(id -u):$(id -g) \
    --workdir /app \
    --volume /private/etc/passwd:/etc/passwd:ro \
    --volume /private/etc/group:/etc/group:ro \
    --volume "$(pwd)":/app \
    maspeng/cocoapods
```

You can mount the `CocoPods` home directory from your host inside the Container to share caching and configuration files:

```bash
$ docker run \
    --rm \
    --interactive \
    --tty \
    --user $(id -u):$(id -g) \
    --workdir /app \
    --volume /private/etc/passwd:/etc/passwd:ro \
    --volume /private/etc/group:/etc/group:ro \
    --volume "$(pwd)":/app \
    --volume ~/.cocoapods/repos:/.cocoapods/repos \
    --volume ~/.cocoapods/caches:/Library/Caches/CocoaPods \
    maspeng/cocoapods
```

## Quick reference
* **Where to get help:**
[the Docker Community Forums](https://forums.docker.com), [the Docker Community Slack](https://blog.docker.com/2016/11/introducing-docker-community-directory-docker-community-slack), or [Stack Overflow](https://stackoverflow.com/search?tab=newest&q=docker)

* **Where to file issues:**
https://github.com/maspeng/docker-hub-cocoapods/issues

* **Maintained by:**
[MaSpeng](https://github.com/MaSpeng)

* **Source of this description:**
[Repository README.md](https://github.com/maspeng/docker-hub-cocoapods/blob/master/README.md)
