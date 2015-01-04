Run `make` to build a [Docker][] image containing a statically linked
[thttpd][] binary.  The final image is just over 1MB in size.  You can
run the image like this:

    docker run -p 8080:80 larsks/thttpd

Any arguments you provide to the `docker run ...` command will be
passed to `thttpd`:

    docker run -p 8080:80 -v /path/to/mydocs:/docs \
      larsks/thttpd -d /docs
 
[docker]: http://docker.com/
[thttpd]: http://acme.com/software/thttpd/
