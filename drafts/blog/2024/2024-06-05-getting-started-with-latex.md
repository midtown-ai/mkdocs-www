---
draft: true
# readingtime: 15
slug: getting-started-with-latex
title: Getting started with Latex

authors:
  - emmanuel
#   - florian
#   - oceanne

categories:
  - Research

date:
  created: 2024-06-05
  updated: 2024-06-05

description: This is the post description

# --- Sponsors only
# link:
#   - tests/pdf_hook.md
#   - tests/youtube_hook.md
#   - Widget: tests/widgets.md
# pin: false
# tags:
#   - FooTag
#   - BarTag
---

# Getting started with Latex

<!-- end-of-excerpt -->


## Links

 * Tutorials
   * overleaf - [https://www.overleaf.com/learn/latex/Learn_LaTeX_in_30_minutes](https://www.overleaf.com/learn/latex/Learn_LaTeX_in_30_minutes)
   * latex cookbook - [https://latex-cookbook.net/](https://latex-cookbook.net/)
 * Latex classes - [https://www.ctan.org/topic/class](https://www.ctan.org/topic/class)
 * packages
   * graphicx
     * ctan - [https://ctan.org/pkg/graphicx](https://ctan.org/pkg/graphicx)
     * doc - [https://mirrors.rit.edu/CTAN/macros/latex/required/graphics/grfguide.pdf](https://mirrors.rit.edu/CTAN/macros/latex/required/graphics/grfguide.pdf)
     * tutorial - [https://www.overleaf.com/learn/latex/Inserting_Images](https://www.overleaf.com/learn/latex/Inserting_Images)
   * natbib - bibliography 
     * ctan - [https://www.ctan.org/pkg/natbib](https://www.ctan.org/pkg/natbib)
     * doc - [https://ctan.mirrors.hoobly.com/macros/latex/contrib/natbib/natnotes.pdf](https://ctan.mirrors.hoobly.com/macros/latex/contrib/natbib/natnotes.pdf)
     * tutorial - [https://www.overleaf.com/learn/latex/Bibliography_management_with_natbib](https://www.overleaf.com/learn/latex/Bibliography_management_with_natbib)
   * pgfplots
     *
     * doc - [https://pgfplots.net/](https://pgfplots.net/)
     * tutorial - [https://www.overleaf.com/learn/latex/Pgfplots_package](https://www.overleaf.com/learn/latex/Pgfplots_package)
   * tables
     * ctan - [https://www.ctan.org/pkg/booktabs](https://www.ctan.org/pkg/booktabs)
     * doc -
     * tutorial - [https://www.overleaf.com/learn/latex/Tables](https://www.overleaf.com/learn/latex/Tables)
   * tikz
     * ctan -
     * doc - [https://tikz.dev/](https://tikz.dev/)
     * tutorial - [https://www.overleaf.com/learn/latex/TikZ_package](https://www.overleaf.com/learn/latex/TikZ_package)
 * Edit Latex
   * online - [https://www.overleaf.com/project](https://www.overleaf.com/project)
   * IDE for MacOs 
     * [https://tex.stackexchange.com/questions/339/latex-editors-ides](https://tex.stackexchange.com/questions/339/latex-editors-ides)
     * macText - [https://tug.org/mactex/](https://tug.org/mactex/)
       * brew install --cask mactex
 * reformating from (raw) latex to ...
   * pdf 
     * pdflatex - [https://www.wavewalkerdsp.com/2022/01/05/install-and-run-latex-on-macos/](https://www.wavewalkerdsp.com/2022/01/05/install-and-run-latex-on-macos/)
       * pdflatex main.tex && open main.pdf
   * html
     * jekyll - [https://github.com/mhartl/jekyll-latex](https://github.com/mhartl/jekyll-latex)

 * Other utilities
   * Diff
     * p4merge - to diff files between those on downloaded on MacOs and those hosted on overleaf
       * [https://www.perforce.com/products/helix-core-apps/merge-diff-tool-p4merge](https://www.perforce.com/products/helix-core-apps/merge-diff-tool-p4merge)

## Terminology

 Double-Bind review: Reviews

 Preamble: Headers before the beginning of the document. Contains metadata, package, configuration settings.

 Single-blind review: Only the reviewers are anonymized

 STY files: style files to be used by main.tex files

 TEX file: the file with content to be stylized

## Documentation


 * Overleaf templates
   * NeurIPS 2024 - [https://www.overleaf.com/latex/templates/neurips-2024/tpsbbrdqcmsh](https://www.overleaf.com/latex/templates/neurips-2024/tpsbbrdqcmsh)
     * doc - [https://www.overleaf.com/latex/templates/neurips-2024/tpsbbrdqcmsh.pdf](https://www.overleaf.com/latex/templates/neurips-2024/tpsbbrdqcmsh.pdf)

## Command


 :warning: You can set the auto-recompile on

 :warning: Auto-recompile can be turned off to see the difference between 2 changes (e.g. template options)

```
Cmd + Enter                          - recompile
```

## FAQ

### How to use references using natbib ?

 :warning: inline references are linked to the \bibliography section

 :warning: only used inline references are inserted in the \bibliography section

 * styles - [https://www.overleaf.com/learn/latex/Natbib_bibliography_styles](https://www.overleaf.com/learn/latex/Natbib_bibliography_styles)

 ```
% main.tex
\documentclass{article}
\usepackage[english]{babel}
\usepackage{natbib}
\bibliographystyle{unsrtnat}

\title{Bibliography management: \texttt{natbib} package}
\author{Overleaf}
\date {April 2021}

\begin{document}

\maketitle

This document is an example of \texttt{natbib} package using in bibliography
management. Three items are cited: \textit{The \LaTeX\ Companion} book 
\cite{latexcompanion}, the Einstein journal paper \cite{einstein}, and the 
Donald Knuth's website \cite{knuthwebsite}. The \LaTeX\ related items are 
\cite{latexcompanion,knuthwebsite}. 

\medskip                      % Insert medium vertical space

\bibliography{sample}         % Insert the 'References' UNUMBERED section using content from 'sample.bib' file
                              % Require a reference style: \bibliographystyle
                              % Only add the references that are used in the text

\end{document}
 ```
 with file
 ```
% sample.bib
@article{einstein,
  author =       "Albert Einstein",
  title =        "{Zur Elektrodynamik bewegter K{\"o}rper}. ({German})
                 [{On} the electrodynamics of moving bodies]",
  journal =      "Annalen der Physik",
  volume =       "322",
  number =       "10",
  pages =        "891--921",
  year =         "1905",
  DOI =          "http://dx.doi.org/10.1002/andp.19053221004"
}

@book{latexcompanion,
    author    = "Michel Goossens and Frank Mittelbach and Alexander Samarin",
    title     = "The \LaTeX\ Companion",
    year      = "1993",
    publisher = "Addison-Wesley",
    address   = "Reading, Massachusetts"
}

@misc{knuthwebsite,
    author    = "Donald Knuth",
    title     = "Knuth: Computers and Typesetting",
    year      = "1993",
    url       = "http://www-cs-faculty.stanford.edu/\~{}uno/abcde.html"
}
```

 ![]( {{site.assets}}/+/n/natbib_tex_output.png ){: width="100%"}


### How to cite a paper on arXiv?

 ```
@misc{wang2024mmlupro,
      title={MMLU-Pro: A More Robust and Challenging Multi-Task Language Understanding Benchmark}, 
      author={Yubo Wang and Xueguang Ma and Ge Zhang and Yuansheng Ni and Abhranil Chandra and Shiguang Guo and Weiming Ren and Aaran Arulraj and Xuan He and Ziyan Jiang and Tianle Li and Max Ku and Kai Wang and Alex Zhuang and Rongqi Fan and Xiang Yue and Wenhu Chen},
      year={2024},
      eprint={2406.01574},
      archivePrefix={arXiv},
      primaryClass={cs.CL}
}
 ```
 and more
 ```
@online{knuthwebsite,
    author = "Donald Knuth",
    title = "Knuth: Computers and Typesetting",
    url  = "http://www-cs-faculty.stanford.edu/~uno/abcde.html",
    addendum = "(accessed: 01.09.2016)",
    keywords = "latex,knuth"
}

@inbook{knuth-fa,
    author = "Donald E. Knuth",
    title = "Fundamental Algorithms",
    publisher = "Addison-Wesley",
    year = "1973",
    chapter = "1.2",
    keywords  = "knuth,programming"
}
 ```

 More at:
  * arXiv example - [https://github.com/TIGER-AI-Lab/MMLU-Pro/](https://github.com/TIGER-AI-Lab/MMLU-Pro/)
  * examples from tutorial - [https://www.overleaf.com/learn/latex/Bibliography_management_in_LaTeX](https://www.overleaf.com/learn/latex/Bibliography_management_in_LaTeX)
  * 14 entry types - [https://www.bibtex.com/e/entry-types/](https://www.bibtex.com/e/entry-types/)
  * docs + all types - [https://linorg.usp.br/CTAN/macros/latex/contrib/biblatex/doc/biblatex.pdf](https://linorg.usp.br/CTAN/macros/latex/contrib/biblatex/doc/biblatex.pdf)

### How to use a figure/drawing?

 ```

\usepackage{graphicx}

% show sized/formatted blocks filenames instead of images
% \usepackage[draft]{graphicx}

% where images are located relative to tex file. Default path is ./
% \graphicspath{ {./images/} }

\begin{figure}
  \centering
  %% empty box
  \fbox{\rule[-.5cm]{0cm}{4cm} \rule[-.5cm]{4cm}{0cm}}
  %% image as-is (may trigger warning as image may be too large for paper)!
  \includegraphics{filename.png}
  %% image formatted for document
  \includegraphics[width=0.7\textwidth]{filename.png}
  \caption{Sample figure caption.}
\end{figure}

```

### How to use http lnks?

 If text and link are the same:
 ```
\usepackage{url}                   % Package: simple URL typesetting

\url{http://www.neurips.cc/}         % Create a link

\begin{center}                       % centered section
  \url{http://mirrors.ctan.org/macros/latex/contrib/natbib/natnotes.pdf}  % clickable URL
\end{center}
 ```

 For more advanced links

 ```
 \usepackage{hyperref}

 Visit \href{https://www.latex-project.org/}{the LaTeX Project website} for more information.
 ```

### How to use a template?

 * You latex file is 'main.tex'
 * put the file in the same folder (ex: neurips_2024.sty )
 * add the following statement

 ```
\documentclass{article}

% if you need to pass options to natbib, use, e.g.:
%     \PassOptionsToPackage{numbers, compress}{natbib}
% before loading neurips_2024


% ready for submission (Anonymous author and line number)
% \usepackage{neurips_2024}

% to compile a preprint version, e.g., for submission to arXiv, add add the
% [preprint] option:
\usepackage[preprint]{neurips_2024}

% to compile a camera-ready version, add the [final] option, e.g.:
%     \usepackage[final]{neurips_2024}

% to avoid loading the natbib package, add option nonatbib:
%    \usepackage[nonatbib]{neurips_2024}
 ```

### What are template formats, e.g. preprint/final?

In LaTeX, the main differences between a preprint and a final template format typically relate to layout, style, and document structure. Here's a brief overview:

 No-option format (for unbiased aka double-blind review):
  * Anonymizes author
  * Adds line numbers
  * Removes acknowledgments

 Preprint format:
  * Nonanonymized version, include author's name
  * “Preprint. Work in progress.” in footer
  * Simpler layout, often single-column
  * Less formatting requirements
  * May include author information on the first page
  * Often uses a more generic document class (e.g., article)
  * May allow for comments or notes in the margins

 Final template format (For reviewed papers who have been accepted):
  * More structured layout, often double-column for journals
  * Specific formatting requirements set by the publisher
  * May anonymize author information for peer review
  * Uses a journal-specific document class or style file
  * Typically includes publication-ready elements like headers, footers, and page numbers

 The final template is usually provided by the publisher and adheres to their specific requirements for publication. The preprint format is more flexible and is often used for sharing research before formal publication.





## Macros

```
                                     % BEGINNING OF PREAMPLE

% \documentclass{article}            % Class --> control overall appearance of the document
                                     % = article, book, report, CV/resume

\documentclass[12pt, letterpaper]{article}  % Class with parameters (font and paper size)
                                     % default font size = 10pt
                                     % default paper size = a4paper

\usepackage[french,english]{babel}   % Use english language. Default: english
\usepackage{graphicx}                % Package required for inserting images, such as PNG, etc.

\title{tests}                        % Metadata used to generate title
\author{Emmanuel Mayssat}
\date{June 2024}

                                     % END OF PREAMPLE

\begin{document}                     % _begin_document = begin the body of the document
                                     % \begin{ENVIRONMENT} is followed by an \end{ENVIRONMENT}
                                     % Between \begin and \end, only commands for the given environment should be used

\maketitle                           % Generate Title using provided metadata: \title{} \author{} \date{}

\section{Heading; 1st level}         % Header-1 (A section is numbered)

\subsection{Heading: 2nd level}      % Header-2 (A subsection is numbered)

\subsubsection{Heading: 3rd level}   % Header-3 (A subsubsection is numbered)

Non-indented Normal text             % Normal text
This is a simple example.
This is on the same line as above.

Indented text line 1

Indented text line 2

writen in \LaTeX{}                   % Macro => Insert the Latex icons
or \LaTeXe{}

\textbf{bold text}
\emph{emphasis with italics}

reference \ref{anchor_1}             % Reference => jump to a labeled achor in the same document
\label{anchor_1}


Inline raw \verb+\paragraph+ command % inline raw text

\begin{verbatim}                     % verbatim block
   \citet{hasselmo} investigated\dots
\end{verbatim}

\verb|LaTeX command: \textbf{bold}|  % verbatim text
\verb+http://www.example.com+        % verbatim text



\begin{figure}                       % declare a floating figure
  \centering
  \fbox{\rule[-.5cm]{0cm}{4cm} \rule[-.5cm]{4cm}{0cm}} %  just a box
  \caption{Sample figure caption.}
\end{figure}


% \usepackage{booktabs}              % professional-quality tables
Check Table~\ref{sample-table}.      % Link to referenced floating table

\begin{table}
  \caption{Sample table title}       % Table caption
  \label{sample-table}               % Anchor   
  \centering
  \begin{tabular}{lll}
    \toprule
    \multicolumn{2}{c}{Part}                   \\
    \cmidrule(r){1-2}
    Name     & Description     & Size ($\mu$m) \\
    \midrule
    Dendrite & Input terminal  & $\sim$100     \\
    Axon     & Output terminal & $\sim$10      \\
    Soma     & Cell body       & up to $10^6$  \\
    \bottomrule
  \end{tabular}
\end{table}

% create a list
% \begin{description}                % Glossary list
% \begin{enumerate}                  % Indexed list
\begin{itemize}                      % Bullet list
  \item manage the project.
  \item support users and programmers.
    \begin{itemize}
      \item answer the phone.
      \item answer mail messages.
      \item soothe those having a nervous breakdown.
    \end{itemize}
  \item maintain contact with other astronomical groups.
\end{itemize}

\begin{terminalv}                    % Simulate terminal display
user> ls /var/temp
user> rm -rf *
\end{terminalv}


\emph{EMPHASIZED TEXT}               % Emphasize nline text(by default italic)
\textbf{BOLD TEXT}                   % bold inline text
\textit{ITALIC TEXT}                 % italic inline text
\textrm{ROM TEXT}                    % rom? inline text
\textsc{CAPS TEXT}                   % rom? inline text
\texttt{MONOSPACED TEXT}             % Monospaced inline type

\tiny                                % reduce font size by ? point
\scriptsize                          %
\footnotesize                        %
\small                               % reduce font size by 1 point
\normalize                           % normal
\large                               %
\huge                                %

\medskip                             % Inserts a medium-sized vertical space
\vspace{10mm}

\end{document}                       % _end_document
```

## Latex docs

### NeurIPS doc

 {% pdf "{{site.assets}}/+/n/neurips_hs_2024.pdf" %}


### Cookbook

 {% pdf "https://starlink.eao.hawaii.edu/devdocs/sc9.pdf" %}


