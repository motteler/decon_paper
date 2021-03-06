#
# makefile for decon paper
#

decon_paper: decon_paper.pdf

decon_paper.pdf: decon_paper.tex crisdefs.tex figures/*.pdf \
	decon_paper.bib Makefile
	pdflatex decon_paper.tex -interaction nonstopmode && \
	bibtex decon_paper && \
	pdflatex decon_paper.tex -interaction nonstopmode && \
	pdflatex decon_paper.tex -interaction nonstopmode || \
	rm decon_paper.pdf 2> /dev/null || true

show: decon_paper.pdf
	evince decon_paper.pdf 2> /dev/null &

clean:
	rm decon_paper.log decon_paper.aux decon_paper.toc \
	decon_paper.vrb decon_paper.bbl decon_paper.blg \
	decon_paper.snm decon_paper.nav decon_paper.out 2> /dev/null || true

decon_talk: decon_talk.pdf

decon_talk.pdf: decon_talk.tex crisdefs.tex figures/*.pdf Makefile
	pdflatex decon_talk.tex -interaction nonstopmode || \
	rm decon_talk.pdf 2> /dev/null || true

show_talk: decon_talk.pdf
	evince decon_talk.pdf 2> /dev/null &

reply1: reply1.pdf
	evince reply1.pdf 2> /dev/null &

reply1.pdf: reply1.tex crisdefs.tex figures/*.pdf
	pdflatex reply1.tex -interaction nonstopmode || \
	rm reply1.pdf 2> /dev/null || true

reply2: reply2.pdf
	evince reply2.pdf 2> /dev/null &

reply2.pdf: reply2.tex crisdefs.tex figures/*.pdf
	pdflatex reply2.tex -interaction nonstopmode || \
	rm reply2.pdf 2> /dev/null || true

