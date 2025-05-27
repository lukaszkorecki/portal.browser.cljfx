ifneq ($(SNAPSHOT),)
snapshot := :snapshot $(SNAPSHOT)
endif

clean:
	clj -T:build clean

jar:
	clj -T:build jar  $(snapshot)


install: clean jar
	clj -T:build install ${snapshot}


publish:
	clj -T:build publish $(snapshot)

release: clean jar publish
