---
# Install
```
sudo apt-get install texlive
sudo apt get install texmaker
可选:
sudo apt-get install texlive-xetex
sudo apt-get install latex-cjk-all
```

# Example
```
\documentclass[a4paper,12pt]{article}
\begin{document}

The foundations of the rigorous study of \emph{analysis}
were laid in the nineteenth century, notably by the
mathematicians Cauchy and Weierstrass. Central to the
study of this subject are the formal definitions of
\emph{limits} and \emph{continuity}.

Let $D$ be a subset of $\bf R$ and let
$f \colon D \to \mathbf{R}$ be a real-valued function on
$D$. The function $f$ is said to be \emph{continuous} on
$D$ if, for all $\epsilon > 0$ and for all $x \in D$,
there exists some $\delta > 0$ (which may depend on $x$)
such that if $y \in D$ satisfies
\[ |y - x| < \delta \]
then
\[ |f(y) - f(x)| < \epsilon. \]

One may readily verify that if $f$ and $g$ are continuous
functions on $D$ then the functions $f+g$, $f-g$ and
$f.g$ are continuous. If in addition $g$ is everywhere
non-zero then $f/g$ is continuous.

\end{document}
```

# Compile
## Texmaker
## Command line
```
latex example.tex //output example.dvi
xdvi example.dvi  //open dvi

pdflatex example.tex //ouput latex.pdf

```

[Install LaTeX on Ubuntu or Debian][]  
[lshort – A short introduction to LATEX 2e][]  
[wikibooks][]

[Install LaTeX on Ubuntu or Debian]: http://milq.github.io/install-latex-ubuntu-debian/
[lshort – A short introduction to LATEX 2e]: http://www.ctan.org/pkg/lshort
[wikibooks]: https://en.wikibooks.org/wiki/LaTeX
