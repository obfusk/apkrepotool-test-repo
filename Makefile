SHELL := /bin/bash

.PHONY: all clean

all:

clean:
	rm -fr cache/ repo/*/*/{featureGraphic,icon}_*.png repo/*.{jar,json} \
	  repo/diff/ timestamps.json
