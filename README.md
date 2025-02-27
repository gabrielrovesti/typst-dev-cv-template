# Typst CV Template for Developers

Questo repository fornisce un esempio completo di come creare un Curriculum Vitae dall’aspetto professionale utilizzando [**Typst**](https://typst.app/). È pensato per sviluppatori (o chiunque voglia un CV personalizzabile) che desiderano sfruttare la flessibilità di un linguaggio di markup moderno.

Sono presenti due versioni: una vecchia ed una nuova. Sono entrambe realizzate con l'ausilio di Claude.ai, modelli Sonnet ed Haiku essendo una soluzione custom creata da zero adattandosi a qualcosa di leggibile e utile. 

## Caratteristiche Principali
- **Layout su due colonne** (colonna sinistra per contatti, competenze e certificazioni; colonna destra per esperienze lavorative e formazione).
- **Colori personalizzabili**: i colori principali e di sfondo sono facilmente modificabili (`primary-color`, `light-gray`, ecc.).
- **Funzioni di utilità**:
  - Titoli fancy (`fancy-heading`) e sezioni strutturate (`section-heading`).
  - Skill bar grafiche (`skill-bar`) per mostrare competenze con percentuali.
- **Compatto e professionale**: ideale per chi cerca un CV pulito e moderno.

## Requisiti
- **Typst** installato (versione 0.5.0 o superiore).  
  Puoi scaricarlo e installarlo seguendo le istruzioni sul sito ufficiale: [typst.app](https://typst.app/).

## Come Usarlo
1. **Clona o scarica** questo repository:
   ```bash
   git clone https://github.com/tuo-username/typst-cv-template.git
   ```
2. **Installa Typst** (se non l’hai già fatto).
3. **Apri** il file principale (ad esempio `main.typ` o `cv.typ`) in un editor di testo.
4. **Personalizza** le sezioni:
   - Modifica le informazioni personali (nome, contatti, esperienze, competenze, formazione, ecc.).
   - Adatta i colori (`primary-color`, `light-gray`, `text-color`) se desideri un tema differente.
   - Aggiorna le skill bar con le tue percentuali di competenza.
5. **Compila** il file Typst in PDF:
   ```bash
   typst compile main.typ
   ```
   Otterrai un PDF pronto da condividere.

## Struttura del Progetto
- **`main.typ`**: File principale con il layout del CV e le informazioni personali.  
- **`gabriel.jpg`**: Esempio di immagine per la foto profilo (puoi sostituirla con la tua).  
- **`README.md`**: Il file che stai leggendo.  

## Esempio di Codice Principale
Ecco uno snippet del cuore del CV (puoi trovarlo completo in `main.typ`):

```typst
#let primary-color = rgb("#0366d6")
#let light-gray = rgb("#f0f2f5")
#let text-color = rgb("#24292e")

#set page(
  paper: "a4",
  margin: (x: 1.5cm, y: 1.8cm),
)

// Esempio di sezione
#section-heading[Esperienza Professionale]
== Docente di Sistemi e Reti
ITIS Galileo Ferraris, Padova #h(1fr) #text(style: "italic", size: 9pt)[09/2024 - 06/2025]

#block(fill: light-gray, inset: 8pt, radius: 4pt)[
  - Docente teorico di Sistemi e Reti con focus su architetture di rete e sicurezza per Terza/Quarta Superiore
  - Svolgimento di lezioni frontali ed esercitazioni pratiche
  - Preparazione di materiale didattico e valutazioni
]
```

## Personalizzazione
- **Colori**: cambia i valori `#0366d6`, `#f0f2f5` o `#24292e` con quelli che preferisci.
- **Sezioni**: aggiungi o rimuovi blocchi come `Esperienza Professionale`, `Formazione`, `Competenze`, ecc.
- **Font**: modifica `set text(font: "New Computer Modern")` per usare font diversi.

## Suggerimenti
- **Mantenere la coerenza**: utilizza lo stesso stile per titoli, sottotitoli e paragrafi.
- **Lunghezza**: se hai molte esperienze o progetti, valuta l’aggiunta di una pagina extra con `#pagebreak()`.
- **Responsive su PDF**: Typst non è un framework web, ma le dimensioni A4 assicurano un’ottima leggibilità e stampa.

## Licenza
Questo template è rilasciato sotto licenza MIT (o la licenza che preferisci inserire). Sentiti libero di modificarlo e riutilizzarlo per le tue esigenze.

## Contributi
Se hai idee o migliorie (es. aggiungere icone, layout a più colonne, ecc.), apri una **Pull Request** o un **Issue** su GitHub. Tutti i contributi sono benvenuti!

---
Speriamo che questo template Typst ti aiuti a creare un CV ordinato e professionale in modo rapido ed efficiente. Buon lavoro!