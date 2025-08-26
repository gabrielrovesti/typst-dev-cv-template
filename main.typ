#let primary-color = rgb("#0366d6")
#let light-gray = rgb("#f0f2f5")
#let text-color = rgb("#24292e")
#let accent-color = rgb("#28a745")

#set page(
  paper: "a4",
  margin: (x: 1.4cm, y: 1.6cm),
)

#set text(font: "New Computer Modern", size: 10pt, fill: text-color)
#set par(justify: true, leading: 0.5em)
#show heading: set text(font: "New Computer Modern Sans")

// Utility functions
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
  #v(6pt)
  #text(fill: primary-color, weight: "bold", 1.1em, body)
  #v(-6pt)
  #line(length: 100%, stroke: 1pt + primary-color)
]

#let skill-bar(percentage) = {
  box(
    width: 100%,
    height: 5pt,
    radius: 2.5pt,
    stroke: none,
    fill: light-gray,
  )[
    #box(
      width: percentage,
      height: 5pt,
      radius: 2.5pt,
      fill: primary-color
    )
  ]
}

#let project-item(title, tech, description, link: none) = [
  #v(3pt)
  *#title* #text(size: 9pt, style: "italic", fill: primary-color)[#tech]
  #if link != none [
    #h(1fr) #text(size: 8pt, fill: primary-color)[→ GitHub]
  ]
  #v(1pt)
  #text(size: 9.5pt)[#description]
  #v(2pt)
]

