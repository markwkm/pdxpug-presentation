name=pdxpug-presentation

all: $(name).pdf

%.pdf: %.tex Makefile
	-rm $@
	latex -output-format=pdf $<
	latex -output-format=pdf $<

clean:
	rm -f $(name)*.log $(name)*.toc $(name)*.nav $(name)*.snm \
			$(name)*.out $(name)*.dvi $(name)*.aux \
			$(name)*.vrb texput.log *.eps

realclean: clean
	rm -f $(name)*.pdf
