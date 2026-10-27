%=====================================================================================================================================
% Class uebungsblatt by Igor Akkerman (c)2004,2005,2006
% Modification by Maria Kosche (c)2020
%
% This work may be distributed and/or modified under the
% conditions of the LaTeX Project Public License (latest version).
%
% The latest version of this license can be found at
%     http://www.latex-project.org/lppl.txt
%=====================================================================================================================================
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{uebungsblatt}[2006/10/24 by Igor Akkerman (c)2004,2005,2006 v1.5.0 Klasse zum Setzen von Uebungsblaettern edited by Maria Kosche (c)2020]
%=====================================================================================================================================

% Dokumentklassen-Optionen:
%     aufgeqno - In Gleichungsnummern soll die Aufgabennummer auftauchen (<Aufgabennummer>.<Gleichungsnummer>)
%     fleqn    - Gleichungen werden nicht zentriert sondern linksb�ndig angezeigt
%     leqno    - Gleichungsnummern werden nicht rechts sondern links von der Gleichung angezeigt
%     10pt     - Schriftgr��e: 10pt (Standard)
%     11pt     - Schriftgr��e: 11pt
%     12pt     - Schriftgr��e: 12pt

%--------------------------
% \begin{aufgabe} ... \end{aufgabe}
% Aufgabe
%--------------------------

%--------------------------
% \begin{aufgabe*}{<aufgabentitel>} ... \end{aufgabe*}
% Aufgabe mit erg�nzendem Titel <aufgabentitel>
%--------------------------
% Der Aufgabenz�hler wird NICHT erh�ht!
%--------------------------

% -------------------------------
% Lehrveranstaltungsinformationen
% -------------------------------
% Um Lehrveranstaltungsinformationen, die sich von Blatt zu Blatt derselben
% Lehrveranstaltung nicht ver�ndern, nicht in jede Datei eintragen zu m�ssen.
% Es wird automatisch versucht, die Datei "lv.tex" zu laden, die Angaben zur
% Lehrveranstaltung enthalten kann (Name der LV, Namen der Gruppenmitglieder usw.)
% Die Datei wird zuerst im aktuellen Verzeichnis gesucht. Wird sie dort nicht
% gefunden, wird sie im uebergeordneten Verzeichnis gesucht. Danach wird die
% Suche abgebrochen.
%--------------------------

%--------------------------
% \header{<header>}
% Setzt den Header auf <header>.
% Zum Zeilenumbruch wird \\ verwendet.
% Default: {}
%--------------------------

%--------------------------
% \blatttitel{<titel>}
% Setzt den Blatttitel auf <titel>.
% Zum Zeilenumbruch wird \\ verwendet.
% Der Titel wird bei Beginn des �bungsblatts verwendet.
% Default: Bearbeitung des \theblatt.~�bungsblatts
%--------------------------

%--------------------------
% \blattnummer{<nummer>}
% Setzt den Wert des Z�hlers blatt auf <nummer>.
%--------------------------

%--------------------------
% \abgabedatum{<abgabedatum>}
% Setzt das Abgabedatum auf <abgabedatum>.
% Das Abgabedatum wird bei der Abgabeinfo verwendet.
% Default: {}
%--------------------------

%--------------------------
% \abgabeinfo{<abgabeinfo>}
% Setzt die Abgabeinfo auf <abgabeinfo>.
% Die Abgabeinfo wird unterhalb des Blatttitels ausgegeben.
% Default: Abgabe bis \@abgabedatum.
%--------------------------

%--------------------------
% \lernmodul{<lernmodul>}
% Setzt das Lernmodul auf <lernmodul>.
% Das Lernmodul wird unterhalb der Abgabeinfo ausgegeben.
% Hier k�nnen Angaben �ber das zugeh�rige ILIAS-Lernmodul gemacht werden oder �hnliches.
% Default: {}
%--------------------------

%--------------------------
% \introtext{<introtext>}
% Setzt den Introtext auf <introtext>.
% Der Introtext wird unterhalb des Lernmodul ausgegeben.
% Hier k�nnen diverse Hinweise zur Abgabe angegeben werden.
% Default: {}
%--------------------------

