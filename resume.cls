%%%%% Resume! %%%%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2015/11/14 Custom Resume Class]
\def\@@ptsize{10pt}
\LoadClass[\@@ptsize]{article}

%%%%% Packages %%%%%
\RequirePackage[left=1in, right=1in, top=1in, bottom=1in]{geometry}
\RequirePackage{titlesec}
\RequirePackage{enumitem}
\RequirePackage{xcolor}

%%%%% Style %%%%%
\setlength{\parskip}{0em}
\setlength{\parindent}{1em}
\setlength{\leftskip}{3em}
\setlist[itemize]{itemsep=0em}
\setlist[description]{style=standard, leftmargin=3em, labelindent=\parindent, font=\normalfont\sc}

\raggedright

%% Section Formatting
\titlespacing{\section}{0em}{1em}{0.5em}
\titleformat{\section}{}{}{0em}{}[{\color{gray} \titlerule[0.2pt]}]
\titleformat{\subsection}{\sc}{}{0em}{}
\titleformat{\subsubsection}{\sc}{}{0em}{}
% \setcounter{secnumdepth}{0}

%%%%% Functions %%%%%
\def\location#1{\def\@location{#1}}
\def\email#1{\def\@email{#1}}
\def\wobsite#1{\def\@wobsite{#1}}

%% Resume header
\makeatletter
\renewcommand{\maketitle}{%
  \large%
  \setlength{\parskip}{-1.5em}%
  \begin{flushleft}\sc{\@author}\end{flushleft}%
  \par%
  \normalsize%
  \setlength{\leftskip}{0em}
  \noindent\makebox[\linewidth]{\rule{\textwidth}{0.4pt}}%
  % \setlength{\parskip}{-0.5em}%
  \par
  \begin{flushright}\@email\:--- \@location\:--- \@wobsite\end{flushright}%
  \normalsize%
  \setlength{\parskip}{0em}
}
\makeatother

%% Print a personal statement
\newcommand{\statement}[1]{%
  \normalsize%
  \normalfont%
  \space#1%
}

% Employer, Location, Start Date, End Date
\newcommand*{\employer}[4]{%
  \normalsize%
  \normalfont%
  % \begin{flushright}%
  \hfill#1, #2 --- #3/#4%
  % \end{flushright}%
}
