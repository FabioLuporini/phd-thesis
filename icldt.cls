%%
%% This is file `icldt.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% icldt.dtx  (with options: `class')
%%
%% ///////////////////////////////////////////////////////////////////
%%
%% The provided documentclass `icldt' is based on the class `scrreprt'
%% from the Koma-script package. It uses the packages `geometry'
%% and `setspace' to fullfill the requirements for dissertations of
%% the University of London and of Imperial College London.
%%
%% If you print your dissertation for yourself or as a present for
%% family, friends or colleagues you probably should use a different
%% layout which does not fulfill the College requirements but which
%% looks much better.
%% For further information and for professional layouting and
%% printing services please visit www.PrettyPrinting.net.
%%
%% ///////////////////////////////////////////////////////////////////
%%
%% Copyright (c) 2007, Daniel Wagner, www.PrettyPrinting.net
%%
%% Permission is hereby granted, free of charge, to any person
%% obtaining a copy of this documentclass and associated
%% documentation files (the "Template"), to deal in the Template
%% without restriction, including without limitation the rights to
%% use, copy, modify, merge, publish, distribute, sublicense,
%% and/or sell copies of the Template, and to permit persons to
%% whom the Template is furnished to do so, subject to the
%% following conditions:
%%
%% The above copyright notice and this permission notice shall be
%% included in all copies or substantial portions of the Template.
%%
%% THE TEMPLATE IS PROVIDED ``AS IS'', WITHOUT WARRANTY OF ANY KIND,
%% EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
%% OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
%% NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
%% HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
%% WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
%% FROM, OUT OF OR IN CONNECTION WITH THE TEMPLATE OR THE USE OR
%% OTHER DEALINGS IN THE TEMPLATE.
%%
%% ///////////////////////////////////////////////////////////////////
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{icldt}
    [2008/09/25 v1.4 Imperial College London Dissertation Template]


\newif\if@mainmatter\@mainmattertrue
\newcommand*\frontmatter{%
  \if@twoside\cleardoublepage\else\clearpage\fi
  \@mainmatterfalse\pagenumbering{roman}%
}
\newcommand*\mainmatter{%
  \if@twoside\cleardoublepage\else\clearpage\fi
  \@mainmattertrue\pagenumbering{arabic}%
}
\newcommand*\backmatter{%
  \if@openright\cleardoublepage\else\clearpage\fi\@mainmatterfalse
}

\newcommand{\HRule}{\rule{\linewidth}{0.5mm}}
\newcommand*{\@supervisor}{}
\newcommand*{\@university}{}
\newcommand*{\@college}{Imperial College London}
\newcommand*{\@department}{}
\newcommand*{\@group}{}
\newcommand*{\@field}{}
\newcommand*{\@degree}{}
\newcommand*{\@diploma}{}
\newcommand*{\@declaration}{}
\DeclareOption{university}{%
 \renewcommand{\@university}{University of London}}
\DeclareOption{imperial}{%
 \let\@university\empty}
\DeclareOption{PhD}{%
 \renewcommand{\@degree}{Doctor of Philosophy}
 \renewcommand{\@diploma}{Diploma of Imperial College London}}
\DeclareOption{MSc}{%
 \renewcommand{\@degree}{Master of Science}\let\@diploma\empty}
\DeclareOption{BSc}{%
 \renewcommand{\@degree}{Bachelor of Science}\let\@diploma\empty}
\DeclareOption{DIC=off}{%
 \let\@diploma\empty}
\DeclareOption{DIC=on}{%
 \renewcommand{\@diploma}{Diploma of Imperial College London}}
\DeclareOption{declaration=off}{%
 \let\@declaration\empty}
\DeclareOption{declaration=on}{%
 \renewcommand{\@declaration}{%
 I herewith certify that the material in this thesis that is not 
 my own work has been properly acknowledged and referenced.}}
\DeclareOption{doublespacing}{\AtBeginDocument{\doublespacing}}
\DeclareOption{onehalfspacing}{\AtBeginDocument{\onehalfspacing}}
\DeclareOption{titlepagenumber=off}{%
 \AtEndOfClass{\renewcommand{\titlepagestyle}{empty}}}
