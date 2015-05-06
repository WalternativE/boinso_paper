%%
%% This is file `twbook.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% twbook.dtx  (with options: `class')
%% 
%% Dies ist ein automatisch generierter File
%% 
%% Diese klasse dient der Definition einer einheitlichen Corporate Identity an der FH Technikum Wien.
%% Die genaue Beschreibung entnehmen Sie bitte der beigelegten Dokumentation twbook.pdf.
%% Diese wurde ebenso automatisch generiert.
%% 
%% Aktuelle SVN-Version der Datei: 71
%% 
%% Copyright (C) 2014 Richard Otrebski
%% <otrebski@technikum-wien.at>
%% Copyright (C) 2013 Dr. Andreas Drauschke
%% <andreas.drauschke@technikum-wien.at>
%% 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{twbook}[2013/03/25 v0.03 Standard LaTeX Dokumenten-Klasse fuer Dokumente der FH Technikum Wien]


\newcommand{\sprache}{english}
\DeclareOption{german}{\renewcommand*{\sprache}{german}}
\DeclareOption{ngerman}{\renewcommand*{\sprache}{ngerman}}
\DeclareOption{english}{\renewcommand*{\sprache}{english}}

\newcommand{\degreecourse}{TW}
\DeclareOption{TW}{\renewcommand*{\degreecourse}{TW}}
\DeclareOption{BBE}{\renewcommand*{\degreecourse}{BBE}}
\DeclareOption{BEE}{\renewcommand*{\degreecourse}{BEE}}
\DeclareOption{BEL}{\renewcommand*{\degreecourse}{BEL}}
\DeclareOption{BEW}{\renewcommand*{\degreecourse}{BEW}}
\DeclareOption{BIC}{\renewcommand*{\degreecourse}{BIC}}
\DeclareOption{BIF}{\renewcommand*{\degreecourse}{BIF}}
\DeclareOption{BIW}{\renewcommand*{\degreecourse}{BIW}}
\DeclareOption{BMR}{\renewcommand*{\degreecourse}{BMR}}
\DeclareOption{BST}{\renewcommand*{\degreecourse}{BST}}
\DeclareOption{BVU}{\renewcommand*{\degreecourse}{BVU}}
\DeclareOption{BWI}{\renewcommand*{\degreecourse}{BWI}}
\DeclareOption{MBE}{\renewcommand*{\degreecourse}{MBE}}
\DeclareOption{MEE}{\renewcommand*{\degreecourse}{MEE}}
\DeclareOption{MES}{\renewcommand*{\degreecourse}{MES}}
\DeclareOption{MGR}{\renewcommand*{\degreecourse}{MGR}}
\DeclareOption{MGS}{\renewcommand*{\degreecourse}{MGS}}
\DeclareOption{MIC}{\renewcommand*{\degreecourse}{MIC}}
\DeclareOption{MIE}{\renewcommand*{\degreecourse}{MIE}}
\DeclareOption{MIT}{\renewcommand*{\degreecourse}{MIT}}
\DeclareOption{MIW}{\renewcommand*{\degreecourse}{MIW}}
\DeclareOption{MMR}{\renewcommand*{\degreecourse}{MMR}}
\DeclareOption{MSE}{\renewcommand*{\degreecourse}{MSE}}
\DeclareOption{MST}{\renewcommand*{\degreecourse}{MST}}
\DeclareOption{MTE}{\renewcommand*{\degreecourse}{MTE}}
\DeclareOption{MTI}{\renewcommand*{\degreecourse}{MTI}}
\DeclareOption{MTM}{\renewcommand*{\degreecourse}{MTM}}
\DeclareOption{MUT}{\renewcommand*{\degreecourse}{MUT}}
\DeclareOption{MWI}{\renewcommand*{\degreecourse}{MWI}}

\newcommand{\doctype}{}
\newcommand{\doctypeprint}{}
\DeclareOption{Bachelor}{\renewcommand*{\doctype}{BACHELORARBEIT}}
\DeclareOption{Master}{\renewcommand*{\doctype}{MASTERARBEIT}}
\DeclareOption{Seminar}{\renewcommand*{\doctype}{SEMINARARBEIT}}
\DeclareOption{Projekt}{\renewcommand*{\doctype}{PROJEKTBERICHT}}
\DeclareOption{Praktikum}{\renewcommand*{\doctype}{PRAKTIKUMSBERICHT}}
\DeclareOption{Labor}{\renewcommand*{\doctype}{LABORPROTOKOLL}}

\newcommand{\cover}{PICs/TW}

\ProcessOptions\relax

