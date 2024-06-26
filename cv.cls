\ProvidesClass{cv}
\LoadClass[11pt]{article}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%	PACKAGES AND PREAMBLE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Set margins to 1 inch (standard for word docs)
\usepackage[margin=1in]{geometry}
\usepackage{datetime} % Set revised date to specific format
\usepackage{fancyhdr} % Special page numbering
\usepackage{hanging} % Allow for hanging paragraphs
\usepackage{titlesec} % Section font sizing
\usepackage{etaremune} % Allow for reverse numbering of publications
\usepackage{hyperref} % Allow links
\usepackage{breakurl} % Line break possible for links
\PassOptionsToPackage{hyphens}{url}\usepackage{hyperref}
\usepackage[symbol]{footmisc} % Use symbols in the footnotes instead of numbers

%----------------------------------------------------------------------------------------
%	Page numbers and headers
%----------------------------------------------------------------------------------------

% Allow alternative numbering on pages
\pagestyle{fancy}

% Remove default page numbers
\fancyhf{} 

% Remove header decorative line
\renewcommand{\headrulewidth}{0pt}

% Use this format for revised date
\mdyyyydate

% Header with page number and date revised
\rhead{
	McKee page \thepage\\
	\textit{Revised \today}\\
	\vspace{-3mm}
}

% First section name and head
\newcommand{\name}[1]{%
	\textbf{
	\centerline{CURRICULUM VITAE}
	\centerline{#1}
	}
}

% Second section name and head
\newcommand{\parttwo}[1]{%
	\textbf{
	\centerline{PART II}
	}
}

% Third section name and head
\newcommand{\partthree}[1]{%
	\textbf{
	\centerline{PART III}
	}
}


%----------------------------------------------------------------------------------------
%	Paragraph formatting
%----------------------------------------------------------------------------------------

% No indent of additional "paragraphs"
\setlength\parindent{0pt}

% Set line spacing
\setlength{\parskip}{0.5em}

% Size for sections
\titleformat{\section}
	{\normalfont\fontsize{12pt}{12pt}\bfseries}{\thesection}{1em}{}
  
% Size for subsections
\titleformat{\subsection}
	{\normalfont\fontsize{12pt}{12pt}\itshape\bfseries}{\thesubsection}{1em}{}
  
% Size for subsubsections
\titleformat{\subsubsection}
	{\normalfont\fontsize{12pt}{12pt}\itshape}{\thesubsubsection}{1em}{}

% Formatting of links	
\hypersetup{
    colorlinks=true,    
    urlcolor=blue,
    breaklinks=true
}

\urlstyle{same}

% No indentation of numbered publication list
\newenvironment{pubenum}
  {\renewcommand\labelenumi{[\theenumi]}%
   \etaremune[
     topsep=0pt,
     itemsep=1em,
     parsep=0pt,
     partopsep=0pt,
     labelwidth=0pt,
     labelsep=5.475pt,
     itemindent=5.475pt,
     leftmargin=0pt,
   ]\renewcommand{\makelabel}[1]{##1\hss}%
}
  {\endetaremune}

%----------------------------------------------------------------------------------------
%	Helpful functions
%----------------------------------------------------------------------------------------

% Add email with link
\newcommand{\emailcontact}[1]{%
	\href{mailto:#1}{#1}
}

% Add DOI with link
\newcommand{\doi}[1]{%
	DOI: \href{https://doi.org/#1}{#1}
}