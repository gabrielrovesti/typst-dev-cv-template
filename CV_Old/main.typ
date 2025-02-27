#import "@preview/colorful-boxes:1.2.0": *

#let primary-color = rgb("#1e90ff")
#let secondary-color = rgb("#f0f8ff")

#set page(
  paper: "a4",
  margin: (x: 1.5cm, y: 2cm),
)

#set text(font: "New Computer Modern", size: 11pt)
#set par(justify: true)

#show heading: set text(font: "New Computer Modern Sans")

#let fancy-heading(body) = align(center)[
  #box(width: 100%, inset: 5pt, fill: primary-color, radius: 4pt)[
    #text(fill: white, weight: "bold", 1.2em, body)
  ]
]

#let section-heading(body) = align(left)[
  #v(10pt)
  #box(width: 100%)[
    #text(fill: primary-color, weight: "bold", 1.1em, body)
    #v(-8pt)
    #line(length: 100%, stroke: 1pt + primary-color)
  ]
]

#grid(
  columns: (1.2fr, 2.3fr),
  gutter: 1.5em,
  [
    #block(fill: secondary-color, inset: 10pt, radius: 10pt)[
      #align(center)[
        #image("gabriel.jpg", width: 80%)
        #v(5pt)
        = Gabriel Rovesti
        #v(-2pt)
        #text(style: "italic", size: 12pt)[Computer Science M.Sc. Student, Tutor, Freelance Teacher]
      ]
      #v(10pt)
      #fancy-heading[Contatti]
      #text(size: 10pt)[
        #align(center)[
          *Indirizzo*: \
          Via Tito Speri, 2B, 35141, Padova (PD), Italia
          #v(5pt)
          *Cellulare*: \
          +39 346 688 9789
          #v(5pt)
          *Email*: \
          rovestigabriel\@gmail.com
          #v(5pt)
          *LinkedIn*: \
          https://www.linkedin.com/in/gabriel-rovesti-601404220/
          #v(5pt)
          *GitHub (Progetti)*: \
          https://github.com/gabrielrovesti
          #v(5pt)
          *Data di nascita*: 02/11/2001
          #v(5pt)
          *Nazionalità*: Italiana
        ]
      ]
      #v(10pt)
      #fancy-heading[Competenze \ Tecniche]
      #text(size: 10pt)[
        
        - *Linguaggi*: \ Java, Python, C, C++, JavaScript, TypeScript, PHP, C\#, Rust, Solidity, LaTeX, Typst, Arduino, MATLAB, Visual Basic, Kotlin, Assembly x86, COBOL, Dart
        - *Web*: \ HTML, CSS, React.js, Angular, WordPress
        - *Database*: \ MySQL, PostgreSQL, AWS
        - *Framework*: \ Qt, Android Studio, .NET, React Native, Flutter
        - *Cloud*: AWS, Google Cloud Platform
        - *DevOps*: Docker, Jenkins, Ansible, Slack
      ]
      #v(10pt)
      #fancy-heading[Lingue]
      #text(size: 10pt)[
        - *Italiano*: C2
        - *Inglese*: B2  
        - *Francese*: B1
        - *Spagnolo*: A2
      ]
      #v(10pt)
      #fancy-heading[Riconoscimenti & Certificazioni]
      #text(size: 10pt)[
        - *Lightbend Certifications on Reactive Systems (Akkademy)* (12/2024): \ Reactive Microservices, Domain Driven Design and Intro to Reactive Systems 
        - *MATLAB Onramp* (08/2022)
        - *Secondo Classificato Concorso Accattivante ed Accessibile* (12/2022) 
        - *Google Digital Marketing* (07/2020)
        - *Hubspot Academy Certifications* (Social Media/Digital/Inbound Marketing) (07/09-2020)
        - *Borsa di studio* regionale per meriti scolastici (12/2022)
        - *Borsa di studio* per meriti scolastici da Fondazione Bocchi (07/2020)
        - *Borsa di studio* da Regione Emilia Romagna per meriti scolastici (06/2020)
        - *Borsa di studio* per meriti scolastici da Fondazione Bocchi (07/2019)
        - *Cambridge B2 First* (04/2019)
        - *B1 GESE Trinity* (06/2018)
      ]
      #v(10pt)

      #fancy-heading[Altre attività]
      #text(size: 10pt)[
        *Autore collaboratore*
        Wikipedia
        (06/2016 - presente)
        - Scrittore di vari articoli Wikipedia/Wikimedia Foundation
        - Traduttore di versioni tra italiano e inglese
      ]
    ]
  ],
  [
    #align(left)[
    #section-heading[Esperienza Professionale]

    #v(5pt)
    == Docente di Sistemi e Reti 
    *ITIS Galileo Ferraris, Padova* \
    09/2024 - 06/2025
    
    Docente teorico di Sistemi e Reti svolto presso l'istituto Galileo Ferraris, con svolgimento di lezioni frontali ed esercitazioni.

    #line(length: 100%, stroke: 1pt + gray)
    
    #v(5pt)
    == Tutor di Coordinamento e Tutor Didattico di Computability
    *Università degli Studi di Padova – Padova, IT* \
    09/2024 - Presente
    
    Supporto alla didattica svolto con lezioni frontali ed esercitazioni del corso di Computability per la Laurea Magistrale in Computer Science, svolto interamente in inglese.

    Coordinatore dei Tutor delle Lauree Triennali e Magistrali per il Dipartimento di Matematica, ramo informatico
    
    #line(length: 100%, stroke: 1pt + gray)

    == Tutor per l'Inclusione e Tutor d'Ufficio per il Settore
    *Università degli Studi di Padova – Padova, IT* \
    11/2023 - Presente
    
    Supporto alla didattica per il settore Inclusione nelle materie di:
    - Istituzioni di Matematica e Programmazione (Triennale in Giurisprudenza e Matematica)
    - Ricerca Operativa e Ingegneria del Software (Triennale in Informatica)
    - Matematica, Probabilità e Statistica
    
    Attività di servizio d'ufficio e gestione delle pratiche del Settore Inclusione nei mesi di Luglio/Agosto 2024 e durante il periodo invernale: gestione delle prove di esame personalizzati, gestione accompagnamenti e PC d'ufficio, coordinamento dei tutor d'ufficio presenti.
    
    #line(length: 100%, stroke: 1pt + gray)
    
    #v(10pt)
    == Tutor Didattico di Automi e Linguaggi Formali
    *Università degli Studi di Padova – Padova, IT* \
    02/2024 - 06/2024
    
    Supporto alla didattica del corso di Automi e Linguaggi Formali della laurea triennale in Informatica tenuto dal Prof. Bresolin.
    
    #line(length: 100%, stroke: 1pt + gray)
    \
    #v(10pt)
    == Tutor Didattico di Programmazione ad Oggetti
    *Università degli Studi di Padova – Padova, IT* \
    09/2023 - 02/2024
    
    Supporto alla didattica del corso di Programmazione ad Oggetti della laurea triennale in Informatica tenuto dal Prof. Ranzato.
    
    #line(length: 100%, stroke: 1pt + gray)
    
    #v(10pt)
    == Insegnante, Assistente Informatico
    *Freelance – Italia* \
    06/2016 - Presente
    
    - Insegnante per ripetizioni private a domicilio in varie materie scolastiche, incluse lingue (Italiano, Inglese, Francese), materie matematiche/scientifiche (Matematica, Analisi, Chimica, Calcolo Numerico, Probabilità, Algebra e Matematica Discreta, Ricerca Operativa) ed economiche e politiche (Diritto/Economia, Storia, Geografia).
    - Competenze in tutta la parte Informatica, inclusi Cybersecurity, Reti, Programmazione, Algoritmi, Ingegneria del Software, Automi e Linguaggi Formali, e Tecnologie Web.
    - Collaborazione con diversi privati per assistenza informatica e nell'uso di dispositivi ed applicazioni.
    
    #line(length: 100%, stroke: 1pt + gray)
    
    #v(10pt)
    == Stagista Curriculare
    *Sync Lab S.r.l. – Padova, IT* \
    03/2023 - 06/2023
    
    - Implementazione di un Proof of Concept (POC) di una DApp su blockchain Ethereum utilizzando EthersJS/Web3JS e la tecnologia di Self-Sovereign Identity (SSI) e Decentralized Identifier (DID).
    - Studio approfondito delle tecnologie blockchain in tutte le sue parti.
    
    #line(length: 100%, stroke: 1pt + gray)
    
    #v(10pt)
    == Responsabile servizio clienti
    *Clesp S.r.l. – Padova, IT* \
    07/2020 - 10/2020 - 07/2021 - 10/2021
    
    - Responsabile servizio assistenza clienti Clesp - Segnalibro alle catene di supermercati e cartolerie affiliate al servizio e cartolerie Buffetti tramite mail e telefono.
    - Attività di front office e di aiuto gestione ufficio personale.
    - Aiuto attività di centralinista interno.
    - Gestione di team di lavoro dell'assistenza clienti ed organizzazione dello stesso.
    - Utilizzo di MySQL Workbench per la gestione della base di dati aziendale e terminali aziendali.
    
    #line(length: 100%, stroke: 1pt + gray)

    #v(10pt)
== Configuratore di applicazioni informatiche
*Digife S.r.l. – Ferrara, IT* \
01/2019 - 02/2019

- Esperienza di tirocinio non retribuita per PCTO (Percorsi per le Competenze Trasversali e per l'Orientamento).
- Creazione di siti in WordPress con uso di plugin per e-commerce (es. WooCommerce).
- Attività di gestione e creazione newsletter.
    ]
  ]
)



