# ./Makefile

# ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ###

LATEX:=pdflatex
OPTS:=-shell-escape -halt-on-error
TARGET:=slides

default: main

main:
	@$(LATEX) $(OPTS) $(TARGET)

.PHONY: clean

clean:
	@rm -f $(TARGET)-blx.bib \
	       $(TARGET).aux \
	       $(TARGET).log \
	       $(TARGET).out \
	       $(TARGET).pdf \
	       $(TARGET).toc \
	       $(TARGET).snm \
	       $(TARGET).nav \
	       $(TARGET).bbl \
	       $(TARGET).thm \
	       $(TARGET).run.xml \
	       missfont.log \
	       *~
