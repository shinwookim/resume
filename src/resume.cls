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
% Created by Trey Hunner / Modified by Shinwoo Kim
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\ProvidesClass{resume}[Resume]
\LoadClass[10pt,letterpaper]{article}

\usepackage{enumitem}
\usepackage{fontawesome5}           % required for LinkedIn logo
\usepackage[
	left=0.5in,
	top=0.5in,
	right=0.5in,
	bottom=0.3in]{geometry}
\usepackage{hyperref}

\setlength{\parindent}{0pt}         % do not indent paragraphs
\setlist[enumerate,itemize]{
	topsep=0pt,
	noitemsep
}
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
\newenvironment{resumesection}[1]{
	\medskip
	\textsc{\large{#1}}
	\smallskip
	\hrule
	\begin{list}{}{
		\setlength{\topsep}{\smallskipamount}
		\setlength{\leftmargin}{0em}
	}
	\item[]
}{
	\end{list}
}


\newenvironment{experience}[4]{
	\textbf{#1}\hfill{#2}
	\\
	\emph{#3}\hfill\emph{#4}
}{}
