docker-swift-format
====
[![dockerhub](https://img.shields.io/docker/automated/mtgto/swift-format.svg)](https://hub.docker.com/r/mtgto/swift-format/)

Unofficial docker image of [apple/swift-format](https://github.com/apple/swift-format).

## Usage

### Lint

```console
$ docker run --rm --workdir=/work --volume=$PWD:/work mtgto/swift-format:5.3 lint --recursive .
```

### Format

```console
$ docker run --rm --workdir=/work --volume=$PWD:/work mtgto/swift-format:5.3 format --in-place --recursive .
```