%--------------------------
% \ifinhead{<danntext>}{<sonsttext>}
% <danntext> im inhead-Modus; <sonsttext> sonst
%--------------------------

%--------------------------
% \aufgabelabel{<labelmuster>}
% Setzt das Label der Aufgaben auf <labelmuster>.
% <labelmuster> ist ein Muster wie definiert im Paket counterlabelpattern.
%--------------------------

%--------------------------
% \loseunglabel{<loesunglabel>}
% Setzt das Label der L�sungen auf <loesunglabel>.
% Default: L�sung.
%--------------------------

% -----------------
% definierte Z�hler
% -----------------
% uebungsblatt : Nummer des �bungsblatts
%                Die Nummer wird automatisch bestimmt aus dem Dateinamen der Hauptdatei.
%                Dazu muss der Dateiname mit der Blattnummer beginnen.
%                (Vorsicht bei Leerzeichen: Der Dateiname k�nnte mit Anf�hrungszeichen beginnen.)
% aufgabe      : Nummer der aktuellen Aufgabe

%=====================================================================================================================================

% Initialisierungsteil
\RequirePackage{ifthen}
\newboolean{aufgeqno}
\newboolean{praesenz}
\newboolean{uebung}

\AddToHook{begindocument/end}{%
	\uebungsblatt@setzeabgabe%
	\@header%
	% Aufgabennummer zur�cksetzen
	\addtocounter{aufgabe}{-1}%
	\vspace*{2\baselineskip}%
	\par%
	\hspace*\fill\begin{Large}\textbf{\@blatttitel}\end{Large}\hspace*\fill%
	\ifset{\@blattuntertitel}{%
		\\[.5\baselineskip]%
		\hspace*\fill\begin{large}\textbf{\@blattuntertitel}\end{large}\hspace*\fill%
	}%
	\vspace*{2\baselineskip}%
	\par%
	\ifset{\@abgabedatum}{%
		\textbf{\@abgabeinfo}\hspace*\fill%
	}
	\ifset{\@lernmodul}{%
		\\ \textbf{\@lernmodul}\hspace*\fill%
	}
	\par%
	\@introtext%
	\par%
}

\AtEndDocument{%
	\label{lastpage}%
}

% Deklaration von Optionen
\DeclareOption {aufgeqno} {\setboolean{aufgeqno}{true}}%
\DeclareOption {10pt}     {\PassOptionsToClass{10pt}{akktecdoc}}%
\DeclareOption {11pt}     {\PassOptionsToClass{11pt}{akktecdoc}}%
\DeclareOption {12pt}     {\PassOptionsToClass{12pt}{akktecdoc}}%
\DeclareOption {praesenz} {\setboolean{praesenz}{true}}%
\DeclareOption {uebung}   {\setboolean{uebung}{true}}%

% Ausfuehrung von Optionen
\ProcessOptions

% Laden von Paketen
\LoadClass[widepage,longpage]{akktecdoc}
\RequirePackage{uebungsblatt}
\ifthenelse{\boolean{aufgeqno}} {%
	\RequirePackage{amsmath}%
	% Nummerierung der Gleichungen: (<Nr. der Aufgabe>.<Nr. der Gleichung>)
	\numberwithin{equation}{aufgabe}%
}{}

% -----------------
% Initialisierungen
% -----------------

% Seiteneinstellungen
\pagestyle{plain}

