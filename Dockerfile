FROM swift:5.6-focal

WORKDIR /swift-format
RUN env DEBIAN_FRONTEND=noninteractive apt-get update
RUN env DEBIAN_FRONTEND=noninteractive apt-get install wget
RUN wget -q -O - https://github.com/apple/swift-format/archive/0.50600.1.tar.gz | tar zxf - --strip-components 1
RUN swift build --configuration release

FROM swift:5.6-focal-slim
ARG BUILD_DIR
COPY --from=0 /swift-format/.build/${BUILD_DIR}/release/swift-format /usr/bin
ENTRYPOINT ["/usr/bin/swift-format"]
