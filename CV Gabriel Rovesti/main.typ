#let primary-color = rgb("#0366d6")
#let light-gray = rgb("#f0f2f5")
#let text-color = rgb("#24292e")

#set page(
  paper: "a4",
  margin: (x: 1.5cm, y: 1.8cm),
)

#set text(font: "New Computer Modern", size: 10.5pt, fill: text-color)
#set par(justify: true)

#show heading: set text(font: "New Computer Modern Sans")

// Funzioni di utilità
#let fancy-heading(body) = [
  #block(
    width: 100%,
    fill: primary-color, 
    inset: 4pt, 
    radius: 4pt, 
    text(fill: white, weight: "bold", 1.1em, align(left)[#body])
  )
]

#let section-heading(body) = [
  #v(8pt)
  #text(fill: primary-color, weight: "bold", 1.1em, body)
  #v(-8pt)
  #line(length: 100%, stroke: 1pt + primary-color)
]

#let skill-bar(percentage) = {
  box(
    width: 100%,
    height: 6pt,
    radius: 3pt,
    stroke: none,
    fill: light-gray,
  )[
    #box(
      width: percentage,
      height: 6pt,
      radius: 3pt,
      fill: primary-color
    )
  ]
}

// Layout del CV compattato
#grid(
  columns: (1.2fr, 2.3fr),
  gutter: 1.5em,
  [
    // Colonna sinistra
    #block(fill: light-gray, inset: 12pt, radius: 10pt, width: 100%)[
      #align(center)[
        #image("gabriel.jpg", width: 75%)
        #v(4pt)
        = Gabriel Rovesti
        #v(-3pt)
        #text(style: "italic", size: 11pt)[Full Stack Developer | Professore | Studente in Computer Science a Padova | Tutor]
      ]
      
      #v(8pt)
      #fancy-heading[Contatti]
      #v(3pt)
      #block(fill: white, inset: 6pt, radius: 5pt)[
        #grid(
          columns: (5em, auto),
          gutter: 10pt,
          [*Indirizzo:*], [Via Tito Speri, 2\\B,\ 35141, Padova],
          [*Cell:*], [3466889789],
          [*Email:*], [rovestigabriel \ \@gmail.com],
          [*Progetti:*], [gabrielrovesti \ .github.io],
          [*LinkedIn:*], [gabriel-rovesti- \ 601404220],
          [*GitHub:*], [gabrielrovesti],
          [*Nascita:*], [Bologna, 02/11/2001],
          [*Auto \ munito:*], [Si - Patente B],
        )
      ]
      
      #v(8pt)
      #fancy-heading[Competenze Principali]
      #v(3pt)
      #block(fill: white, inset: 6pt, radius: 5pt)[
       *Linguaggi di Programmazione*
      #grid(
        columns: (2fr, 1fr),
        gutter: 10pt,
        [Java, Python, C, C++, LaTeX, Typst], [#skill-bar(90%)],
        [JavaScript, TypeScript, Rust], [#skill-bar(85%)],
        [PHP, C\#, F\#, WASM], [#skill-bar(80%)],
        [Solidity, MATLAB, Kotlin], [#skill-bar(75%)],
        [Dart, COBOL, Bash, Arduino], [#skill-bar(70%)],
      )
      \
      *Frontend & UI/UX*
      #grid(
        columns: (2fr, 1fr),
        gutter: 10pt,
        [HTML, CSS, SASS, Bootstrap], [#skill-bar(90%)],
        [React, Angular, Qt], [#skill-bar(85%)],
        [React Native, Flutter], [#skill-bar(80%)],
        [WordPress, Shopify], [#skill-bar(80%)],
      )
      
      *Backend & Database*
      #grid(
        columns: (2fr, 1fr),
        gutter: 10pt,
        [MySQL, PostgreSQL, MongoDB, Redis], [#skill-bar(85%)],
        [Spring Boot, .NET, FastAPI], [#skill-bar(80%)],
        [GraphQL, REST API, RabbitMQ], [#skill-bar(85%)],
        [Reactive Programming, WebFlux], [#skill-bar(75%)],
      )
      
      *DevOps & Infrastructure*
      #grid(
        columns: (2fr, 1fr),
        gutter: 10pt,
        [Git, GitHub, GitLab], [#skill-bar(90%)],
        [Docker, Jenkins], [#skill-bar(75%)],
        [AWS, Google Cloud], [#skill-bar(70%)],
        [Heroku, Netlify, Ansible], [#skill-bar(65%)],
      )

      
      ]
      #v(8pt)
      #fancy-heading[Lingue]
      #v(3pt)
      #block(fill: white, inset: 6pt, radius: 5pt)[
        #grid(
          columns: (1fr, 1fr),
          gutter: 4pt,
          [*Italiano*], [#skill-bar(100%) C2],
          [*Inglese*], [#skill-bar(90%) C1],
          [*Francese*], [#skill-bar(60%) B1],
          [*Spagnolo*], [#skill-bar(40%) A2]
        )
      ]
      \
      \
      \
      #v(8pt)
      #fancy-heading[Riconoscimenti & Certificazioni]
      #v(3pt)
      #block(fill: white, inset: 6pt, radius: 5pt)[
        *IT & Tecniche*
        - Lightbend Reactive Systems (12/2024)
        - MATLAB Onramp (08/2022)
        - Cisco Networking Academy (12/2024)
        - Scrum & Six Sigma Certifications (12/2024)
        
        *Accademici & Borse di studio*
        - Incentivo Lauree STEM: Top 50 UniPD (01/2025)
        - Secondo Classificato Concorso Accattivante ed Accessibile (12/2022)
        - Borse di studio regionali e da Fondazione Bocchi (2019-2022)
        - Borsa di studio da Regione Emilia Romagna (06/2020)
        
        *Lingue & Marketing*
        - Cambridge B2 First (04/2019)
        - B1 GESE Trinity (06/2018)
        - Google Digital Marketing (07/2020)
        - Hubspot Academy (07/09-2020)
      ]
      

    ]
  ],
  [
    // Colonna destra
    #v(4pt)
    #section-heading[Esperienza Professionale]

    #v(4pt)
    == Docente di Sistemi e Reti 
    ITIS Galileo Ferraris, Padova #h(1fr) #text(style: "italic", size: 9pt)[09/2024 - 06/2025]
    
    #block(fill: light-gray, inset: 8pt, radius: 4pt)[
      - Docente teorico di Sistemi e Reti con focus su architetture di rete e sicurezza per Terza/Quarta Superiore
      - Svolgimento di lezioni frontali ed esercitazioni pratiche
      - Preparazione di materiale didattico e valutazioni
    ]

    #v(6pt)
    == Tutor di Coordinamento e Tutor Didattico di Automi e Linguaggi Formali 
    Università degli Studi di Padova #h(1fr) #text(style: "italic", size: 9pt)[01/2025 - Presente]
    
    #block(fill: light-gray, inset: 8pt, radius: 4pt)[
      - Supporto alla didattica del corso di Automi e Linguaggi Formali della laurea triennale in Informatica tenuto dal Prof. Bresolin
      - Lezioni frontali, esercitazioni e coordinamento delle attività studentesche
      - Coordinatore dei Tutor delle Lauree Triennali e Magistrali per il Dipartimento di Matematica, ramo informatico
    ]

    #v(6pt)
    == Tutor Didattico di Computability
    Università degli Studi di Padova #h(1fr) #text(style: "italic", size: 9pt)[09/2024 - 01/2025]
    
    #block(fill: light-gray, inset: 8pt, radius: 4pt)[
      - Supporto alla didattica svolto con lezioni frontali ed esercitazioni del corso di Computability per la Laurea Magistrale in Computer Science svolto interamente in inglese
    ]
    
    #v(6pt)
    == Tutor per l'Inclusione e Tutor d'Ufficio
    Università degli Studi di Padova #h(1fr) #text(style: "italic", size: 9pt)[11/2023 - Presente]
    
    #block(fill: light-gray, inset: 8pt, radius: 4pt)[
      - Supporto didattico in materie tecniche (Matematica, Programmazione, Ingegneria del Software)
      - Gestione prove d'esame personalizzate tramite ESS3/Cineca e Uniweb Test
      - Coordinamento dei tutor e gestione PC d'ufficio
      - Gestione delle pratiche del Settore Inclusione nei mesi di Luglio/Agosto 2024 e durante il periodo invernale
    ]
    
    #v(6pt)
    == Tutor Didattico di Automi e Linguaggi Formali
    Università degli Studi di Padova #h(1fr) #text(style: "italic", size: 9pt)[02/2024 - 06/2024]
    
    #block(fill: light-gray, inset: 8pt, radius: 4pt)[
      - Supporto alla didattica del corso di Automi e Linguaggi Formali della laurea triennale in Informatica tenuto dal Prof. Bresolin
      - Preparazione materiali didattici e svolgimento esercitazioni
    ]

    #v(6pt)
    == Tutor Didattico di Programmazione ad Oggetti
    Università degli Studi di Padova #h(1fr) #text(style: "italic", size: 9pt)[09/2023 - 02/2024]
    
    #block(fill: light-gray, inset: 8pt, radius: 4pt)[
      - Supporto alla didattica del corso di Programmazione ad Oggetti della laurea triennale in Informatica tenuto dal Prof. Ranzato
      - Organizzazione attività didattiche, esercitazioni e indicazioni per i progetti agli studenti
    ]
    
    #v(6pt)
    == Stagista Curriculare
    Sync Lab S.r.l. – Padova #h(1fr) #text(style: "italic", size: 9pt)[03/2023 - 06/2023]
    
    #block(fill: light-gray, inset: 8pt, radius: 4pt)[
      - Implementazione POC per DApp blockchain Ethereum utilizzando EthersJS/Web3JS
      - Utilizzo standard W3C: Self-Sovereign Identity (SSI) e Decentralized Identifier (DID)
      - Studio approfondito di tecnologie blockchain e Zero Knowledge Proof
    ]
    
    #v(6pt)
    == Insegnante e Assistente Informatico
    Freelance – Italia #h(1fr) #text(style: "italic", size: 9pt)[02/2016 - Presente]
    
    #block(fill: light-gray, inset: 8pt, radius: 4pt)[
      - Ripetizioni private in materie tecniche, matematiche e linguistiche
      - Esperienza documentata con studenti DSA/BES/ADHD/Asperger/forme di autismo
      - Assistenza informatica e supporto nell'uso di dispositivi ed applicazioni
      - Realizzazione siti WordPress/e-commerce con plugin WooCommerce
      - Utilizzo di Google Ads/Canva per supporto aziende e privati
    ]
    
    #v(6pt)
    == Responsabile servizio clienti
    Clesp S.r.l. – Padova #h(1fr) #text(style: "italic", size: 9pt)[07/2020 - 10/2021 (periodi alternati)]
    
    #block(fill: light-gray, inset: 8pt, radius: 4pt)[
      - Responsabile servizio assistenza clienti per catene di supermercati e cartolerie Buffetti
      - Attività di front office e gestione ufficio personale
      - Aiuto attività di centralinista interno
      - Gestione team di lavoro dell'assistenza clienti
      - Utilizzo MySQL Workbench per gestione database aziendale e terminali aziendali
    ]
    
    #v(6pt)
    == Configuratore di applicazioni informatiche
    Digife S.r.l. – Ferrara #h(1fr) #text(style: "italic", size: 9pt)[01/2019 - 02/2019]
    
    #block(fill: light-gray, inset: 8pt, radius: 4pt)[
      - Tirocinio PCTO con creazione di siti WordPress e plugin e-commerce
      - Attività di gestione e creazione newsletter
    ]
    
    #v(6pt)
    == Assistente amministrativo
    CIERRE Elettronica – Serravalle, Ferrara #h(1fr) #text(style: "italic", size: 9pt)[06/2018 - 07/2018]
    
    #block(fill: light-gray, inset: 8pt, radius: 4pt)[
      - Tirocinio retribuito per ASL con archiviazione documenti e gestione attrezzature
    ]
    
    #v(6pt)
    #section-heading[Formazione]

    #v(4pt)
    == Laurea Magistrale in Computer Science  
    Università degli Studi di Padova #h(1fr) #text(style: "italic", size: 9pt)[09/2023 - 07/2025]
    
    #block(fill: light-gray, inset: 8pt, radius: 4pt)[
      *Major:* Internet, Mobile and Security  
      - Sicurezza applicazioni mobili e reti wireless  
      - Crittografia avanzata e tecniche di autenticazione  
      - Sviluppo di applicazioni mobili e multimediali  
      - Gestione big data e innovazione ICT
    
      *Minor:* Innovation and Entrepreneurship in ICT
    
      *Attività extra:* 100 ore Tutor Inclusione, 60 ore Tutor Didattico
    ]

       #v(5pt)
    == Laurea Triennale in Informatica  
    Università degli Studi di Padova #h(1fr) #text(style: "italic", size: 9pt)[09/2020 - 07/2023]
    
    #block(fill: light-gray, inset: 8pt, radius: 4pt)[
      *Voto:* 98/110  
      
      *Tesi:* VerifiedMovies – sicurezza e autenticazione mediante blockchain  
      
      *Competenze:* 
      - Conoscenze approfondite di algoritmi e codifica di automi
      - Interazione con le basi di dati relazionali con linguaggio SQL
      - Programmazione e programmazione ad oggetti con linguaggio C++ e utilizzo framework Qt
      - Programmazione concorrente con Java
      - Tecniche di project management e gestione qualità maturate in ambito Software Engineering
      - Realizzazione di siti web in ottica accessibile secondo lo standard W3C usando HTML, JavaScript, CSS
      - Conoscenze matematiche di livello avanzato (Analisi, Calcolo Numerico, Probabilità e Statistica)
      - Basi di diritto informatico
    ]
  ]
)


    
    #v(5pt)
    == Diploma di Perito Informatico  
    I.I.S Polo Tecnico di Adria #h(1fr) #text(style: "italic", size: 9pt)[09/2015 - 06/2020]
    
    #block(fill: light-gray, inset: 8pt, radius: 4pt)[
      *Voto:* 100/100  
      
      *Competenze:* 
      - Programmazione C, C++, Java, Cisco Packet Tracer per reti, Project Management, Office Suite (ECDL)
      - Progettazione di reti informatiche, socket e servlet. Interazione con database con linguaggi DBMS
      - Creazione siti e utilizzo CSS, HTML, JavaScript, PHP e creazione app con Android Studio
    ]