% Defaultwerte
\blatttitel{Bearbeitung des \theblatt.~\"Ubungsblatts}
\header{}
\aufgabelabel{{Aufgabe }1}
\loesunglabel{L\"osung.}
\abgabedatum{}
\abgabeinfo{Abgabe bis \@abgabedatum.}
\lernmodul{}
\introtext{}

% Bestimmen der �bungsblatt-Nummer
\extractnumber \jobname {blatt}
\typeout{[uebungsblatt] Dateiname: \jobname}
\typeout{[uebungsblatt] Uebungsblattnummer: \theblatt}


% -------------------------------------------
% Abgabetermine anhand der Blattnummer
% -------------------------------------------

% \abgabezeit{<zeit>}: Standard-Uhrzeit fuer alle Termine
\newcommand*\abgabezeit[1]{\def\uebungsblatt@abgabezeit{#1}}
\abgabezeit{10~Uhr}

% \abgabetermin[<zeit>]{<blattnummer>}{<TT.MM.JJJJ>}
\newcommand*\abgabetermin[3][\uebungsblatt@abgabezeit]{%
	\@namedef{uebungsblatt@termin@\number#2}{{#3}{#1}}%
}

% Sucht den Termin zur aktuellen Blattnummer und setzt \abgabedatum
\newcommand*\uebungsblatt@setzeabgabe{%
	\ifthenelse{\equal{\@abgabedatum}{}}{%
		\@ifundefined{uebungsblatt@termin@\number\value{blatt}}{%
			\ifthenelse{\boolean{praesenz}}{}{%
				\ClassWarningNoLine{uebungsblatt}{Kein Abgabetermin fuer Blatt \number\value{blatt} gefunden}%
			}%
		}{%
			\expandafter\expandafter\expandafter\uebungsblatt@verarbeite
			\csname uebungsblatt@termin@\number\value{blatt}\endcsname
		}%
	}{}%
}
\newcommand*\uebungsblatt@verarbeite[2]{\uebungsblatt@zerlege#1\@nil{#2}}
\def\uebungsblatt@zerlege#1.#2.#3\@nil#4{%
	\abgabedatum{\uebungsblatt@wochentag{#1}{#2}{#3}, \number#1.~\uebungsblatt@monat{#2}, #4}%
}

% Rechenhilfen (abgerundete Division und Rest, fuer positive Zahlen)
\newcommand*\uebungsblatt@fdiv[2]{((2*(#1)-(#2)+1)/(2*(#2)))}
\newcommand*\uebungsblatt@mod[2]{((#1)-(#2)*\uebungsblatt@fdiv{#1}{#2})}
\newcommand*\uebungsblatt@jahr[2]{(#2-\ifnum#1<3 1\else 0\fi)}
\newcommand*\uebungsblatt@mkorr[1]{(\ifcase\numexpr#1\relax\or 0\or 3\or 2\or 5\or 0\or 3\or 5\or 1\or 4\or 6\or 2\or 4\fi)}

% \uebungsblatt@wochentag{<tag>}{<monat>}{<jahr>} -> Mo, Di, ...
\newcommand*\uebungsblatt@wochentag[3]{%
	\ifcase\numexpr\uebungsblatt@mod{%
			\uebungsblatt@jahr{#2}{#3}
			+\uebungsblatt@fdiv{\uebungsblatt@jahr{#2}{#3}}{4}
			-\uebungsblatt@fdiv{\uebungsblatt@jahr{#2}{#3}}{100}
			+\uebungsblatt@fdiv{\uebungsblatt@jahr{#2}{#3}}{400}
			+\uebungsblatt@mkorr{#2}+#1}{7}\relax
		So\or Mo\or Di\or Mi\or Do\or Fr\or Sa\fi
}

% \uebungsblatt@monat{<monat>} -> Januar, Februar, ...
\newcommand*\uebungsblatt@monat[1]{%
	\ifcase\numexpr#1\relax\or Januar\or Februar\or M\"arz\or April\or Mai\or Juni\or
		Juli\or August\or September\or Oktober\or November\or Dezember\fi
}

% -------------------------------------------
% Laden der Korrekten Lehrveranstaltungsinfo
% -------------------------------------------

\RequirePackage{xstring}

\newcommand*\uebungsblatt@ladelv[1]{%
	\typeout{[uebungsblatt] Suche Datei '../#1'}%
	\InputIfFileExists{../#1}{%
		\typeout{[uebungsblatt] Datei '#1' in uebergeordnetem Verzeichnis gefunden. Datei wird geladen.}%
	}{%
		\typeout{[uebungsblatt] Datei '#1' nicht gefunden.}%
	}%
}

\ifthenelse{\boolean{praesenz}}{%
	\uebungsblatt@ladelv{lv-praesenz.tex}%
}{%
	\uebungsblatt@ladelv{lv-uebung.tex}%
}


