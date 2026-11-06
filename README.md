# Super Mario 64 — Discord Theme (Vencord / BetterDiscord)

Rot-schwarzes Theme im Super-Mario-64-Look mit halbtransparentem Mario-Bild im Hintergrund
und gelben Akzenten (Message-Bar, Sterne, Eingabezeile als „? Block“).

![Vorschau](preview.png)

## Installation

**Vencord**
1. Vencord → Einstellungen → Themes → **Themes-Ordner öffnen**
   (Windows: `%appdata%\Vencord\themes`)
2. `SuperMario64.theme.css` **und** `mario64-bg.png` in diesen Ordner kopieren
   (beide Dateien müssen zusammen bleiben – das Bild wird relativ geladen)
3. Themes neu laden (`Strg+R`) und den Schalter **Super Mario 64 — Rot & Schwarz** aktivieren

**BetterDiscord**
Gleiches Vorgehen: beide Dateien in den Themes-Ordner, dann in den Einstellungen aktivieren.

## Anpassen

Die wichtigsten Werte stehen ganz oben in der CSS-Datei:

```css
--sm64-bg: url("mario64-bg.png");   /* anderes Bild? hier eintragen */
--sm64-bg-size: cover;              /* cover | contain | 68vmin   */
--sm64-bg-position: center;         /* center | right center | …  */
--sm64-bg-opacity: 0.55;            /* Deckkraft des Bildes       */

/* Panels (halbtransparent, Bild scheint durch) */
--sm64-panel: rgba(10, 10, 12, 0.62);
--sm64-panel-strong: rgba(10, 10, 12, 0.80);

--sm64-red: #e52521;
--sm64-star: #fbd000;
```

Das Bild liegt vollflächig hinter der ganzen App (`background-size: cover`,
`background-attachment: fixed`). Darüber liegen ein roter Farbschleier und
halbtransparente Panels – deshalb wirkt es wie im
[Theme-Preview](https://gibbu.github.io/ThemePreview/) „leicht transparent“.

## Dateien

| Datei | Zweck |
|---|---|
| `SuperMario64.theme.css` | das Theme |
| `mario64-bg.png` | halbtransparentes Hintergrundbild |
| `preview.html` + `preview.css` | HTML-Vorschau (im Browser öffnen) |
| `preview.png` | Screenshot für dieses README |
| `install.ps1` | kopiert Theme + Bild in den Vencord-Themes-Ordner (Windows) |

## Lizenz

Theme-CSS frei verwendbar. Super Mario 64 und alle Figuren sind Eigentum von Nintendo —
dies ist ein inoffizielles Fan-Projekt ohne Verbindung zu Nintendo.
