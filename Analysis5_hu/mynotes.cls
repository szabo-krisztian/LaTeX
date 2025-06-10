% mynotes.cls - Custom LaTeX class for math notes
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mynotes}[2025/05/06 Custom class for math notes]

% Base class
\LoadClass[11pt]{article}

% ----------------------------
%        Packages
% ----------------------------
\RequirePackage[a4paper,margin=1in]{geometry}
\RequirePackage{amsmath,amssymb,amsthm}
\RequirePackage{mathtools}
\RequirePackage{graphicx}
\RequirePackage{tikz}
\usetikzlibrary{shadows.blur}
\RequirePackage{xcolor}
\RequirePackage{fancyhdr}
\RequirePackage{hyperref}
\RequirePackage{titling}
\RequirePackage[backend=biber]{biblatex}
\addbibresource{books.bib}
\RequirePackage[magyar]{babel}

% ----------------------------
%       Title Handling
% ----------------------------
\newcommand{\subtitle}[1]{\def\@subtitle{#1}}
\newcommand{\@subtitle}{}

\renewcommand{\maketitle}{
    \begin{titlepage}
        \centering
        \vspace*{2.5cm}
        {\Huge\bfseries \thetitle \par}
        \vspace{1cm}
        {\Large\itshape \@subtitle \par}
        \vspace{2cm}
        {\Large\theauthor \par}
        \vfill
        {\large \thedate \par}
    \end{titlepage}
}

% ----------------------------
%     Header & Footer
% ----------------------------
\pagestyle{fancy}
\fancyhf{}
\rhead{\thetitle}
\lhead{\leftmark}
\cfoot{\thepage}

% ----------------------------
%      Document Settings
% ----------------------------
\numberwithin{equation}{section}
\setlength{\parskip}{0.5em}
\setlength{\parindent}{0pt}


% ----------------------------
%      Math Tools
% ----------------------------
\newcommand{\R}{\mathbf{R}}
\newcommand{\N}{\mathbf{N}}
\newcommand{\Z}{\mathbf{Z}}
\newcommand{\Q}{\mathbf{Q}}
\newcommand{\C}{\mathbf{C}}

\tikzset
{
	bblockstyle/.style={
		draw,
		fill=white,
		line width=1pt,
		rounded corners,
		drop shadow={shadow blur steps=5,shadow xshift=1ex,shadow yshift=-1ex},
		text width=0.95\textwidth,
		inner sep=8pt,
		align=justify
	}
}
\newcommand{\bblock}[2]{
	\begin{center}
		\tikz \node[bblockstyle]
		{
			\textbf{#1.} #2 
		};
	\end{center}
}

\newcommand{\intro}[1]{
	\section{Vizsgakérdés}
	\begin{quote}
		\textit{#1}
	\end{quote}
}