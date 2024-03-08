docker-swift-format
====
[![Docker Hub](https://img.shields.io/docker/v/mtgto/swift-format)](https://hub.docker.com/r/mtgto/swift-format/)

Unofficial docker image of [apple/swift-format](https://github.com/apple/swift-format).

## Usage

### Lint

```console
$ docker run --rm --workdir=/work --volume=$PWD:/work mtgto/swift-format:5.10 lint --recursive .
```

### Format

```console
$ docker run --rm --workdir=/work --volume=$PWD:/work mtgto/swift-format:5.10 format --in-place --recursive .
```

## Development

### Build & Push

```console
docker buildx build --platform linux/arm64/v8,linux/amd64 -t mtgto/swift-format:latest -t mtgto/swift-format:5.10 --push .
```
