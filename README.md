# Home Grown

Thuis bouwen aan je lichaam: houding, kracht en bereik. Eén HTML-bestand, geen framework, geen backend.

**Live:** https://macmoproo-jpg.github.io/hg-7m4q2x9k/

## Bestanden

| Bestand | Wat |
|---|---|
| `index.html` | de hele app — styles, data en JavaScript in één bestand |
| `manifest.json` | naam, kleuren, iconen voor installatie op de telefoon |
| `sw.js` | service worker: offline werking + altijd verse HTML |
| `icon-*.png` | app-icoon (512, 192, 180) |
| `deploy.sh` | publiceren in één commando |
| `_test/` | testschermen (staat niet in git) |

## Aanpassen en publiceren

1. Pas `index.html` aan.
2. `./deploy.sh "wat je veranderde"`
3. Ongeveer een minuut later staat het op de link. De app haalt de nieuwe versie op bij de volgende keer openen.

## Waar de app uit bestaat

- **State**: `let S = {}` met `log`, `blk`, `test`, `min`, `badges`, `why`, `slot`, `warm`, `cool`.
  Opgeslagen in `localStorage` onder de sleutel `grondwerk-v1`. Nooit hernoemen — dan is de voortgang weg.
- **Data**: `P` (de week), `WARM`, `COOL`, `BLOCKS`, `TESTS`, `LIB` (oefeningenbibliotheek), `POOL` (verrassing).
- **Schermen**: `viewToday`, `viewLib`, `viewProgress`, `viewDaily`, `viewTest`, `viewRef`.
- **Timer**: `startTimer(sec,label,next)`, `runChain()` voor de circuit-modus.
- **Opslagsleutel per dag**: `dkey()` geeft `YYYY-MM-DD`; alles hangt daaraan, niet aan de weekdag.

## Regels die ik heb aangehouden

- Geen `auto_sell`-achtige automation, geen backend, geen tracking, geen externe requests behalve YouTube-links.
- Voortgang blijft op het toestel. Back-up via Naslag → Download back-up.
- Bij wijzigingen aan `sw.js`: de cachematrix ophogen (`homegrown-v3` → `v4`), anders houdt de telefoon de oude bestanden.
