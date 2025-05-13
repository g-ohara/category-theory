TRGPDF = main.pdf
TRGWEB = docs/index.html
SOURCE = main.tex
IMGSRC = $(shell find src/ -name '*.tex' ! -name 'macro.tex')
IMGPDF = $(IMGSRC:.tex=.pdf)
IMGPNG = $(addprefix docs/, $(IMGSRC:.tex=.png))

all: $(TRGPDF) $(TRGWEB)

$(TRGPDF): $(SOURCE) $(IMGPNG)
	latexmk $(SOURCE)

$(TRGWEB): $(SOURCE) $(IMGPNG)
	pandoc $(SOURCE) -o $@ --defaults=default.yaml

docs/src/%.png: src/%.pdf
	pdftocairo -png $< $< && mv $<-1.png $@

src/%.pdf: src/%.tex
	latexmk $< -output-directory=src/

clean:
	latexmk -C -cd $(SOURCE) $(IMGSRC)
