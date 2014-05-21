# ./Makefile

# ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ###

LATEX:=xelatex
LATEX_OPTIONS:=-shell-escape -8bit
BIBLIO:=biber
# ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ###

TARGET:=main

# ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ###
#

default: main

main:
	pandoc -t beamer -i slides.md -o slides.tex
	@$(LATEX) $(LATEX_OPTIONS) $(TARGET)
	## @$(BIBLIO) $(TARGET)
	@$(LATEX) $(LATEX_OPTIONS) $(TARGET)
	## @$(LATEX) $(LATEX_OPTIONS) $(TARGET)

quick:
	@$(LATEX) $(LATEX_OPTIONS) $(TARGET)

.PHONY: clean

clean:
	@rm -f $(TARGET)-blx.bib \
			$(TARGET).toc	\
			$(TARGET).aux \
			$(TARGET).bbl \
			$(TARGET).log \
			$(TARGET).nav \
			$(TARGET).out \
			$(TARGET).snm \
			$(TARGET).thm \
			$(TARGET).run.xml \
			$(TARGET).snm \
			$(TARGET).vrb \
			$(TARGET).bcf \
			$(TARGET).blg \
			missfont.log \
			*~