\DeclareOption{titlepagenumber=on}{%
 \AtEndOfClass{\renewcommand{\titlepagestyle}{plain}}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrreprt}}
\ExecuteOptions{%
 onehalfspacing,titlepagenumber=on,imperial,PhD,declaration=on,a4paper,12pt,oneside}
\ProcessOptions\relax
\newcommand*{\supervisor}[1]{\gdef\@supervisor{#1}}
\newcommand*{\college}[1]{\gdef\@college{#1}}
\newcommand*{\department}[1]{\gdef\@department{#1}}
\newcommand*{\group}[1]{\gdef\@group{#1}}
\newcommand*{\field}[1]{\gdef\@field{#1}}
\newcommand*{\declaration}[1]{\gdef\@declaration{#1}}
\newlength{\logo@width}
\newcommand*{\logo}[2][0pt]{\gdef\@logo{#2}\setlength{\logo@width}{#1}}
\let\@logo\empty
\LoadClass{scrreprt}
\RequirePackage{setspace}
\RequirePackage[left=4.2cm,right=4.2cm,top=2.97cm,bottom=5.94cm]%
 {geometry}
\setkomafont{sectioning}{\rmfamily\bfseries}
\renewcommand*{\maketitle}{
\begin{titlepage}
 \par
 \clearpage
 \thispagestyle{\titlepagestyle}
 \noindent\begin{minipage}[t]{\textwidth}
  \centering\large
  \ifx\@university\@empty \else \@university\par\fi
  \@college
  \ifx\@department\@empty \else \par Department of \@department\fi
  \ifx\@group\@empty \else \par \@group\fi
 \end{minipage}
 \null\vfill
 \begin{center}
  \HRule
  \vskip 1em
  {\huge \textsc{\@title}\par}
  \vskip 1em
  \HRule
  \vskip 3em
  {\Large \lineskip 0.75em
  \begin{tabular}[t]{c}
    \textsc{\LARGE{\@author}}
  \end{tabular}\par}
  \vskip 1.5em
  {\Large \@date \par}
  \vskip 1.5em
  \ifx\@logo\@empty{\vfill}\else{
  \vskip \z@ \@plus3fill
    \ifdim\logo@width>0\p@\relax
    \includegraphics[width=\logo@width]{\@logo}\par\else\includegraphics{\@logo}\par\fi%
    \vskip 1.5em%
  }\fi
  \ifx\@supervisor\@empty \else
  {\begin{tabular}[t]{c} Supervised by: \@supervisor \end{tabular}}
  \fi
  \vskip 2.0em
 \end{center}\par
 \noindent\begin{minipage}[b]{\textwidth}
  \centering
  Submitted in part fulfilment of the requirements for the degree of\\
  \@degree\ in \ifx\empty\@field{\@department}\else{\@field}\fi\ \\of
  \ifx\empty\@university{\@college}\else{the \@university}\fi
  \ifx\@diploma\@empty\else{\\and the \@diploma}\fi
 \end{minipage}
 \frontmatter
 \ifx\@declaration\@empty\else{
 \cleardoublepage
 \chapter*{Declaration}
 \thispagestyle{plain}
 \@declaration
 \par\vspace{3cm}
 \hfill\@author
 \vfill
 The copyright of this thesis rests with the author and is made available under a Creative Commons
 Attribution Non-Commercial No Derivatives licence. Researchers are free to copy, distribute or
 transmit the thesis on the condition that they attribute it, that they do not use it for commercial
 purposes and that they do not alter, transform or build upon it. For any reuse or redistribution,
 researchers must make clear to others the licence terms of this work.
 \cleardoublepage
 }\fi
\end{titlepage}
}
\newcommand{\makededication}{
 \ifx\@dedication\@empty \else
 \clearpage
 \thispagestyle{plain}
 \null\vfill
 {\centering \Large \@dedication \par}
 \vskip \z@ \@plus3fill
 \cleardoublepage
 \fi
}
\renewenvironment{abstract}{%
\chapter*{Abstract}\thispagestyle{plain}}{\cleardoublepage}
\endinput

%%
%% End of file `icldt.cls'.
