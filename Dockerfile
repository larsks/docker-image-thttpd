FROM ubuntu
RUN apt-get update; apt-get install -y curl make gcc patch; apt-get clean
COPY build /build
WORKDIR /build
RUN sh build-thttpd-static

FROM scratch
WORKDIR /
COPY --from=0 /build/thttpd /thttpd
COPY index.html /index.html
ENTRYPOINT ["/thttpd", "-D", "-l", "/dev/stderr"]

