FROM swift:5.3-focal

WORKDIR /swift-format
RUN apt-get update
RUN apt-get install wget
RUN wget -q -O - https://github.com/apple/swift-format/archive/swift-5.3.2-RELEASE.tar.gz | tar zxf - --strip-components 1
RUN swift build --configuration release

FROM swift:5.3-focal-slim
RUN apt-get update && \
apt-get install libz3-4 && \
apt-get clean && \
rm -rf /var/lib/apt/lists/*
COPY --from=0 /swift-format/.build/x86_64-unknown-linux-gnu/release/swift-format /usr/bin
ENTRYPOINT ["/usr/bin/swift-format"]
