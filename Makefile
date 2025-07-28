.DEFAULT_GOAL := deb

.PHONY: build deb

build:
	@docker build -t systemd-boot-signer .

deb: clean build
	@bash -c "./get-deb.sh"

clean:
	@rm -rf ./*.deb
