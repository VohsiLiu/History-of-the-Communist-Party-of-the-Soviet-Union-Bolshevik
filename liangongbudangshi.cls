\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{liangongbudangshi}

\newif\if@twopages

\DeclareOption{twopages}{
  \@twopagestrue
}

\ProcessOptions\relax

% 设置纸张为A4，字号
\LoadClass[cs4size,a4paper,12pt,twoside]{ctexart}   

% 设置页边距
\usepackage[top=2.5cm, bottom=3.2cm, left=3.18cm, right=3.18cm]{geometry}

\usepackage{color}
\usepackage{xcolor}

% 设置中文支持
\usepackage{xeCJK}
\setCJKmainfont[BoldFont={FZHei-B01},ItalicFont={FZKai-Z03}]{FZShuSong-Z01} 
\setCJKsansfont[BoldFont={FZHei-B01}]{FZKai-Z03} 
\setCJKmonofont[BoldFont={FZHei-B01}]{FZFangSong-Z02}
\setCJKfamilyfont{zhsong}{FZShuSong-Z01}
\setCJKfamilyfont{zhhei}{FZHei-B01} 
\setCJKfamilyfont{zhkai}[BoldFont={FZHei-B01}]{FZKai-Z03} 
\setCJKfamilyfont{zhfs}[BoldFont={FZHei-B01}]{FZFangSong-Z02}
\newCJKfontfamily\xbsong{FZXiaoBiaoSong-B05S}
\newCJKfontfamily\cusong{FZCuSong-B09S}

% 英文修改为Times New Roman字体
\setmainfont{Times New Roman}[SmallCapsFont=TeX Gyre Termes:+smcp]

% 设置页眉页脚
\usepackage{fancyhdr}
\fancypagestyle{tocstyle}{
    \fancyhf{}
    \renewcommand{\headrulewidth}{0pt}
    \fancyfoot[C]{\small{\thepage}}
}
\fancypagestyle{docstyle}{
    \fancyhf{}
    \renewcommand{\headrulewidth}{0pt}
    \fancyfoot[C]{\small{\thepage}}
}
\setlength{\headheight}{15pt}


% 设置段落缩进
\usepackage{indentfirst}
\setlength{\parindent}{2em}

% 设置行距
\usepackage{setspace}
\setstretch{1.5}
\setlength{\parskip}{0pt}

\usepackage[stable]{footmisc}

\usepackage{hyperref}
\hypersetup{
	colorlinks=true,
	linkcolor=black,
	urlcolor=black
}

% 设置标题格式
\usepackage{titlesec}
\titleformat{\section}[block]{\centering\xbsong\zihao{-2}\xeCJKsetup{CJKglue=\hskip 1.5pt}}{\thesection}{0em}{\phantomsection}[]

\titleformat{\subsection}[block]{\centering\heiti \setstretch{1.35} \zihao{-3} }{\thesubsection}{0em}{\phantomsection}[]


% 两个空格大小
\newcommand{\q}{\ \ }

% 引用中用楷书
\AtBeginEnvironment{quotation}{\kaishu}

% 罗马数字
\usepackage{amssymb}
\newcommand{\rmnum}[1]{\romannumeral #1}
\newcommand{\Rmnum}[1]{\expandafter\@slowromancap\romannumeral #1@}

% 着重号
\usepackage{xeCJKfntef}
\xeCJKsetup{underdot/symbol={\normalfont^^b7}}
\newcommand{\dotemph}[1]{\CJKunderdot{#1}}

\usepackage{perpage}

\usepackage{float}
\endinput