#line(length: 100%, stroke: 1pt + gray)


== Assistente amministrativo
*CIERRE Elettronica – Serravalle, Ferrara, IT* \
06/2018 - 07/2018

- Esperienza di tirocinio retribuita per ASL (Alternanza Scuola/Lavoro).
- Archiviazione conferme d'ordine e aiuto gestione attrezzature aziendali.

#line(length: 100%, stroke: 1pt + gray)

#v(5pt)

#section-heading[Formazione]

#v(5pt)
== Laurea Magistrale in Computer Science
*Università degli Studi di Padova – Padova, IT* \
09/2023 - 07/2025

Major in _Internet, Mobile and Security_, con focus su:
- Sicurezza delle applicazioni mobili e delle reti wireless
- Crittografia avanzata e tecniche di autenticazione
- Sviluppo di applicazioni mobili e multimediali
- Gestione delle informazioni web e big data
- Innovazione e imprenditorialità nel settore ICT

_Competenze acquisite_:
- Progettazione e implementazione di sistemi di sicurezza per applicazioni mobili e reti wireless
- Sviluppo di applicazioni mobili multimediali e web-based
- Analisi e gestione di big data e informazioni web
- Tecniche avanzate di ottimizzazione combinatoria e algoritmi
- Gestione di progetti IT e servizi cloud
- Conoscenze in ambito legale e normativo relative ai dati e alla sicurezza informatica
- Competenze in economia e gestione dell'innovazione
- Capacità di avviare e gestire startup nel settore ICT

