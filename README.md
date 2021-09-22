docker-swift-format
====
[![Docker Hub](https://img.shields.io/docker/cloud/build/mtgto/swift-format)](https://hub.docker.com/r/mtgto/swift-format/)
![swift-format v5.2](https://img.shields.io/docker/v/mtgto/swift-format/5.2)
![swift-format v5.3](https://img.shields.io/docker/v/mtgto/swift-format/5.3)
![swift-format v5.4](https://img.shields.io/docker/v/mtgto/swift-format/5.4)

Unofficial docker image of [apple/swift-format](https://github.com/apple/swift-format).

## Usage

### Lint

```console
$ docker run --rm --workdir=/work --volume=$PWD:/work mtgto/swift-format:5.5 lint --recursive .
```

### Format

```console
$ docker run --rm --workdir=/work --volume=$PWD:/work mtgto/swift-format:5.5 format --in-place --recursive .
```
