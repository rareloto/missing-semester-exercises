# specify target 'clean'
.PHONY:	clean

paper.pdf: paper.tex plot-data.png
	pdflatex paper.tex

plot-%.png: %.dat plot.py
	./plot.py -i $*.dat -o $@

# recipe to remove generated secondary files
clean:	
	@# deletes untracked files
	@git ls-files --other | xargs rm
	@# unnecessary comment because i couldn't commit
	@# testing pre-commit hook
	@# another one
	@# testing pre-commit hook catch fail