\
_Attività formative aggiuntive (other training activities)_:
- 100 ore come Tutor per l'Inclusione
- 60 ore come Tutor Didattico

Minor in _Innovation and Entrepreneurship in ICT_, svolgendo corsi rivolti alle startup e alla cybersecurity.

#v(10pt)

#pagebreak()
== Laurea Triennale in Informatica
*Università degli Studi di Padova – Padova, IT* \
09/2020 - 07/2023

_Voto finale_: 98/110 \
_Tesi_: VerifiedMovies: il cinema in piena sicurezza con l'uso della blockchain

_Competenze acquisite_:
- Conoscenze approfondite di algoritmi e codifica di automi
- Interazione con le basi di dati relazionali con linguaggio SQL
- Programmazione e programmazione ad oggetti con linguaggio C++ e utilizzo framework Qt
- Programmazione concorrente con Java
- Tecniche di project management e gestione qualità maturate in ambito Software Engineering
- Realizzazione di siti web in ottica accessibile secondo lo standard W3C usando HTML, JavaScript, CSS
- Conoscenze matematiche di livello avanzato (Analisi, Calcolo Numerico, Probabilità e Statistica)
- Basi di diritto informatico

#line(length: 100%, stroke: 1pt + gray)

#v(10pt)
== Diploma di Perito Informatico
*I.I.S Polo Tecnico di Adria – Adria, IT* \
09/2015 - 06/2020

_Voto finale_: 100/100

_Competenze acquisite_:
- Programmazione C, Java
- Progettazione di reti informatiche
- Creazione siti e utilizzo CSS, HTML, JavaScript, PHP
- Gestione di programmazione socket e servlet
- Interazione con database con linguaggi DBMS
- Creazione app con Android Studio
- Utilizzo e conoscenza del pacchetto Office
- Attività di project management

#line(length: 100%, stroke: 1pt + gray)

