%%%%% Resume! %%%%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2015/11/14 Custom Resume Class]
\LoadClass{article}

%%%%% Packages %%%%%
\RequirePackage[left=1in, right=1in, top=1in, bottom=1in]{geometry}
\RequirePackage{titlesec}
\RequirePackage{enumitem}

%%%%% Style %%%%%
\setlength{\parindent}{1em}
\setlength{\leftskip}{3em}

\setlist[description]{style=standard, leftmargin=\parindent, labelindent=\parindent}

%% Section Formatting
\titleformat{\section}{\large\bfseries}{}{0em}{}
\titleformat{\subsection}{\bfseries}{}{0em}{}

%%%%% Functions %%%%%
\def\location#1{\def\@location{#1}}
\def\email#1{\def\@email{#1}}
\def\wobsite#1{\def\@wobsite{#1}}

%% Resume header
\makeatletter
\renewcommand{\maketitle}{%
  \large%
  \setlength{\parskip}{-0.5em}
  \textbf{\@author}%
  \par
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
  \hfill#1, #2 --- #3/#4\par%
  % \end{flushright}
}
