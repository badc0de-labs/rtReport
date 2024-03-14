% Report template class
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{rtPresentation}[2024/03/11 Red Team Report Presentation class]

\LoadClass{beamer}
\usetheme{AnnArbor}
\usecolortheme{wolverine}
%Add images
\RequirePackage{graphicx}
\graphicspath{{img/}}
%
%Change topbar color
\setbeamercolor*{palette tertiary}{bg=yellow!90!orange}


%get values from enviroment variables.
\RequirePackage{catchfile}
% http://www.stackprinter.com/export?service=tex.stackexchange&question=62010&printer=false&linktohome=true
\newcommand{\getenv}[2][]{%
  \CatchFileEdef{\temp}{"|kpsewhich -var-value #2"}{\endlinechar=-1}%
  \if\relax\detokenize{#1}\relax\temp\else\let#1\temp\fi}

