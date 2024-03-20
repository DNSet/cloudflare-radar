MAKEFLAGS += --always-make

all: install update-rankings

install:
	pip3 install --upgrade cloudflare-radar

uninstall:
	pip3 uninstall -y cloudflare-radar

update-rankings:
	cloudflare-radar update-rankings --dir rankings/ --retries 500 --stdout && git add rankings/ && git commit --message="update rankings $$(date '+%F %T')"
