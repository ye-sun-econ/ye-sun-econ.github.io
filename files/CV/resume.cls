%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Minimal Academic CV Class
% Clean · Dense · Modern
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\ProvidesClass{resume}[2026 Minimal Academic CV]

\LoadClass[11pt,a4paper]{article}

\usepackage[margin=0.8in]{geometry}
\usepackage{parskip}
\usepackage{hyperref}
\usepackage{titlesec}
\usepackage{enumitem}

\hypersetup{
    colorlinks=true,
    urlcolor=blue,
}

\pagestyle{empty}

% ----------------------------
% Typography
% ----------------------------

\renewcommand{\familydefault}{\sfdefault}

\titleformat{\section}
  {\large\bfseries\uppercase}
  {}
  {0em}
  {}

\titlespacing*{\section}
  {0pt}
  {1.2em}
  {0.6em}

\setlist[itemize]{
  leftmargin=1.5em, % Custom indent
  itemsep=0.6em,    % Match line break spacing
  topsep=0.6em,     % Match line break spacing
  label=\mbox{},   % No bullet
  labelsep=0pt,     % No space for bullet
  parsep=0pt,
  partopsep=0pt
}

% Custom itemize environment: no bullet, equal spacing
% Ensure topsep matches line break spacing (0.6em)
\newenvironment{rItemize}{%
  \begin{itemize}[
    leftmargin=2em,
    itemsep=0.5em,
    topsep=0.0em,    % vertical space above and below
    label=\mbox{},
    labelsep=0pt,
    parsep=0pt,
    partopsep=0pt
  ]
}{\end{itemize}}

% ----------------------------
% Name Block
% ----------------------------

\newcommand{\name}[1]{
  \begin{center}
  {\LARGE\bfseries #1}
  \end{center}
}

\newcommand{\contact}[1]{
  \begin{center}
  #1
  \end{center}
  \vspace{1em}
}

% ----------------------------
% Section Environment
% ----------------------------

\newenvironment{rSection}[1]
{
  \section*{#1}
  \vspace{-0.1em}
  \hrule
  \vspace{0.6em}
}
{
  \vspace{1.5em}
}