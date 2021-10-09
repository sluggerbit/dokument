\NeedsTeXFormat{LaTeX2e}

% The document class name
\ProvidesClass{dvd}

% https://tex.stackexchange.com/a/121829
\DeclareOption{protokoll}{%
	% \newlength{\textwidth/3-1em}

	\NewDocumentEnvironment{närvarande_förtroendevalda}{
			O{
				\begin{center}
			    \begin{tabular}{ @{}p{\textwidth/3 - 1em} p{\textwidth/3 - 1em} p{\textwidth/3 - 1em} @{}}
			    \hline
			    Befattning & Namn & Närvarande\\
			    \hline}
		    O{
		    	\hline
		    	\end{tabular}
		    	\end{center}
		    }
		    b
		}
		{#1 #3 #2}{}

	\NewDocumentCommand{\förtroendevald}{m m m}{%
		#1 & #2 & #3\\
	}

	\NewDocumentEnvironment{närvarande_medlemmar}{
			O{
				\begin{center}
			    \begin{tabular}{@{}p{\textwidth/2 - 1em} p{\textwidth/2 - 1em}@{}}
			    \hline
			    Namn & Avikelser\\
			    \hline}
		    O{
		    	\hline
		    	\end{tabular}
		    	\end{center}
		    }
		    b
		}
		{#1 #3 #2}{}

	\NewDocumentCommand{\medlem}{m O{}}{%
		#1 & #2\\
	}

	\NewDocumentCommand{\styrelsesignaturer}{}{%
		\newpage
		\begin{tabular}{@{}p{\textwidth/2-2em} p{\textwidth/2-2em}@{}}
		    \textbf{Mötesordförande:}
		    \\ \\ \\
		    \hrulefill & \hrulefill\\
		    Underskrift & Namnförtydligande\\

		    \\ \\ \\
		    \textbf{Mötessekreterare:}
			\\ \\ \\
		    \hrulefill & \hrulefill\\
		    Underskrift & Namnförtydligande\\

			\\ \\ \\
			\textbf{Justerare:}
		    \\ \\ \\
		    \hrulefill & \hrulefill\\
		    Underskrift & Namnförtydligande\\
		\end{tabular}
	}

	\NewDocumentCommand{\stämmosignaturer}{}{%
		\newpage
		\begin{tabular}{@{}p{\textwidth/2-2em} p{\textwidth/2-2em}@{}}
		    \textbf{Mötesordförande:}
		    \\ \\ \\
		    \hrulefill & \hrulefill\\
		    Underskrift & Namnförtydligande\\

			\\ \\ \\
			\textbf{Vice mötesordförande:}
		    \\ \\ \\
		    \hrulefill & \hrulefill\\
		    Underskrift & Namnförtydligande\\

		    \\ \\ \\
		    \textbf{Mötessekreterare:}
			\\ \\ \\
		    \hrulefill & \hrulefill\\
		    Underskrift & Namnförtydligande\\

			\\ \\ \\
			\textbf{Justerare:}
		    \\ \\ \\
		    \hrulefill & \hrulefill\\
		    Underskrift & Namnförtydligande\\

		    \\ \\ \\
			\textbf{Justerare:}
		    \\ \\ \\
		    \hrulefill & \hrulefill\\
		    Underskrift & Namnförtydligande\\
		\end{tabular}
	}

	\AtEndOfClass{%
		\newlist{attsatser}{enumerate}{1}
		\setlist[attsatser]{label=\textbf{\arabic*. Att}, widest=00.00, align=left, leftmargin=*}
		% \setlist[description]{widest=00.00, align=left, leftmargin=*}

		% Bredder för tabellen med alla styrelseledamöter
		% \setlength{\styrelseledamoterTabell}{\textwidth/3-1em}
	}
}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrartcl}}
\ProcessOptions\relax
\PassOptionsToPackage{headlines=3, footlines=3}{typearea}
% The document class to base this class on
\LoadClass{scrartcl}

\RequirePackage[thresholdtype=words]{csquotes}

% Enable getting the page number of the last page in this document
\RequirePackage{lastpage}

% Enable arithmetic with lengths
\RequirePackage{calc}

% A dirty way to hold a variable
\NewDocumentCommand{\shorttitle}{}{\@title}

\RequirePackage[headsepline, footsepline, plainfootsepline]{scrlayer-scrpage}

\setkomafont{pageheadfoot}{}

% The page headers
\lohead{\ifx\@author\@empty\else\@author\\\fi Datavetenskapsdivisionen\\Göta studentkår}
\cohead{\textbf{\shorttitle{}}\ifx\@subtitle\@empty\else\\\@subtitle\fi}
\rohead{\@date}

% The page footers
\lofoot*{Datavetenskapsdivisionen\\Rännvägen 8\\412 58 Göteborg}
\cofoot*{Sida \thepage\ av \pageref{LastPage}}
\rofoot*{styrelsen@dvet.se\\\url{www.dvet.se}\\Org.nr: 802527-9707}

% Add space between paragraphs
\setlength{\parskip}{\baselineskip}
\setlength{\parindent}{0em}

% Set the language of the document to Swedish
\RequirePackage{polyglossia}
\setdefaultlanguage{swedish}

% Enable user control over the layout of the basic list environments: enumerate, itemize, and description
\RequirePackage[shortlabels, inline]{enumitem}

% Automatically create links for cross-referencing and PDF chapter bookmarks
\PassOptionsToPackage{hyphens}{url}
\RequirePackage[bookmarks]{hyperref}

\RequirePackage[table]{xcolor}
