OBJS = build
MK = latexmk
ARGS = -bibtex -pdf -file-line-error -halt-on-error -interaction=nonstopmode -jobname=build/cetola-ms-thesis
MDOC = mainDoc.tex

all: pdf

pdf:
	mkdir build
	$(MK) $(ARGS) $(MDOC)

clean:
	rm -rf $(OBJS)
