TYPST       ?= typst
FONT_PATH   ?= fonts
SRC         ?= example.typ
OUT         := $(SRC:.typ=.pdf)

.PHONY: build watch clean

build:
	$(TYPST) compile --font-path $(FONT_PATH) $(SRC)

watch:
	$(TYPST) watch --font-path $(FONT_PATH) $(SRC)

clean:
	rm -f *.pdf
