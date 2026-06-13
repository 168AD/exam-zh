.PHONY: ctan doc doc-basic example examples examples-basic install release save test

example:
	latexmk -xelatex example-single.tex

examples:
	latexmk -xelatex example-single.tex
	latexmk -xelatex example-multiple.tex

examples-basic:
	cd examples-basic && latexmk -xelatex 00-minimal.tex
	cd examples-basic && latexmk -xelatex 01-first-exam.tex
	cd examples-basic && latexmk -xelatex 02-math-basic.tex

ctan:
	l3build ctan

doc:
	cd doc && latexmk -xelatex exam-zh-doc.tex

doc-basic:
	cd doc-basic && latexmk -xelatex exam-zh-doc-basic.tex

install:
	l3build install

release:
	python scripts/build.py $(VERSION)

save:
	bash tools/l3build-save.sh

test:
	l3build check
