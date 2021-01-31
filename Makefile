all: $(wildcard *.scss)

%.scss: %.css
	@echo "look at this dude"
	sass --no-source-map $@ $<


