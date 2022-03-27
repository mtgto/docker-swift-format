docker-swift-format
====
[![Docker Hub](https://img.shields.io/docker/cloud/build/mtgto/swift-format)](https://hub.docker.com/r/mtgto/swift-format/)
![swift-format v5.6](https://img.shields.io/docker/v/mtgto/swift-format/5.6)
![swift-format v5.5](https://img.shields.io/docker/v/mtgto/swift-format/5.5)
![swift-format v5.4](https://img.shields.io/docker/v/mtgto/swift-format/5.4)
![swift-format v5.3](https://img.shields.io/docker/v/mtgto/swift-format/5.3)
![swift-format v5.2](https://img.shields.io/docker/v/mtgto/swift-format/5.2)

Unofficial docker image of [apple/swift-format](https://github.com/apple/swift-format).

## Usage

### Lint

```console
$ docker run --rm --workdir=/work --volume=$PWD:/work mtgto/swift-format:5.6 lint --recursive .
```

### Format

```console
$ docker run --rm --workdir=/work --volume=$PWD:/work mtgto/swift-format:5.6 format --in-place --recursive .
```

## Development

### Build

```console
docker buildx build --platform linux/arm64/v8 --build-arg BUILD_DIR=aarch64-unknown-linux-gnu -t mtgto/swift-format:latest .
docker buildx build --platform linux/amd64 --build-arg BUILD_DIR=x86_64-unknown-linux-gnu -t mtgto/swift-format:latest .
```
