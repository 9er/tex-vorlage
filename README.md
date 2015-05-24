# TeX Projekt Vorlage

(german only so far, sorry)

## TeX

Einige Einstellungen (siehe "dokument.tex")
- Deutsch, UTF-8
- Schriftgröße 12, Helvetica, 3cm Ränder
- A4-Papier

Die Vorlage enthält bereits Seiten für
- Inhaltsverzeichnis
- Abkürzungsverzeichnis
- Abbildungsverzeichnis
- Literatur
- Anhang
- ein Inhaltskapitel

Einige Pakete z.B. für Grafiken, Formeln oder Mathematische Symbole werden geladen.

### Inhaltsverzeichnis
Das Inhaltsverzeichnis wird automatisch erstellt. Die Tiefe des Inhaltsverzeichnisses ist konfigurierbar:
```
\setcounter{tocdepth}{3}
```

### Links
Dank hyperref-Package sind Inhaltsverzeichnis, Zitat-Referenzen und URLs als Links im PDF. Markierungen der Links werden unterdrückt (Befehl "hidelinks")

## Makefile

Im enthaltenen Makefile kann man die Haupt-Tex-Datei (hier: "dokument.tex") definieren:
```sh
MAIN=dokument
```
und dann mit "make" (latexmk vorrausgesetzt) das PDF bauen lassen:
```sh
$ make
```

Um ungewollte LaTeX-Files loszuwerden, kann man latexmk aufräumen lassen. Auch das geht per make:
```sh
$ make clean
```

## .vimrc

Die mitgelieferte .vimrc setzt einen Hook, mit dem vim beim Speichern einer \*.tex Datei das PDF neu baut, indem "make" aufgerufen wird, falls man sich im Projektordner befindet.
```vim
:autocmd BufWritePost *.tex make
```

Damit die lokale .vimrc geladen wird, muss in einer bereits geladenen .vimrc (z.B. im Home) diese Option gesetzt sein
```vim
set exrc
```

## .gitignore
Auch eine .gitignore ist dabei. Falls das TeX-Projekt mit Git versioniert werden soll, wird damit verhindert, dass z.B. aux- oder log-Files von latex oder latexmk ins repo aufgenommen werden.

