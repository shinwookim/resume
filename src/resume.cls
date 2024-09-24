%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Copyright (C) 2024 by Shinwoo Kim
% 
% Original Header:
% Copyright (C) 2010 - 2023 by Trey Hunner
%
% Copying and distribution of this file, with or without modification,
% are permitted in any medium without royalty provided the copyright
% notice and this notice are preserved.  This file is offered as-is,
% without any warranty.
% 
% Created by Trey Hunner and modified by Shinwoo Kim
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\ProvidesClass{resume}[2024/05/30 Resume class]
\LoadClass[10pt,letterpaper]{article}

% Required for LinkedIn Logo
\usepackage{fontawesome5}

% Do not indent paragraphs
% \usepackage[parfill]{parskip}       
\setlength\parindent{0pt}

\usepackage{array}                  % required for boldface tabular columns
\usepackage{ifthen}
\usepackage{float}
\usepackage{enumitem}
\setlist[enumerate,itemize]{
  topsep=0pt,
  noitemsep
}
\usepackage{caption}
\usepackage{hyperref}
\usepackage{multicol}

\usepackage[left=0.5in,top=0.45in,right=0.5in,bottom=0.3in]{geometry}

\hypersetup{
  colorlinks=true,
  linkcolor=black,
  filecolor=magenta,
  urlcolor=black,
}
\nofiles                            % .aux files are not needed for resumes
\pagestyle{empty}                   % resumes do not need page numbers

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% HEADINGS: Commands for printing name and address

% Provide \name command
\def \name#1{\def\@name{#1}}
\def \@name {} % default: empty

% Provide \email command
\def \email#1{\def\@email{#1}}
\def \@email {} % default: empty

% Provide \website command
\def \website#1{\def\@website{#1}}
\def \@website {} % default: empty

% Provide \linkedin command
\def \linkedin#1{\def\@linkedin{#1}}
\def \@linkedin {} % default: empty


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% HEADER                                                                    %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\AtBeginDocument{
    \begingroup
        \textbf{\huge{\@name}}
        \hfill
        {\textsf{\@linkedin}}
    \endgroup
    \\
    \begingroup
        {\textsf{\@website}}
        \hfill
        {\@email}
    \endgroup
    \par
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Used to create large resume section
\newenvironment{rSection}[1]{
    \sectionskip
\textsc{\large{#1}}
  \sectionlineskip
  \hrule
  \begin{list}{}{
      \setlength{\leftmargin}{0em}
    }
    \item[]
          }{
  \end{list}
}


\newenvironment{jobListing}[4]{
    \textbf{#1}\hfill{#2}
    \\
    \emph{#3}\hfill\emph{#4}
}


\def\nameskip{\medskip}
\def\addressskip{\smallskip}
\def\sectionskip{\bigskip}
\def\sectionlineskip{\medskip}
