FROM --platform=$BUILDPLATFORM swift:6.0-noble

ARG VERSION=600.0.0
WORKDIR /swift-format
ADD https://github.com/swiftlang/swift-format/archive/${VERSION}.tar.gz /swift-format/
RUN tar zxf ${VERSION}.tar.gz --strip-components 1
RUN swift build --product swift-format --configuration release --static-swift-stdlib

FROM --platform=$BUILDPLATFORM ubuntu:noble
COPY --from=0 /swift-format/.build/release/swift-format /usr/bin
COPY --from=0 /swift-format/LICENSE.txt /etc/LICENSE.txt
ENTRYPOINT ["/usr/bin/swift-format"]
