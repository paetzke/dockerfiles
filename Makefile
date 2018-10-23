help:
	@grep -E '^[0-9a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'


.PHONY: python370
python370:  ## Python 3.7.0
	cd python370; docker build -t mine:python370 .

.PHONY: python371
python371:  ## Python 3.7.1
	cd python371; docker build -t mine:python371 .

.PHONY: latex
latex:  ## TexLive
	cd latex; docker build -t mine:latex .
