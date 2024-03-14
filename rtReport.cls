% Report template class
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{rtReport}[2024/03/11 Red Team Report class]

\LoadClass[12pt,a4paper]{article}
%Add images
\RequirePackage{graphicx}
\graphicspath{{img/}}

%Header and footers
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhead{}
\lhead{}
\fancyfoot{}
\lfoot{Confidential}
\cfoot{RedTeam}
\rfoot{\thepage}
\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{0.4pt}
\setlength{\headheight}{14.49998pt}


%Watermark
\RequirePackage{watermark}
\thiswatermark{\centering \put(112,-550){\includegraphics[scale=0.9]{img/wt.png}} }

\RequirePackage{listings}
\lstset{%
  language={[latex]TeX},
  tabsize=2,
  breaklines,
  basicstyle=\footnotesize\ttfamily,
}

%get values from enviroment variables.
\RequirePackage{catchfile}
% http://www.stackprinter.com/export?service=tex.stackexchange&question=62010&printer=false&linktohome=true
\newcommand{\getenv}[2][]{%
  \CatchFileEdef{\temp}{"|kpsewhich -var-value #2"}{\endlinechar=-1}%
  \if\relax\detokenize{#1}\relax\temp\else\let#1\temp\fi}

