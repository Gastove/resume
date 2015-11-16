%%%%% Resume! %%%%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2015/11/14 Custom Resume Class]
\LoadClass{article}

\newcommand*{\employer}[3]{
  \begin{center}
    \begin{tabular}{l @{\hspace{1em}---\hspace{1em}} c @{\hspace{1em}---\hspace{1em}} r}
      #1 & #2 & #3
    \end{tabular}
  \end{center}
}

\newcommand*{\poot}[4]{
  #1 --- #2 --- #3--#4
}