\LoadClass[a4paper,fontsize=11pt,twoside=false,%
headings=normal,toc=listof,listof=entryprefix,%
listof=nochaptergap,bibliography=totoc]{scrbook}
\RequirePackage{scrhack}
\RequirePackage{color,xcolor}
\RequirePackage{xifthen}
\RequirePackage{ifpdf}
\RequirePackage{wallpaper}
\RequirePackage{palatino}
\RequirePackage{scrpage2}
\RequirePackage{acronym}
\RequirePackage{amsmath,amssymb,amsfonts,amstext}
\RequirePackage[\sprache]{babel}
\ifstr{\sprache}{ngerman}
{%
 %ngerman
 %change \sprache to german to translate everything else; babel's already loaded
 \renewcommand*{\sprache}{german}
}%
{%
 %german & english
 %Do nothing; everything's fine
}%
\RequirePackage{array}
\RequirePackage{iftex}
\ifPDFTeX
 % PDFLaTeX
 \ifpdf
   \RequirePackage[pdftex]{hyperref}
   \RequirePackage{graphicx}
 \else
   \RequirePackage[dvips]{hyperref}
   \RequirePackage[dvips]{graphicx}
 \fi
\else
 \ifXeTeX
   % XeTeX
   \RequirePackage{hyperref}
   \RequirePackage{graphicx}
 \else
   \ifLuaTeX
     % LuaTeX
     \RequirePackage{hyperref}
     \RequirePackage{graphicx}
   \else
     % Some obscure Engine!
     \ClassError{twbook}{%
      The TeX-Engine you are using is not supported!\MessageBreak%
      Try a different Engine!\Messagebreak%
      Maybe PDFTeX, XeTeX or LuaTeX!
     }{%
      Something is wrong with the Tex-Engine you are using.\MessageBreak%
      We don't support that one!}
   \fi
\fi
\fi

\providecommand*{\@noopterr}[1]{}
\renewcommand*{\@noopterr}[1]{%
   \PackageWarning{babel}%
   {You haven't loaded the option #1\space yet.\MessageBreak%
   Rerun to set the right option.\MessageBreak%
   Sie haben die Option #1\space aktuell nicht geladen.\MessageBreak%
   Kompilieren Sie noch einmal um die korrekte Option zu setzen}}

\definecolor{TWgreen}{RGB}{8,140,82}
\definecolor{TWblue}{RGB}{16,132,214}

\hypersetup{colorlinks=true, linkcolor=black, linkbordercolor=white,%
citecolor=black, citebordercolor=white,%
filecolor=black, filebordercolor=white,%
urlcolor=TWblue, urlbordercolor=white}
\urlstyle{sf}

\addtocounter{tocdepth}{0}
\addtokomafont{pagenumber}{\sffamily}
\pagestyle{scrheadings}
\clearscrheadings
\ihead[]{}
\chead[]{}
\ohead[]{}
\ifoot[]{}
\cfoot[]{}
\ofoot[\footnotesize\pagemark]{\footnotesize\pagemark}
\renewcommand*{\chapterpagestyle}{plain}

\RequirePackage{remreset}
 \@removefromreset{figure}{chapter}
 \@removefromreset{table}{chapter}
 \@removefromreset{equation}{chapter}

\renewcommand*{\theequation}{\sffamily\arabic{equation}}
\renewcommand*{\thefigure}{\sffamily\small\arabic{figure}}
\renewcommand*{\thetable}{\sffamily\small\arabic{table}}
\setkomafont{caption}{\sffamily\small}
\setkomafont{captionlabel}{\sffamily\small}

\renewcommand*{\extrarowheight}{3pt}
\addtolength{\textheight}{5\baselineskip}
\addtolength{\textwidth}{38pt}
\setlength{\headheight}{1.3\baselineskip}
\renewcommand*{\baselinestretch}{1.21% \changes{v0.3}{2013/03/24}{Dokumentation implementiert}
}
\sloppy\tolerance=10000

\ifstr{\doctype}{}
{
  \addtolength{\oddsidemargin}{-33pt}
  \addtolength{\evensidemargin}{-33pt}
  \setkomafont{chapter}{\color{TWblue}\mdseries\Huge}
  \setkomafont{section}{\color{TWblue}\mdseries\huge}
  \setkomafont{subsection}{\color{TWblue}\mdseries\Large}
  \setkomafont{subsubsection}{\bfseries\normalsize}}
{
  \renewcommand*{\cover}{PICs/Arbeiten.pdf}
  \addtolength{\oddsidemargin}{-19pt}
  \addtolength{\evensidemargin}{-19pt}
  \setkomafont{chapter}{\mdseries\huge}
  \setkomafont{section}{\mdseries\LARGE}
  \setkomafont{subsection}{\mdseries\Large}
  \setkomafont{subsubsection}{\bfseries\normalsize}}

\renewcommand*\chapter{\par\global\@topnum\z@\@afterindentfalse%
\secdef\@chapter\@schapter}

\ifstr{\sprache}{english}{%
  \ifstr{\doctype}{BACHELORARBEIT}{%
    \renewcommand*{\doctype}{BACHELORTHESIS}}{}
  \ifstr{\doctype}{MASTERARBEIT}{%
    \renewcommand*{\doctype}{MASTERTHESIS}}{}
  \ifstr{\doctype}{SEMINARARBEIT}{%
    \renewcommand*{\doctype}{SEMINAR PAPER}}{}
  \ifstr{\doctype}{PROJEKTBERICHT}{%
    \renewcommand*{\doctype}{PROJECT REPORT}}{}
  \ifstr{\doctype}{PRAKTIKUMSBERICHT}{%
    \renewcommand*{\doctype}{INTERNSHIP REPORT}}{}
  \ifstr{\doctype}{Laborbericht}{%
    \renewcommand*{\doctype}{LABORATORY REPORT}}}{}

  \renewcommand*{\doctypeprint}{\doctype}
  \ifstr{\doctypeprint}{MASTERARBEIT}{%
    \renewcommand*{\doctypeprint}{MASTER THESIS}}{}
  \ifstr{\doctypeprint}{MASTERTHESIS}{%
    \renewcommand*{\doctypeprint}{MASTER THESIS}}{}
  \ifstr{\doctypeprint}{BACHELORTHESIS}{%
    \renewcommand*{\doctypeprint}{BACHELOR PAPER}}{}

\ifstr{\sprache}{german}{%
\ifstr{\degreecourse}{TW}{\renewcommand*{\cover}{PICs/TW}}{}
\ifstr{\degreecourse}{BBE}{\renewcommand*{\cover}{PICs/BBE}%
\renewcommand*{\degreecourse}{Biomedical Engineering}}{}
  \ifstr{\degreecourse}{BEE}{\renewcommand*{\cover}{PICs/BEE}%
\renewcommand*{\degreecourse}{Urbane Erneuerbare Energietechniken}}{}
\ifstr{\degreecourse}{BEL}{\renewcommand*{\cover}{PICs/BEL}%
\renewcommand*{\degreecourse}{Elektronik}}{}
\ifstr{\degreecourse}{BEW}{\renewcommand*{\cover}{PICs/BEW}%
\renewcommand*{\degreecourse}{Elektronik/\allowbreak{}Wirtschaft}}{}
\ifstr{\degreecourse}{BIC}{\renewcommand*{\cover}{PICs/BIC}%
\renewcommand*{\degreecourse}{Informations- und %
  Kommunikationssysteme}}{}
\ifstr{\degreecourse}{BIF}{\renewcommand*{\cover}{PICs/BIF}%
\renewcommand*{\degreecourse}{Informatik}}{}
\ifstr{\degreecourse}{BIW}{\renewcommand*{\cover}{PICs/BIW}%
\renewcommand*{\degreecourse}{Internationales %
  Wirtschaftsingenieurwesen}}{}
\ifstr{\degreecourse}{BMR}{\renewcommand*{\cover}{PICs/BMR}%
\renewcommand*{\degreecourse}{Mechatronik/\allowbreak{}Robotik}}{}
\ifstr{\degreecourse}{BST}{\renewcommand*{\cover}{PICs/BST}%
\renewcommand*{\degreecourse}{Sports Equipment Technology}}{}
\ifstr{\degreecourse}{BVU}{\renewcommand*{\cover}{PICs/BVU}%
\renewcommand*{\degreecourse}{Verkehr und Umwelt}}{}
\ifstr{\degreecourse}{BWI}{\renewcommand*{\cover}{PICs/BWI}
\renewcommand*{\degreecourse}{Wirtschaftsinformatik}}{}
\ifstr{\degreecourse}{MBE}{\renewcommand*{\cover}{PICs/MBE_en}%
\renewcommand*{\degreecourse}{Biomedical Engineering Sciences}}{}
\ifstr{\degreecourse}{MEE}{\renewcommand*{\cover}{PICs/MEE}%
\renewcommand*{\degreecourse}{Erneuerbare Urbane Energiesysteme}}{}
\ifstr{\degreecourse}{MES}{\renewcommand*{\cover}{PICs/MES}%
\renewcommand*{\degreecourse}{Embedded Systems}}{}
\ifstr{\degreecourse}{MGR}{\renewcommand*{\cover}{PICs/MGR}%
\renewcommand*{\degreecourse}{Gesundheits- und %
  Rehabilitationstechnik}}{}
\ifstr{\degreecourse}{MGS}{\renewcommand*{\cover}{PICs/MGS}%
\renewcommand*{\degreecourse}{Game Engineering und Simulation}}{}
\ifstr{\degreecourse}{MIC}{\renewcommand*{\cover}{PICs/MIC}%
\renewcommand*{\degreecourse}{Informationsmanagement und %
  Computersicherheit}}{}
\ifstr{\degreecourse}{MIE}{\renewcommand*{\cover}{PICs/MIE}%
\renewcommand*{\degreecourse}{Industrielle Elektronik}}{}
\ifstr{\degreecourse}{MIT}{\renewcommand*{\cover}{PICs/MIT}%
\renewcommand*{\degreecourse}{Intelligent Transport Systems}}{}
\ifstr{\degreecourse}{MIW}{\renewcommand*{\cover}{PICs/MIW}%
\renewcommand*{\degreecourse}{Internationales %
  Wirtschaftsingenieurwesen}}{}
\ifstr{\degreecourse}{MMR}{\renewcommand*{\cover}{PICs/MMR}%
\renewcommand*{\degreecourse}{Mechatronik/\allowbreak{}Robotik}}{}
\ifstr{\degreecourse}{MSE}{\renewcommand*{\cover}{PICs/MSE}%
\renewcommand*{\degreecourse}{Multimedia und Softwareentwicklung}}{}
\ifstr{\degreecourse}{MST}{\renewcommand*{\cover}{PICs/MST}%
\renewcommand*{\degreecourse}{Sports Equipment Technology}}{}
\ifstr{\degreecourse}{MTE}{\renewcommand*{\cover}{PICs/MTE_en}%
\renewcommand*{\degreecourse}{Tissue Engineering and Regenerative %
Medicine}}{}
\ifstr{\degreecourse}{MTI}{\renewcommand*{\cover}{PICs/MTI}%
\renewcommand*{\degreecourse}{Telekommunikation und %
  Internettechnologien}}{}
\ifstr{\degreecourse}{MTM}{\renewcommand*{\cover}{PICs/MTM}%
\renewcommand*{\degreecourse}{Innovations- und %
  Technologiemanagement}}{}
\ifstr{\degreecourse}{MUT}{\renewcommand*{\cover}{PICs/MUT}%
\renewcommand*{\degreecourse}{Technisches Umweltmanagement und %
  {\"O}kotoxikologie}}{}
\ifstr{\degreecourse}{MWI}{\renewcommand*{\cover}{PICs/MWI_en}%
\renewcommand*{\degreecourse}{Wirtschaftsinformatik}}
\ifstr{\doctype}{}{}{\renewcommand*{\cover}{PICs/Arbeiten.pdf}}}{}

\ifstr{\sprache}{english}{%
\ifstr{\degreecourse}{TW}{\renewcommand*{\cover}{PICs/TW}}{}
\ifstr{\degreecourse}{BBE}{\renewcommand*{\cover}{PICs/BBE_en}%
\renewcommand*{\degreecourse}{Biomedical Engineering}}{}
\ifstr{\degreecourse}{BEE}{\renewcommand*{\cover}{PICs/BEE_en}%
\renewcommand*{\degreecourse}{Urban Renewable Energy Technologies}}{}
\ifstr{\degreecourse}{BEL}{\renewcommand*{\cover}{PICs/BEL_en}%
\renewcommand*{\degreecourse}{Electronic Engineering}}{}
\ifstr{\degreecourse}{BEW}{\renewcommand*{\cover}{PICs/BEW_en}%
\renewcommand*{\degreecourse}{Electronics and Business}}{}
\ifstr{\degreecourse}{BIC}{\renewcommand*{\cover}{PICs/BIC_en}%
\renewcommand*{\degreecourse}{Information and Communication Systems %
and Services}}{}
\ifstr{\degreecourse}{BIF}{\renewcommand*{\cover}{PICs/BIF_en}%
\renewcommand*{\degreecourse}{Computer Science}}{}
\ifstr{\degreecourse}{BIW}{\renewcommand*{\cover}{PICs/BIW_en}%
\renewcommand*{\degreecourse}{International Business and %
Engineering}}{}
\ifstr{\degreecourse}{BMR}{\renewcommand*{\cover}{PICs/BMR_en}%
\renewcommand*{\degreecourse}{Mechatronics/\allowbreak{}Robotics}}{}
\ifstr{\degreecourse}{BST}{\renewcommand*{\cover}{PICs/BST_en}%
\renewcommand*{\degreecourse}{Sports Equipment Technology}}{}
\ifstr{\degreecourse}{BVU}{\renewcommand*{\cover}{PICs/BVU_en}%
\renewcommand*{\degreecourse}{Transport and Environment}}{}
\ifstr{\degreecourse}{BWI}{\renewcommand*{\cover}{PICs/BWI_en}%
\renewcommand*{\degreecourse}{Business Informatics}}{}
\ifstr{\degreecourse}{MBE}{\renewcommand*{\cover}{PICs/MBE_en}%
\renewcommand*{\degreecourse}{Biomedical Engineering Sciences}}{}
\ifstr{\degreecourse}{MEE}{\renewcommand*{\cover}{PICs/MEE_en}%
\renewcommand*{\degreecourse}{Renewable Urban Energy Systems}}{}
\ifstr{\degreecourse}{MES}{\renewcommand*{\cover}{PICs/MES_en}%
\renewcommand*{\degreecourse}{Embedded Systems}}{}
\ifstr{\degreecourse}{MGR}{\renewcommand*{\cover}{PICs/MGR_en}%
\renewcommand*{\degreecourse}{Healthcare and Rehabilitation %
  Technology}}{}
\ifstr{\degreecourse}{MGS}{\renewcommand*{\cover}{PICs/MGS_en}%
\renewcommand*{\degreecourse}{Game Engineering and Simulation %
  Technology}}{}
\ifstr{\degreecourse}{MIC}{\renewcommand*{\cover}{PICs/MIC_en}%
\renewcommand*{\degreecourse}{Information Management and IT %
  Security}}{}
\ifstr{\degreecourse}{MIE}{\renewcommand*{\cover}{PICs/MIE_en}%
\renewcommand*{\degreecourse}{Industrial Electronics}}{}
\ifstr{\degreecourse}{MIT}{\renewcommand*{\cover}{PICs/MIT_en}%
\renewcommand*{\degreecourse}{Intelligent Transport Systems}}{}
\ifstr{\degreecourse}{MIW}{\renewcommand*{\cover}{PICs/MIW_en}%
\renewcommand*{\degreecourse}{International Business and %
Engineering}}{}
\ifstr{\degreecourse}{MMR}{\renewcommand*{\cover}{PICs/MMR_en}%
\renewcommand*{\degreecourse}{Mechatronics/\allowbreak{}Robotics}}{}
\ifstr{\degreecourse}{MSE}{\renewcommand*{\cover}{PICs/MSE_en}%
\renewcommand*{\degreecourse}{Multimedia and Software Engineering}}{}
\ifstr{\degreecourse}{MST}{\renewcommand*{\cover}{PICs/MST_en}%
\renewcommand*{\degreecourse}{Sports Equipment Technology}}{}
\ifstr{\degreecourse}{MTE}{\renewcommand*{\cover}{PICs/MTE_en}%
\renewcommand*{\degreecourse}{Tissue Engineering and Regenerative %
Medicine}}{}
\ifstr{\degreecourse}{MTI}{\renewcommand*{\cover}{PICs/MTI_en}%
\renewcommand*{\degreecourse}{Telecommunications- and Internet %
  Technologies}}{}
\ifstr{\degreecourse}{MTM}{\renewcommand*{\cover}{PICs/MTM_en}%
\renewcommand*{\degreecourse}{Innovation and Technology Management}}{}
\ifstr{\degreecourse}{MUT}{\renewcommand*{\cover}{PICs/MUT_en}%
\renewcommand*{\degreecourse}{Environmental Management and %
  Ecotoxicolgy}}{}
\ifstr{\degreecourse}{MWI}{\renewcommand*{\cover}{PICs/MWI_en}%
\renewcommand*{\degreecourse}{Information Systems Management}}{}
\ifstr{\doctype}{}{}{\renewcommand*{\cover}{PICs/Arbeiten.pdf}}}{}

\newcommand*{\@supervisor}{}
\newcommand{\supervisor}[1]{\gdef\@supervisor{#1}}
\newcommand*{\@secondsupervisor}{}
\newcommand{\secondsupervisor}[1]{\gdef\@secondsupervisor{#1}}
\newcommand*{\@studentnumber}{}
\newcommand{\studentnumber}[1]{\gdef\@studentnumber{#1}}
\newcommand*{\@place}{}
\newcommand{\place}[1]{\gdef\@place{#1}}
\newcommand*{\@kurzfassung}{}
\newcommand{\kurzfassung}[1]{\gdef\@kurzfassung{#1}}
\newcommand*{\@schlagworte}{}
\newcommand{\schlagworte}[1]{\gdef\@schlagworte{#1}}
\newcommand*{\@outline}{}
\newcommand{\outline}[1]{\gdef\@outline{#1}}
\newcommand*{\@keywords}{}
\newcommand{\keywords}[1]{\gdef\@keywords{#1}}
\newcommand*{\@acknowledgements}{}
\newcommand{\acknowledgements}[1]{\gdef\@acknowledgements{#1}}
\renewcommand*\maketitle[1][1]{%
  \renewcommand*{\familydefault}{\sfdefault}\selectfont
  \normalfont\selectfont
\begin{titlepage}
\pagestyle{empty}
  \ThisTileWallPaper{\paperwidth}{\paperheight}{\cover}

\ifstr{\doctype}{}
{
\color{TWblue}
\null\vspace{451pt}
    \setcounter{page}{-9}

\hspace*{-26pt}\begin{minipage}{1.15\linewidth}
  \huge\sffamily \scalebox{1.75}{\@title}
\end{minipage}\vspace{23pt}

\hspace*{-24.75pt}\begin{minipage}{1.15\linewidth}
  \huge\sffamily \scalebox{1.25}{\@extratitle}
\end{minipage}\vspace{47pt}
\setcounter{page}{0}}
{
  \color{white}
  \null\vspace{8pt}
  \setcounter{page}{-9}

\hspace*{-30pt}\scalebox{1.85}{\sffamily\textbf\doctypeprint}
\vspace{17pt}

\hspace*{-34pt}\scalebox{1.5}{%
  \ifstr{\degreecourse}{Technisches Umweltmanagement und
    {\"O}kotoxikologie}
  {
    \begin{minipage}{0.63\linewidth}
      \ifstr{\sprache}{german}{\ifstr{\doctype}{MASTERARBEIT}{zur Erlangung des akademischen Grades\\\glqq{}Master of Science in Engineering\grqq{}\\im Studiengang }{\ifstr{\doctype}{BACHELORARBEIT}{zur Erlangung des akademischen Grades\\\glqq{}Bachelor of Science in Engineering\grqq{}\\im Studiengang }{Im Studiengang}}}{\ifstr{\doctype}{MASTERTHESIS}{Thesis submitted in partial fulfillment of the requirements for the degree of Master of Science in Engineering at the University of Applied Sciences Technikum Wien - Degree Program }{\ifstr{\doctype}{BACHELORTHESIS}{Term paper submitted in partial fulfillment of the requirements for the degree of Bachelor of Science in Engineering at the University of Applied Sciences Technikum Wien - Degree Program }{In}}}
      \degreecourse
    \end{minipage}\vspace{5pt}}
  {
    \begin{minipage}{0.75\linewidth}
      \ifstr{\sprache}{german}{\ifstr{\doctype}{MASTERARBEIT}{zur Erlangung des akademischen Grades\\\glqq{}Master of Science in Engineering\grqq{}\\im Studiengang }{\ifstr{\doctype}{BACHELORARBEIT}{zur Erlangung des akademischen Grades\\\glqq{}Bachelor of Science in Engineering\grqq{}\\im Studiengang }{Im Studiengang}}}{\ifstr{\doctype}{MASTERTHESIS}{Thesis submitted in partial fulfillment of the requirements for the degree of Master of Science in Engineering at the University of Applied Sciences Technikum Wien - Degree Program }{\ifstr{\doctype}{BACHELORTHESIS}{Term paper submitted in partial fulfillment of the requirements for the degree of Bachelor of Science in Engineering at the University of Applied Sciences Technikum Wien - Degree Program }{In}}}
      \degreecourse\vspace{5pt}
    \end{minipage}}}

  \vspace{54.7pt}
  \hspace*{-30pt}\begin{minipage}{1.1\linewidth}
   \huge\bfseries\sffamily \@title
\end{minipage}\vspace{47pt}

\hspace*{-30pt}\Large
\ifstr{\sprache}{german}{Ausgef{\"u}hrt von:~}{By:~}\@author

\hspace*{-30pt}\Large
\ifstr{\sprache}{german}{Personenkennzahl:~}{Student Number:~}
  \@studentnumber\vspace{0.9\baselineskip}

\hspace*{-30pt}\Large
  \ifx\@secondsupervisor\@empty
\ifstr{\sprache}{german}{BegutachterIn:}{Supervisor:~}
   \begin{minipage}[t]{0.6\linewidth}
   \@supervisor
   \end{minipage}\vspace{0.8\baselineskip}
  \else
\ifstr{\sprache}{german}{BegutachterInnen:}{Supervisors:~}
   \begin{minipage}[t]{0.6\linewidth}
  \@supervisor\\
   \@secondsupervisor
  \end{minipage}\vspace{0.8\baselineskip}
  \fi

\hspace*{-30pt}\Large\@place
\ifstr{\sprache}{german}{, den~}{,~} \today

\clearpage
\color{black}\normalsize\mdseries

\ifstr{\doctype}{PROJEKTBERICHT}{
  \ifx\@kurzfassung\@empty
   \ifx\@schlagworte\@empty
   \else\clearpage\null\vfill\paragraph*{Schlagworte:}\@schlagworte
   \fi
  \else\clearpage
   \chapter*{Kurzfassung}
   \@kurzfassung
   \ifx\@schlagworte\@empty
   \else\vfill\paragraph*{Schlagworte:}\@schlagworte
   \fi
  \fi}{}
\ifstr{\doctype}{PROJECT REPORT}{
  \ifx\@outline\@empty
   \ifx\@keywords\@empty
   \else\clearpage\null\vfill\paragraph*{Keywords:}\@keywords
   \fi
  \else\clearpage
   \chapter*{Abstract}
   \@outline
   \ifx\@keywords\@empty
   \else\vfill\paragraph*{Keywords:}\@keywords
   \fi
  \fi}{}

\ifstr{\doctype}{BACHELORARBEIT}{
  \chapter*{Eidesstattliche Erkl{\"a}rung}
    \glqq Ich, als Autor / als Autorin und Urheber / Urheberin der
    vorliegenden Arbeit, best{\"a}tige mit meiner Unterschrift die
    Kenntnisnahme der einschlägigen urheber- und hochschulrechtlichen
    Bestimmungen (vgl. etwa \S\S 21, 46 und 57 UrhG idgF sowie \S 11
    Satzungsteil Studienrechtliche Bestimmungen / Prüfungsordnung der
    FH Technikum Wien).\\[\baselineskip]
    Ich erkl{\"a}re insbesondere korrekt fremde Inhalte, gleich welcher
    Form, {\"u}bernommen zu haben und bin mir bei Nachweis fehlender
    Eigen- und Selbstst{\"a}ndigkeit sowie dem Nachweis eines
    Vorsatzes zur Erschleichung einer positiven Beurteilung dieser Arbeit
    der Konsequenzen bewusst, die von der Studiengangsleitung ausgesprochen
    werden k{\"o}nnen (vgl. \S 11 Abs. 1 Satzungsteil Studienrechtliche
    Bestimmungen / Pr{\"u}fungsordnung der FH Technikum Wien).\\[\baselineskip]
    Weiters best{\"a}tige ich, dass ich die vorliegende Arbeit bis dato
    nicht ver{\"o}ffentlicht und weder in gleicher noch in {\"a}hnlicher
    Form einer anderen Pr{\"u}fungsbeh{\"o}rde vorgelegt habe. Ich versichere,
    dass die abgegebene Version jener im Uploadtool
    entspricht.\grqq\vspace{4\baselineskip}

  \noindent \@place, \today\hspace{0.4\linewidth}Unterschrift
 \ifx\@kurzfassung\@empty
  \ifx\@schlagworte\@empty
  \else\clearpage\null\vfill\paragraph*{Schlagworte:}\@schlagworte
  \fi
\else\clearpage
  \chapter*{Kurzfassung}
  \@kurzfassung
  \ifx\@schlagworte\@empty
  \else\vfill\paragraph*{Schlagworte:}\@schlagworte
  \fi
\fi

\ifx\@outline\@empty
  \ifx\@keywords\@empty
  \else\clearpage\null\vfill\paragraph*{Keywords:}\@keywords
  \fi
\else\clearpage
  \chapter*{Abstract}
  \@outline
  \ifx\@keywords\@empty
  \else\vfill\paragraph*{Keywords:}\@keywords
  \fi
\fi

\ifx\@acknowledgements\@empty
\else\clearpage
  \chapter*{Danksagung}\@acknowledgements
\fi

\clearpage
\tableofcontents

    \clearpage
    \setcounter{page}{1}}{


\ifstr{\doctype}{MASTERARBEIT}{
  \chapter*{Eidesstattliche Erkl{\"a}rung}
    \glqq Ich, als Autor / als Autorin und Urheber / Urheberin der
    vorliegenden Arbeit, best{\"a}tige mit meiner Unterschrift die
    Kenntnisnahme der einschlägigen urheber- und hochschulrechtlichen
    Bestimmungen (vgl. etwa \S\S 21, 46 und 57 UrhG idgF sowie \S 11
    Satzungsteil Studienrechtliche Bestimmungen / Prüfungsordnung der
    FH Technikum Wien).\\[\baselineskip]
    Ich erkl{\"a}re insbesondere korrekt fremde Inhalte, gleich welcher
    Form, {\"u}bernommen zu haben und bin mir bei Nachweis fehlender
    Eigen- und Selbstst{\"a}ndigkeit sowie dem Nachweis eines
    Vorsatzes zur Erschleichung einer positiven Beurteilung dieser Arbeit
    der Konsequenzen bewusst, die von der Studiengangsleitung ausgesprochen
    werden k{\"o}nnen (vgl. \S 11 Abs. 1 Satzungsteil Studienrechtliche
    Bestimmungen / Pr{\"u}fungsordnung der FH Technikum Wien).\\[\baselineskip]
    Weiters best{\"a}tige ich, dass ich die vorliegende Arbeit bis dato
    nicht ver{\"o}ffentlicht und weder in gleicher noch in {\"a}hnlicher
    Form einer anderen Pr{\"u}fungsbeh{\"o}rde vorgelegt habe. Ich versichere,
    dass die abgegebene Version jener im Uploadtool
    entspricht.\grqq\vspace{4\baselineskip}

  \noindent \@place, \today\hspace{0.4\linewidth}Unterschrift
\ifx\@kurzfassung\@empty
  \ifx\@schlagworte\@empty
  \else\clearpage\null\vfill\paragraph*{Schlagworte:}\@schlagworte
  \fi
\else\clearpage
  \chapter*{Kurzfassung}
  \@kurzfassung
  \ifx\@schlagworte\@empty
  \else\vfill\paragraph*{Schlagworte:}\@schlagworte
  \fi
\fi

\ifx\@outline\@empty
  \ifx\@keywords\@empty
  \else\clearpage\null\vfill\paragraph*{Keywords:}\@keywords
  \fi
\else\clearpage
  \chapter*{Abstract}
  \@outline
  \ifx\@keywords\@empty
  \else\vfill\paragraph*{Keywords:}\@keywords
  \fi
\fi

\ifx\@acknowledgements\@empty
\else\clearpage
  \chapter*{Danksagung}\@acknowledgements
\fi

\clearpage
\tableofcontents

    \clearpage
    \setcounter{page}{1}}{


\ifstr{\doctype}{BACHELORTHESIS}{
  \chapter*{Declaration}
    ``As author and creator of this work to hand, I confirm with my
    signature knowledge of the relevant copyright regulations
    governed by higher education acts (for example see \S\S 21, 46 and
    57 UrhG (Austrian copyright law) as amended as well as \S 11 of
    the Statute on Studies Act Provisions / Examination Regulations of
    the UAS Technikum Wien).\\[\baselineskip]
    In particular I declare that I have made use of third-party content
    correctly, regardless what form it may have, and I am aware of any
    consequences I may face on the part of the degree program director if
    there should be evidence of missing autonomy and independence or
    evidence of any intent to fraudulently achieve a pass mark for this
    work (see \S 11 para. 1 Statute on Studies Act Provisions / Examination
    Regulations of the UAS Technikum Wien).\\[\baselineskip]
    I further declare that up to this date I have not published the work to
    hand nor have I presented it to another examination board in the same or
    similar form. I affirm that the version submitted matches the version in
    the upload tool.\grqq\vspace{4\baselineskip}

  \noindent Place, Date\hspace{0.4\linewidth}Signature
\ifx\@kurzfassung\@empty
  \ifx\@schlagworte\@empty
  \else\clearpage\null\vfill\paragraph*{Schlagworte:}\@schlagworte
  \fi
\else\clearpage
  \chapter*{Kurzfassung}
  \@kurzfassung
  \ifx\@schlagworte\@empty
  \else\vfill\paragraph*{Schlagworte:}\@schlagworte
  \fi
\fi

\ifx\@outline\@empty
  \ifx\@keywords\@empty
  \else\clearpage\null\vfill\paragraph*{Keywords:}\@keywords
  \fi
\else\clearpage
  \chapter*{Abstract}
  \@outline
  \ifx\@keywords\@empty
  \else\vfill\paragraph*{Keywords:}\@keywords
  \fi
\fi

\ifx\@acknowledgements\@empty
\else\clearpage
  \chapter*{Acknowledgements}\@acknowledgements
\fi

\clearpage
\tableofcontents

    \clearpage
    \setcounter{page}{1}}{


\ifstr{\doctype}{MASTERTHESIS}{
  \chapter*{Declaration}
    ``As author and creator of this work to hand, I confirm with my
    signature knowledge of the relevant copyright regulations
    governed by higher education acts (for example see \S\S 21, 46 and
    57 UrhG (Austrian copyright law) as amended as well as \S 11 of
    the Statute on Studies Act Provisions / Examination Regulations of
    the UAS Technikum Wien).\\[\baselineskip]
    In particular I declare that I have made use of third-party content
    correctly, regardless what form it may have, and I am aware of any
    consequences I may face on the part of the degree program director if
    there should be evidence of missing autonomy and independence or
    evidence of any intent to fraudulently achieve a pass mark for this
    work (see \S 11 para. 1 Statute on Studies Act Provisions / Examination
    Regulations of the UAS Technikum Wien).\\[\baselineskip]
    I further declare that up to this date I have not published the work to
    hand nor have I presented it to another examination board in the same or
    similar form. I affirm that the version submitted matches the version in
    the upload tool.\grqq\vspace{4\baselineskip}

  \noindent Place, Date\hspace{0.4\linewidth}Signature
  \ifx\@kurzfassung\@empty
  \ifx\@schlagworte\@empty
  \else\clearpage\null\vfill\paragraph*{Schlagworte:}\@schlagworte
  \fi
\else\clearpage
  \chapter*{Kurzfassung}
  \@kurzfassung
  \ifx\@schlagworte\@empty
  \else\vfill\paragraph*{Schlagworte:}\@schlagworte
  \fi
\fi

\ifx\@outline\@empty
  \ifx\@keywords\@empty
  \else\clearpage\null\vfill\paragraph*{Keywords:}\@keywords
  \fi
\else\clearpage
  \chapter*{Abstract}
  \@outline
  \ifx\@keywords\@empty
  \else\vfill\paragraph*{Keywords:}\@keywords
  \fi
\fi

\ifx\@acknowledgements\@empty
\else\clearpage
  \chapter*{Acknowledgements}\@acknowledgements
\fi

\clearpage
\tableofcontents

    \clearpage
    \setcounter{page}{1}}{

\clearpage
\tableofcontents

    \clearpage
    \setcounter{page}{1}}}}}}
  \end{titlepage}
 }

\ifstr{\doctype}{}
{
  \renewcommand*{\labelitemi}{
    \huge\raisebox{0.2ex}{$\centerdot$}\hspace{-5pt}}
  \renewcommand*{\labelitemii}{
    \huge\raisebox{-0.15ex}{-}\hspace{-5pt}}
  \renewcommand*{\labelitemiii}{
    \LARGE\raisebox{0.3ex}{$\centerdot$}\hspace{-5pt}}
}{}
%% Verfasser der Änderung: Otrebski
\endinput
%%
%% End of file `twbook.cls'.
