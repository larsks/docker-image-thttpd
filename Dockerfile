FROM ubuntu
RUN apt-get update; apt-get install -y curl make gcc patch; apt-get clean
COPY build /build
WORKDIR /build
RUN sh build-thttpd-static

FROM scratch
WORKDIR /
COPY --from=0 /build/thttpd /bin/thttpd
COPY index.html /www/index.html
ENTRYPOINT ["/bin/thttpd", "-D", "-l", "/dev/stderr"]
CMD ["-d", "/www"]
