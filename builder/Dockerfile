FROM ubuntu

VOLUME /output
RUN apt-get update
RUN apt-get -y install gcc make patch curl
COPY build-thttpd-static /build-thttpd-static
COPY thttpd-runasroot.patch /thttpd-runasroot.patch
RUN chmod 755 /build-thttpd-static
CMD /build-thttpd-static

