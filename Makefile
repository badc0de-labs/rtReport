default: purple

roe:
	pdflatex -output-dir=out rulesOfEngagement/template.tex
	open out/template.pdf
report:
	pdflatex -output-dir=out engagementReport/template.tex
	open out/template.pdf

purple:
	pdflatex -output-dir=out purpleReport/template.tex
	open out/template.pdf

docx:
	pandoc -s engagementReport/template.tex -o out/report.docx

clean:
	rm -f out/*
