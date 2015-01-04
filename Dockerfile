FROM scratch
COPY output/thttpd /thttpd
COPY index.html /index.html
ENTRYPOINT ["/thttpd", "-D", "-l", "/dev/stderr"]

