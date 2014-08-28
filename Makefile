.PHONY: all clean

TEX=$(wildcard *.tex)
STY=$(wildcard *.sty)

all: $(patsubst %.tex, %.pdf, $(TEX))

%.pdf: %.tex Makefile $(STY)
	latex -output-format=pdf $<
	latex -output-format=pdf $<
	-rm $*.aux $*.log $*.nav $*.out $*.snm $*.toc

clean:
	-rm *.pdf
