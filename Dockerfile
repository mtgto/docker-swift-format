FROM --platform=$BUILDPLATFORM swift:5.10-jammy

WORKDIR /swift-format
RUN env DEBIAN_FRONTEND=noninteractive apt-get update
RUN env DEBIAN_FRONTEND=noninteractive apt-get install wget
RUN wget --quiet --output-document=- https://github.com/apple/swift-format/archive/510.0.0.tar.gz | tar zxf - --strip-components 1
RUN swift build --product swift-format --configuration release -Xswiftc -static-stdlib

FROM --platform=$BUILDPLATFORM ubuntu:jammy
COPY --from=0 /swift-format/.build/*/release/swift-format /usr/bin
ENTRYPOINT ["/usr/bin/swift-format"]
