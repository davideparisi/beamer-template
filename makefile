# ./Makefile

# ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ###

LATEX:=xelatex
MD:=slides
LATEX_OPTIONS:=-shell-escape -8bit
BIBLIO:=biber
# ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ###

TARGET:=main

# ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ###
#

default: main

main:
	@pandoc -t beamer -i $(MD).md -o $(MD).tex
	@$(LATEX) $(LATEX_OPTIONS) $(TARGET)
	## @$(BIBLIO) $(TARGET)
	@$(LATEX) $(LATEX_OPTIONS) $(TARGET)
	## @$(LATEX) $(LATEX_OPTIONS) $(TARGET)
	@make clean

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
			$(TARGET).pyg \
			missfont.log \
			$(MD).tex \
			*~

