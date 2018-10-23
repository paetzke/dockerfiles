help:
	@grep -E '^[0-9a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

python370:  ## Python 3.7.0
	docker build -f Dockerfile.python370 -t mine:python370 .

python371:  ## Python 3.7.1
	docker build -f Dockerfile.python371 -t mine:python371 .

latex:  ## TexLive
	docker build -f Dockerfile.latex -t mine:latex .
