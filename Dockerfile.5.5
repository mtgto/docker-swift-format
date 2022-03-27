FROM swift:5.5-focal

WORKDIR /swift-format
RUN env DEBIAN_FRONTEND=noninteractive apt-get update
RUN env DEBIAN_FRONTEND=noninteractive apt-get install wget
RUN wget -q -O - https://github.com/apple/swift-format/archive/0.50500.0.tar.gz | tar zxf - --strip-components 1
RUN swift build --configuration release

FROM swift:5.5-focal-slim
COPY --from=0 /swift-format/.build/x86_64-unknown-linux-gnu/release/swift-format /usr/bin
ENTRYPOINT ["/usr/bin/swift-format"]
