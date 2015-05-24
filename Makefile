MAIN=dokument

$(MAIN).pdf: $(MAIN).tex
		latexmk -pdf -pdflatex="pdflatex -interactive=nonstopmode" -use-make $(MAIN).tex

clean:
		latexmk -CA

# make sure they run every time
.PHONY: $(MAIN).pdf clean
