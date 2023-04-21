docker-swift-format
====
[![Docker Hub](https://img.shields.io/docker/v/mtgto/swift-format/latest)](https://hub.docker.com/r/mtgto/swift-format/)
![swift-format v5.8](https://img.shields.io/docker/v/mtgto/swift-format/5.8)
![swift-format v5.7](https://img.shields.io/docker/v/mtgto/swift-format/5.7)
![swift-format v5.6](https://img.shields.io/docker/v/mtgto/swift-format/5.6)
![swift-format v5.5](https://img.shields.io/docker/v/mtgto/swift-format/5.5)
![swift-format v5.4](https://img.shields.io/docker/v/mtgto/swift-format/5.4)
![swift-format v5.3](https://img.shields.io/docker/v/mtgto/swift-format/5.3)
![swift-format v5.2](https://img.shields.io/docker/v/mtgto/swift-format/5.2)

Unofficial docker image of [apple/swift-format](https://github.com/apple/swift-format).

## Usage

### Lint

```console
$ docker run --rm --workdir=/work --volume=$PWD:/work mtgto/swift-format:5.8 lint --recursive .
```

### Format

```console
$ docker run --rm --workdir=/work --volume=$PWD:/work mtgto/swift-format:5.8 format --in-place --recursive .
```

## Development

### Build & Push

```console
docker buildx build --platform linux/arm64/v8,linux/amd64 -t mtgto/swift-format:latest -t mtgto/swift-format:5.8 --push .
```
