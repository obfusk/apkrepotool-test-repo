SHELL := /bin/bash

.PHONY: all clean

all:

clean:
	rm -fr .tmp/ cache/ repo/*/*/{featureGraphic,icon}_*.png repo/*.{jar,json} \
	  repo/diff/ timestamps.json hooks/__pycache__/
