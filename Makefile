NAMESPACE=larsks
UID=$(shell echo $$UID)

all: output/thttpd
	docker build -t $(NAMESPACE)/thttpd .

output/thttpd:
	docker build -t thttpd-builder builder
	mkdir -p output
	docker run -v $(PWD)/output:/output -e TARGETUID=$(UID) thttpd-builder

clean:
	rm -f output/thttpd
