%%%%% Resume! %%%%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2015/11/14 Custom Resume Class]
\LoadClass{article}

\def\location#1{\def\@location{#1}}
\def\email#1{\def\@email{#1}}

%% Print a header for my resume
\makeatletter
\renewcommand{\maketitle}{%
  \@author \\%
  \noindent\makebox[\linewidth]{\rule{\textwidth}{0.4pt}} \\%
  \begin{flushright}\@email --- \@location\end{flushright}%
}
\makeatother

% Employer, Location, Start Date, End Date
\newcommand*{\employer}[4]{%
  #1, #2 --- #3--#4%
}
