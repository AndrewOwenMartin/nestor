# An implementation of NESTOR

See [nestor.pdf](nestor.pdf) for more information about NESTOR itself.

Otherwise this repo is an example of a project written using [Literate Programming](https://en.wikipedia.org/wiki/Literate_programming), specifically the literate programming tool [noweb](https://www.cs.tufts.edu/~nr/noweb/).

The repo includes a [Makefile](Makefile) which assumes that noweb and latexmk are installed, and on your path.

If you don't have noweb you can still read the PDF, which is generated from the source file [nestor.nw](nestor.nw). If you don't have latexmk (for conveniently building LaTeX documents) you can still generate the LaTeX source file `nestor.tex` with `make nestor.tex` and then render that file into a PDF or DVI however you like.

