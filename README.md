docker-swift-format
====
[![Docker Hub](https://img.shields.io/docker/v/mtgto/swift-format)](https://hub.docker.com/r/mtgto/swift-format/)
[![GitHub Container Registry](https://img.shields.io/badge/ghcr.io-mtgto%2Fswift--format-blue)](https://github.com/mtgto/docker-swift-format/pkgs/container/swift-format)

Unofficial docker image of [apple/swift-format](https://github.com/apple/swift-format).

## Usage

You can use `mtgto/swift-format:6.4` (Docker Hub) or `ghcr.io/mtgto/swift-format:6.4` (GitHub Container Registry).

### Lint

```console
docker run \
  --rm \
  --workdir=/work \
  --volume=$PWD:/work \
  mtgto/swift-format:6.4 \
  lint --recursive .
```

### Format

```console
docker run \
  --rm \
  --workdir=/work \
  --volume=$PWD:/work \
  mtgto/swift-format:6.4 \
  format --in-place --recursive .
```

## Development

### Build & Push

```console
docker buildx build \
  --platform linux/arm64/v8,linux/amd64 \
  -t mtgto/swift-format:latest \
  -t mtgto/swift-format:6.4 \
  --push \
  .
```
