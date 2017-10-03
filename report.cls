% Class informations
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{article}[2015/12/16 Example LaTeX class]


% Loads and Definitions
\LoadClass[12pt, a4paper]{article}
\RequirePackage[utf8]{inputenc}
\RequirePackage{geometry}
\RequirePackage{fancyhdr}
\RequirePackage[pdftex]{graphicx}
\RequirePackage{fancybox}
\RequirePackage{multicol}
\RequirePackage[table]{xcolor}
\RequirePackage[explicit]{titlesec}
%\RequirePackage{showframe}
\RequirePackage{graphicx}
\RequirePackage{tikz}
\RequirePackage{bbding}
\RequirePackage{parskip}
\RequirePackage[colorlinks=true, urlcolor=blue]{hyperref}


\definecolor{slcolor}{HTML}{000066}
\definecolor{color1}{RGB}{0,0,90} % Color of the article title and sections
\definecolor{color2}{RGB}{200,200,200} % Color of the boxes behind the abstract and headings


% Options
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

% Margins
\geometry{textwidth=17.0cm, left=1.0cm, top=0.6cm, width=17.5cm,
  headheight=3.2cm, marginparwidth=2.0cm, headsep=1.2cm,
  footskip=1.0cm, height=25.0cm, bottom=4.0cm, 
  includeheadfoot=True}

%----------------------------------------------------------------------
%	New/renew Commands and Global settings
%----------------------------------------------------------------------
\newcommand{\myemail}{jmrosal@guideinvestimentos.com.br}
\newcommand{\myphone}{+55 11 3576 6613}
\newcommand{\NewsItem}[1]{%
		\usefont{T1}{augie}{m}{n}
		\large #1 \vspace{2pt}
		\par \normalsize \normalfont}


\newcommand{\Headsep}{
  \color{slcolor}\HorRule{1pt}
}


% Define rulers
\renewcommand{\headrulewidth}{0.8pt}	% no bar on top of page
\renewcommand{\footrulewidth}{0.4pt}	% bar on bottom of page
\renewcommand{\headrule}{\hbox to\headwidth{
    \color{slcolor}\leaders\hrule height \headrulewidth\hfill}}


% set default font
\renewcommand*{\familydefault}{\sfdefault}
\renewcommand{\sfdefault}{pnc}

% Define Separators
\newcommand{\HorRule}[1]{\noindent\rule{\linewidth}{#1}} % Creating a horizontal rule
\newcommand{\SepRule}{\noindent							 % Creating a separator
  \begin{center}
    \rule{250pt}{1pt}
  \end{center}
}
\newcommand{\headlinecolor}{\normalcolor}


% Paragraphs
\setlength{\parindent}{0.0pt}
\setlength{\parskip}{0.2cm}

% Section header

%----------------------------------------------------------------------
%	SECTION/SUBSECTION/PARAGRAPH SET-UP
%----------------------------------------------------------------------
\titleformat{\part}
  {\color{slcolor}\Large\sffamily\bfseries}
  {}
  {0em}
  {\colorbox{color2!10}{\parbox{\dimexpr\linewidth-2\fboxsep\relax}{#1}}}
  []

\titleformat{\section}
  {\color{slcolor}\large\sffamily\bfseries}
  {}
  {0em}
  {\colorbox{color2!10}{\parbox{\dimexpr\linewidth-2\fboxsep\relax}{\arabic{section}. #1}}}
  []

\titleformat{name=\section,numberless}
  {\color{slcolor}\large\sffamily\bfseries}
  {}
  {0em}
  {\colorbox{color2!10}{\parbox{\dimexpr\linewidth-2\fboxsep\relax}{\centering#1}}}
  []

\titleformat{\subsection}
  {\color{slcolor}\sffamily\bfseries}
  {\thesubsection}
  {0.5em}
  {#1}
  []

\titleformat{\subsubsection}
  {\sffamily\small\bfseries}
  {\thesubsubsection}
  {0.5em}
  {#1}
  []

\titleformat{\paragraph}[runin]
  {\sffamily\small\bfseries}
  {}
  {0em}
  {#1}

\titlespacing*{\part}{0pc}{3ex \@plus4pt \@minus3pt}{0pt}
\titlespacing*{\section}{0pc}{3ex \@plus4pt \@minus3pt}{0pt}
\titlespacing*{\subsection}{0pc}{2.5ex \@plus3pt \@minus2pt}{0pt}
\titlespacing*{\subsubsection}{0pc}{2ex \@plus2.5pt \@minus1.5pt}{0pt}
\titlespacing*{\paragraph}{0pc}{1.5ex \@plus2pt \@minus1pt}{10pt}


% -----------------------------------------------------------------
% Document layout
% -----------------------------------------------------------------
% document header and footing
\fancypagestyle{firstpagestyle}
{
   \fancyhf{}
   \lhead{\includegraphics[width=3.2cm]{./logo/Logo_Guide.png}
   }

   \chead{\color{slcolor} \usefont{T1}{fvm}{sb}{n}
     \Large
     \newtitle \\
     }
    \rhead{\normalsize \color{slcolor} \usefont{T1}{fvm}{sb}{n}
      \footnotesize\upshape{\authorname} \\
      %\footnotesize\upshape{\href{mailto:\myemail}{\authorname}} \\
        \today}

      \cfoot{ \color{slcolor}
    \footnotesize
    \it Economic Research \& Fixed Income \\
    Institutional Desk \\
    \myphone \\
    \upshape{\href{mailto:\myemail}{\myemail}}\\
    Guide Investimentos 
  }

  \rfoot{\thepage}

     \renewcommand{\headrulewidth}{0.0pt}

   }

   % Default headers and foots
   \pagestyle{fancy}
   \lhead{\includegraphics[width=3.2cm]{./logo/Logo_Guide.png}}
   \rhead{\large \color{slcolor}
     \usefont{T1}{fvm}{sb}{n} 
     \newtitle}
   \cfoot{ \color{slcolor}
    \footnotesize
    \it Economic Research \& Fixed Income \\
    Institutional Desk \\
    \myphone \\
    \upshape{\href{mailto:\myemail}{\myemail}}\\
    Guide Investimentos \\
  }

  \rfoot{\footnotesize \vspace{0.5cm}\thepage}