// Layout compatto
#grid(
  columns: (1.1fr, 2.4fr),
  gutter: 1.2em,
  [
    // Colonna sinistra compattata
    #block(fill: light-gray, inset: 10pt, radius: 8pt, width: 100%)[
      #align(center)[
        #image("gabriel.jpg", width: 70%)
        #v(2pt)
        = Gabriel Rovesti
        #v(-2pt)
        #text(style: "italic", size: 10pt)[IT Consultant | Full Stack Developer | CS Teacher & Tutor]

      ]
      
      #v(6pt)
      #fancy-heading[Contatti]
      #v(2pt)
      #block(fill: white, inset: 8pt, radius: 4pt)[
        - *Email:* #link("mailto:rovestigabriel@gmail.com")[rovestigabriel\@gmail.com]
        
        #v(4pt)
        - *Tel:* +39 346 688 9789
        
        #v(4pt)
        - *GitHub:* #link("https://github.com/gabrielrovesti")[gabrielrovesti]
        
        #v(4pt)
        - *LinkedIn:* #link("https://linkedin.com/in/gabriel-rovesti-601404220")[gabriel-rovesti-601404220]
        
        #v(4pt)
        - *Portfolio:* #link("https://gabrielrovesti.github.io")[gabrielrovesti.github.io]
        
        #v(4pt)
        - *Residenza:* Via Tito Speri 2\/B, Padova, Italy
      ]
      
      #v(8pt)
      #fancy-heading[Competenze Principali]
      #v(4pt)
      #block(fill: white, inset: 8pt, radius: 4pt)[

        #v(6pt)
        #block(fill: rgb("#e8f0fe"), inset: 6pt, radius: 3pt, stroke: 1pt + primary-color)[
          #text(weight: "bold", fill: primary-color)[SPECIALIZZAZIONI]
          #v(2pt)
          - Mobile Programming
          - Accessibility 
          - Blockchain & Web3
          - Cybersecurity 
          - Reactive Systems
        ]
        
        #block(fill: rgb("#f1f3f4"), inset: 6pt, radius: 3pt, stroke: 1pt + rgb("#e1e5e9"))[
          #text(weight: "bold", fill: primary-color)[LINGUAGGI]
          #v(2pt)
          - Java
          - Python
          - C / C\# / C++
          - TypeScript
          - F\#
          - Rust
          - Go
          - JavaScript
          - Kotlin
          - MATLAB
          - LaTeX / Typst
          - SQL
          - Solidity
          - Arduino
        ]
        
        #v(6pt)
        #block(fill: rgb("#f1f3f4"), inset: 6pt, radius: 3pt, stroke: 1pt + rgb("#e1e5e9"))[
          #text(weight: "bold", fill: primary-color)[SISTEMI & CLOUD]
          #v(2pt)
          - Spring Boot
          - PostgreSQL
          - Kubernetes 
          - AWS
          - Redis
          - MongoDB
          - AWS

        ]
        
        #v(6pt)
        #block(fill: rgb("#f1f3f4"), inset: 6pt, radius: 3pt, stroke: 1pt + rgb("#e1e5e9"))[
          #text(weight: "bold", fill: primary-color)[FRONTEND & FRAMEWORK]
          #v(2pt)
          - React
          - Angular 
          - Flutter
          - WebAssembly
          - .NET
        ]
      ]
      
      #v(6pt)
      #fancy-heading[Riconoscimenti]
      #v(2pt)
      #block(fill: white, inset: 5pt, radius: 4pt)[
        - *Top 50 STEM UniPD* (39/300) - UniPD 2025
        - *2nd Place* - Accessibility UniPD Website Contest   
        - *Lightbend Reactive Systems* Certified 2024
        - *Cisco Networking, Ethical Hacking* & *Six Sigma* Certified
        - *Bronze Medals* - Interregional Karate
        - Multiple regional scholarships 2019-2022
        - *Cambridge B2 First* & Google Marketing
      ]
      
      #v(6pt)
      #fancy-heading[Lingue]
      #v(2pt)
      #block(fill: white, inset: 5pt, radius: 4pt)[
        #grid(
          columns: (1fr, 1fr),
          gutter: 3pt,
          row-gutter: 1pt,
          [*Italiano*], [C2 #skill-bar(100%)],
          [*English*], [C1 #skill-bar(90%)],
          [*Français*], [B1 #skill-bar(60%)],
          [*Español*], [A2 #skill-bar(40%)],
        )
      ]
    ]
  ],
  [
    // Colonna destra ottimizzata
    #v(2pt)
    #section-heading[Progetti Principali]
    #v(2pt)

    #project-item(
      "AccessibleHub - Mobile Accessibility Toolkit", 
      "React Native, TypeScript, WCAG 2.2",
      "Tesi magistrale: App React Native per sviluppatori che implementa WCAG 2.2, MCAG e WCAG2Mobile con moduli di apprendimento interattivi per l'accessibilità mobile.",
      link: "https://github.com/gabrielrovesti/AccessibleHub"
    )
    
    #project-item(
      "ML Anomaly Detection System", 
      "Python, Microservices, Real-time Dashboard",
      "Sistema di rilevamento anomalie con architettura a microservizi, comunicazione asincrona e dashboard real-time. Implementa algoritmi ML per pattern recognition su stream di dati.",
      link: "https://github.com/gabrielrovesti"
    )
    
    #project-item(
      "Cross-Platform Image Editor", 
      "Flutter, Rust, WebAssembly",
      "App mobile/desktop per editing immagini con UI Flutter e filtri ad alte prestazioni in Rust/WASM. Performance superiori del 3x rispetto a soluzioni JavaScript.",
    )
    
    #project-item(
      "Reactive Event Processing Platform", 
      "Spring WebFlux, Redis, MongoDB",
      "Sistema di elaborazione eventi real-time con Spring WebFlux, caching intelligente e API REST sicure. Gestisce 10K+ eventi/sec con latenza <50ms.",
    )
    
    #project-item(
      "PCB Drilling Optimization", 
      "CPLEX, Tabu Search, C++",
      "Algoritmi esatti (CPLEX) e metaeuristici (Tabu Search) per ottimizzazione foratura PCB. Miglioramento efficienza fino all'84%.",
    )
    
    #section-heading[Esperienza Professionale]
    #v(3pt)
    
    == IT Consultant
    Technology Reply - Padova #h(1fr) #text(style: "italic", size: 9pt)[09/2025 - Presente]
    
    #block(fill: light-gray, inset: 6pt, radius: 3pt)[
      - *Consulenza IT* specializzata in soluzioni digitali innovative per clienti enterprise
      - *Progettazione e implementazione* di architetture cloud-native e microservizi
      - *Supporto nella digital transformation* di sistemi legacy verso tecnologie moderne
      - *Sviluppo di soluzioni custom* per settori telecomunicazioni, banking e industry 4.0
    ]
    
    == Tutor Didattico e Tutor di Coordinamento
    Università di Padova #h(1fr) #text(style: "italic", size: 9pt)[10/2023 - 09/2025]
    
    #block(fill: light-gray, inset: 6pt, radius: 3pt)[
      - *Coordinatore* dei Tutor Triennali/Magistrali - Dipartimento Matematica
      - *Tutor didattico* Automi e Linguaggi Formali / Programmazione ad Oggetti (triennale) + Computability (magistrale, in Inglese)
      - *Gestione team* di 15+ tutor, preparazione materiale didattico avanzato con lezioni universitarie, aiuto documentato di centinaia di studenti
    ]
    
    == Tutor Inclusione & Accessibility Consultant
    Università di Padova #h(1fr) #text(style: "italic", size: 9pt)[10/2023 - 09-2025]
    
    #block(fill: light-gray, inset: 6pt, radius: 3pt)[
      - *Supporto specializzato* studenti DSA/BES/Asperger in materie STEM
      - *Gestione prove d'esame personalizzate* (ESS3/Cineca, Uniweb Test), tutor letture ed amanuense per prove d'esame, coordinamento pratiche di settore
      - *Sviluppo strumenti di accessibilità* digitale conformi WCAG 2.1 e creazione di seminari di accessibilità per test di ammissione
    ]
    
    #v(6pt)
    == Stagista Curriculare
    Sync Lab S.r.l. – Padova #h(1fr) #text(style: "italic", size: 9pt)[03/2023 - 06/2023]
    
    #block(fill: light-gray, inset: 8pt, radius: 4pt)[
      - *Implementazione POC* per DApp blockchain Ethereum utilizzando EthersJS/Web3JS
      - *Utilizzo standard W3C*: Self-Sovereign Identity (SSI) e Decentralized Identifier (DID)
      - *Studio approfondito* di tecnologie blockchain e Zero Knowledge Proof
    ]
    
    #v(6pt)
    == Insegnante e Assistente Informatico
    Freelance – Italia #h(1fr) #text(style: "italic", size: 9pt)[02/2016 - Presente]
    
    #block(fill: light-gray, inset: 8pt, radius: 4pt)[
      - *Ripetizioni private* in materie tecniche, matematiche e linguistiche
      - *Esperienza documentata* con studenti DSA/BES/ADHD/Asperger/forme di autismo
      - *Assistenza informatica* e supporto nell'uso di dispositivi ed applicazioni
      - *Realizzazione siti* WordPress/e-commerce con plugin WooCommerce
      - Utilizzo di Google Ads/Canva per supporto aziende e privati
    ]
    
    #v(6pt)
    == Technical Lead & Data Manager
    Clesp S.r.l. - Padova #h(1fr) #text(style: "italic", size: 9pt)[07/2020 - 10/2021]
    
    #block(fill: light-gray, inset: 6pt, radius: 3pt)[
      - *Responsabile* servizio clienti per catene Buffetti (500+ punti vendita)
      - *Gestione database aziendali* MySQL, ottimizzazione query e performance
      - *Team leadership* assistenza clienti, procedure automation
      - *Sviluppo dashboards* per KPI e analytics operativi
    ]
    
    #v(6pt)
    == Configuratore di applicazioni informatiche
    Digife S.r.l. – Ferrara #h(1fr) #text(style: "italic", size: 9pt)[01/2019 - 02/2019]
    
    #block(fill: light-gray, inset: 8pt, radius: 4pt)[
      - *Creazione di siti WordPress* e plugin e-commerce
      - *Creazione newsletter* e ottimizzazione marketing
      - *Scrittura di articoli tecnici* in ottica SEO
    ]
    
    #v(6pt)
    == Assistente amministrativo
    CIERRE Elettronica – Serravalle, Ferrara #h(1fr) #text(style: "italic", size: 9pt)[06/2018 - 07/2018]
    
    #block(fill: light-gray, inset: 8pt, radius: 4pt)[
      - *Gestione attrezzature*, archiviazione conferme d'ordine
      - *Esperienza documentata* di accompagnamento gestore risorse aziendale e approccio al problem solving 
    ]   
  ]
)

#pagebreak()

 #section-heading[Formazione]

    #v(4pt)
    == Laurea Magistrale in Computer Science  
    Università degli Studi di Padova #h(1fr) #text(style: "italic", size: 9pt)[09/2023 - 07/2025]
    
    #block(fill: light-gray, inset: 8pt, radius: 4pt)[
    *Voto:* 104/110  
      
      *Tesi:* Designing an accessibility learning toolkit: bridging the gap between guidelines and implementation 
      
      *Major:* Internet, Mobile and Security (IMS)  
      - Sicurezza applicazioni mobili e reti wireless  
      - Crittografia avanzata e tecniche di autenticazione  
      - Sviluppo di applicazioni mobili e multimediali  
      - Gestione big data e innovazione ICT
    
      *Minor:* Innovation and Entrepreneurship in ICT
      - Gestione e creazione di startup
      - Gestione risorse informatiche e applicazione di framework come ITIL, NIST
    
      *Attività extra:* 400 ore di Tutorato (Inclusione / Coordinamento / Didattico / Informativo)
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