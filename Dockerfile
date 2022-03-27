FROM --platform=$BUILDPLATFORM swift:5.6-focal

WORKDIR /swift-format
RUN env DEBIAN_FRONTEND=noninteractive apt-get update
RUN env DEBIAN_FRONTEND=noninteractive apt-get install wget
RUN wget -q -O - https://github.com/apple/swift-format/archive/0.50600.1.tar.gz | tar zxf - --strip-components 1
RUN swift build --configuration release

FROM --platform=$BUILDPLATFORM swift:5.6-focal-slim
COPY --from=0 /swift-format/.build/*/release/swift-format /usr/bin
ENTRYPOINT ["/usr/bin/swift-format"]
