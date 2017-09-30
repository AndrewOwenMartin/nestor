.PHONY: all

project_name = nestor

COLS := $(shell tput cols)

all: build $(project_name).pdf 

$(project_name).tex: $(project_name).nw
	noweave -autodefs python -t4 -filter btdefn -delay -latex -index $(project_name).nw | cpif $(project_name).tex

$(project_name).pdf: $(project_name).tex
	latexmk -halt-on-error -pdf $(project_name).tex
	-pkill -hup mupdf

%.py: $(project_name).nw
	notangle -R"$@" -filter btdefn $(project_name).nw | cpif $@
	
project_files = \
	$(project_name).py

build: $(project_files)

build-server:
	/home/amartin/virtualenvs/thesis/bin/when-changed -1 *.nw -c "max_print_line=$(COLS) make all && echo 'done'"
