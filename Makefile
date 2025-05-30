ifneq ($(SNAPSHOT),)
snapshot := :snapshot $(SNAPSHOT)
endif

clean:
	clj -T:build clean

jar:
	clj -T:build jar  $(snapshot)


install: clean jar
	clj -T:build install ${snapshot}


publish: clean jar
	clj -T:build publish $(snapshot)

release: clean jar publish


help:
	@grep -E '^[a-zA-Z0-9_-]+:' $(MAKEFILE_LIST) | sed 's/:.+$\//g' | sort
