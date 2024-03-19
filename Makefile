MAKEFLAGS += --always-make

update-rankings:
	cloudflare-radar update-rankings --dir rankings/ --retries 500 --stdout && git add rankings/ && git commit --message="update rankings $$(date '+%F %T')"
