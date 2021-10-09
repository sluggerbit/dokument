# Dokument

## Struktur

- `output/`
- `protokoll/`
- `README.md`
- `styrdokument/`
- `templates/`
	- `latex/`
		- `dvd.cls`

## LaTeX

### Kompilering

När du ska kompilera ett dokument ska du först sätta miljövariabeln `TEXINPUTS` till `templates/latex:`.
Sätt **inte** detta globalt i din `~/.bashrc` eller `~/.bash_profile`, för då kan du inte längre kompilera LaTeX dokument utanför den här mappen.
Du sätter miljövariabeln genom att köra kommandot

- `export TEXINPUTS="templatex/latex:"` i Bash eller ZSH; eller
- `set -x TEXINPUTS "templates/latex:"` i Fish

beroende på vilket shell du har som standard.
Detta behöver du göra varje gång du har ska kompilera LaTeX dokumenten i ett nytt shell.

För att sedan komailera dokumenten behöver du först navigera till rootmappen i dokumentsamlingen (mappen som denna fil ligger i).
Här ska du sedan kommandot

```
lualatex --output-directory=output/ sökväg/till/fil.tex
```

Till exempel om man önskar kompilera divisionens stadgar ska man köra kommandot

```
lualatex --output-directory=output/ styrdokument/Datavetenskapsdivisionen\ stadga.tex
```

Jag (Slaget) ska försöka automatisera allt detta genom Makefiler vid ett senare tillfälle.
