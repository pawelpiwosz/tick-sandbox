.SILENT:

.PHONY: status build start stop clean run log

status:
	bash ./scripts/status.sh $(status)
	
build:
	bash ./scripts/build_and_start.sh

start:
	bash ./scripts/start.sh

stop:
	bash ./scripts/stop.sh

clean:
	bash ./scripts/cleanall.sh

run:
	ifeq ($(container),)
		$(error Provide container name to connect)
		exit 1
	endif

	ifeq ($(type),)
		$(error Provide action type)
		exit 1
	endif

	bash ./scripts/run.sh $(container) $(type)

log:
	ifeq ($(container),)
		$(error Provide container name to connect)
		exit 1
	endif

	bash ./scripts/logs.sh $(container) $(continue)
