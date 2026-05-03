// ╔══════════════════════════════════════════════════╗
// ║  CV – Gabriel Rovesti  (English Version)         ║
// ╚══════════════════════════════════════════════════╝

#let primary    = rgb("#1a4a8a")
#let accent     = rgb("#2d7dd2")
#let sidebar-bg = rgb("#f0f3f8")
#let tag-fill   = rgb("#dce8f7")
#let tag-stroke = rgb("#a8c4e8")
#let muted      = rgb("#5a6272")
#let body-black = rgb("#1c2430")

// ── geometry ──────────────────────────────────────
#let sb-w     = 68mm
#let sb-pad-x = 10pt
#let rh-pad-l = 14pt
#let rh-pad-r = 14pt
#let mg-t     = 13pt
#let mg-b     = 13pt

#set page(
  paper: "a4",
  margin: (top: mg-t, bottom: mg-b, left: sb-w + rh-pad-l, right: rh-pad-r),
  background: place(
    top + left,
    rect(width: sb-w, height: 100%, fill: sidebar-bg)
  ),
)

#set text(font: "New Computer Modern", size: 10pt, fill: body-black)
#set par(justify: true, leading: 0.52em)
#show heading: set text(font: "New Computer Modern Sans", fill: primary)

// ── functions ─────────────────────────────────────

#let skill(s) = box(
  inset: (x: 4pt, y: 2pt),
  radius: 2pt,
  fill: tag-fill,
  stroke: 0.4pt + tag-stroke,
  text(size: 7pt, fill: primary, s)
)

#let sb-sec(title) = {
  v(5pt)
  text(fill: primary, weight: "bold", size: 8.5pt, upper(title))
  v(-5pt)
  line(length: 100%, stroke: 0.5pt + primary)
  v(2pt)
}

#let sec(title) = {
  v(7pt)
  text(fill: primary, weight: "bold", size: 10pt, upper(title))
  v(-5pt)
  line(length: 100%, stroke: 0.7pt + primary)
  v(3pt)
}

#let job(role, company, period, body) = {
  v(3pt)
  grid(
    columns: (1fr, auto),
    text(weight: "bold", size: 10pt)[#role],
    text(size: 8.5pt, fill: muted, style: "italic")[#period],
  )
  text(size: 9pt, fill: accent)[#company]
  v(1pt)
  body
  v(1pt)
}

#let edu(degree, school, period, body) = {
  v(3pt)
  grid(
    columns: (1fr, auto),
    text(weight: "bold", size: 10pt)[#degree],
    text(size: 8.5pt, fill: muted, style: "italic")[#period],
  )
  text(size: 9pt, fill: accent)[#school]
  v(1pt)
  body
  v(1pt)
}

#let proj-sb(title, tech, desc) = {
  v(4pt)
  text(weight: "bold", size: 9pt)[#title]
  linebreak()
  text(size: 7.5pt, fill: muted, style: "italic")[#tech]
  v(1pt)
  text(size: 9pt)[#desc]
  v(2pt)
}

#let place-sidebar(body) = place(
  top + left,
  dx: sb-pad-x - sb-w - rh-pad-l,
  box(width: sb-w - 2 * sb-pad-x)[#body]
)

// ─────────────────────────────────────────────────
// PAGE 1 — Sidebar
// ─────────────────────────────────────────────────

#place-sidebar[
  #v(4pt)
  #align(center)[
    #box(clip: true, radius: 50%, width: 62%)[
      #image("gabriel.jpg", width: 100%)
    ]
    #v(4pt)
    #text(size: 12pt, weight: "bold", fill: primary)[Gabriel Rovesti]
    #v(1pt)
    #text(size: 7.5pt, fill: muted, style: "italic")[
      IT Consultant · Full Stack Developer \
      CS Educator & University Tutor
    ]
  ]

  #sb-sec("Contact")
  #set text(size: 8pt)
  ✉ #link("mailto:rovestigabriel@gmail.com")[rovestigabriel\@gmail.com] \
  #v(1pt)
  ✆ +39 346 688 9789 \
  #v(1pt)
  ⌂ Padova, Italy \
  #v(1pt)
  _GitHub_: #link("https://github.com/gabrielrovesti")[github.com/gabrielrovesti] \
  #v(1pt)
  _LinkedIn_: #link("https://linkedin.com/in/gabriel-rovesti-601404220")[linkedin/gabriel-rovesti] \
  #v(1pt)
  _Portfolio_: #link("https://gabrielrovesti.github.io")[gabrielrovesti.github.io]

  #sb-sec("Skills")
  #set text(size: 8pt)

  *Languages* \
  #v(1pt)
  #skill("Java") #skill("Python") #skill("TypeScript") #skill("Rust") \
  #skill("C/C\+\+") #skill("C\#") #skill("F\#") #skill("Kotlin") \
  #skill("Elixir") #skill("Go") #skill("Solidity") #skill("SQL")

  #v(4pt)
  *Frontend & Mobile* \
  #v(1pt)
  #skill("React") #skill("React Native") #skill("Angular") \
  #skill("Flutter") #skill("WebAssembly")

  #v(4pt)
  *Backend & Cloud* \
  #v(1pt)
  #skill("Spring Boot") #skill("FastAPI") #skill(".NET") \
  #skill("PostgreSQL") #skill("MongoDB") #skill("Redis") \
  #skill("AWS") #skill("GCP") #skill("Docker") #skill("Kubernetes")

  #v(4pt)
  *Observability* \
  #v(1pt)
  #skill("Grafana") #skill("Splunk") #skill("IBM Instana") #skill("Datadog")

  #v(4pt)
  *Specialisations* \
  #v(1pt)
  #skill("WCAG 2.2") #skill("MCP") #skill("AI Agents") \
  #skill("Reactive Systems") #skill("ML/AI") #skill("Functional PL")

  #sb-sec("Certifications")
  #set text(size: 8pt)
  • Anthropic MCP (Intro · Advanced · Claude Code) \
  • Lightbend Reactive Architecture \
  • Kubernetes LFS158 — Linux Fnd. \
  • Cisco Networking · Ethical Hacking \
  • Datadog Kubernetes Fundamentals \
  • Cambridge B2 First · Berlitz German A2

  #sb-sec("Languages")
  #set text(size: 8pt)
  #grid(
    columns: (1fr, auto),
    row-gutter: 2pt,
    column-gutter: 4pt,
    [Italian],  [C2 — Native],
    [English],  [C1 — Advanced],
    [French],   [B1 — Intermediate],
    [Spanish],  [A2 — Basic],
    [German],   [A2 — Basic],
  )

  #sb-sec("Awards")
  #set text(size: 8pt)
  • *Top 50 STEM* – UniPD 2024/25 \
  #v(1pt)
  • *Runner-up* – Web Accessibility Competition UniPD \
  #v(1pt)
  • Regional academic scholarships 2019–2022
]

// ─────────────────────────────────────────────────
// PAGE 1 — Main content
// ─────────────────────────────────────────────────

#sec("Professional Experience")

#job("IT Consultant", "Technology Reply – Padova (client: Generali)", "09/2025 – Present")[
  - Backend development on cloud-native enterprise platforms for the *Generali* insurance group: *Spring Boot 3* microservices, *Oracle SQL*, distributed refactoring and evolutionary analysis
  - Migration from *Docker Swarm* to *Kubernetes*; CI/CD pipelines with *Jenkins*; incident management via *BMC Helix*
  - Observability and monitoring with *Grafana*, *Splunk* and *IBM Instana*; on-call duty on Genertel/GOL production probes
  - Support for *AI* solution development in claims assessment and Application Maintenance automation
]

#job("Teacher – Computer Networks (ITI)", "ITI Galileo Ferraris – Padova", "09/2024 – 06/2025")[
  - Teaching network architectures, protocols and security to \~90 students (Years 3–4)
  - Development of hands-on labs using Cisco Packet Tracer and Linux networking tools
]

#job("Didactic & Coordination Tutor", "University of Padua – Mathematics Dept.", "10/2023 – 09/2025")[
  - *Coordination Tutor*: management of 15+ tutors across Bachelor's and Master's programmes
  - *Didactic Tutor*: Automata & Formal Languages, OOP (Bachelor's); Computability (Master's, in English)
  - Production of advanced teaching materials; documented support to hundreds of students
]

#job("Inclusion Tutor & Accessibility Consultant", "University of Padua – Disability Services", "10/2023 – 09/2025")[
  - 350+ hours of specialised support for students with DSA/BES/Asperger/autism in STEM programmes
  - Management of personalised exams (ESS3/Cineca, Uniweb); reader and scribe tutor
  - Development of WCAG 2.1-compliant digital tools; accessibility seminars for university admission boards
]

#job("Curricular Intern – Blockchain Developer", "Sync Lab S.r.l. – Padova", "03/2023 – 06/2023")[
  - Implementation of an Ethereum DApp POC with EthersJS/Web3JS and W3C standards (SSI/DID)
  - Study and application of Zero-Knowledge Proof techniques for identity verification
]

#job("Private Tutor & IT Consultant", "Freelance – Italy", "02/2016 – Present")[
  - 10+ years of tutoring in computer science, mathematics and languages; specialist in DSA/ADHD learners
  - Technical consulting for startups (Finblock, Vantura): technology stack definition and technical planning
]

#job("Technical Lead & Data Manager", "Clesp S.r.l. – Padova", "07/2020 – 10/2021")[
  - MySQL database management and KPI dashboard development for 500+ Buffetti retail outlets
  - Team leadership in customer service and automation of operational procedures
]

// ─────────────────────────────────────────────────
// PAGE 2
// ─────────────────────────────────────────────────

#pagebreak()

#place-sidebar[
  #v(4pt)
  #sb-sec("Selected Projects")

  #proj-sb(
    "AccessibleHub",
    "React Native · TypeScript · WCAG 2.2",
    [M.Sc. thesis: React Native toolkit implementing WCAG 2.2, MCAG and WCAG2Mobile with interactive modules and live device demos.]
  )

  #proj-sb(
    "ai-agent-skills",
    "MCP · Claude Code · Codex CLI",
    [Portable library of structured skills for AI coding agents, compatible across providers. Each skill encodes a disciplined, reusable engineering workflow.]
  )

  #proj-sb(
    "TinyML Interpreter",
    "F\# · Hindley-Milner",
    [Purely functional ML language interpreter with full HM type inference, unification and let-polymorphism.]
  )

  #proj-sb(
    "PredictSense",
    "Python · FastAPI · RabbitMQ · TF",
    [Microservices anomaly detection pipeline with asynchronous messaging and real-time dashboard.]
  )

  #proj-sb(
    "mini-astarte",
    "Elixir · MQTT · SQLite",
    [Single-tenant local IoT platform inspired by Astarte: MQTT + HTTP ingest, SQLite storage.]
  )

  #proj-sb(
    "Event Processing Platform",
    "Spring WebFlux · Redis · MongoDB",
    [Reactive system: 10K+ events/sec with \<50ms latency and end-to-end backpressure.]
  )

  #proj-sb(
    "VerifiedMovies",
    "Ethereum · Solidity · ZKP",
    [B.Sc. thesis: blockchain DApp with Self-Sovereign Identity and Zero-Knowledge Proof following W3C standards.]
  )
]

// Main content page 2
#sec("Education")

#edu("M.Sc. Computer Science — 104/110", "University of Padua", "09/2023 – 07/2025")[
  *Major:* Internet, Mobile and Security (IMS) — mobile security, wireless networks, advanced cryptography, big data \
  *Minor:* Innovation and Entrepreneurship in ICT — startup management, ITIL, NIST \
  *Thesis:* _Designing an accessibility learning toolkit: bridging the gap between guidelines and implementation_ \
  *Extra:* 400+ documented hours of university tutoring (inclusion, coordination, didactic, informational)
]

#edu("B.Sc. Computer Science — 98/110", "University of Padua", "09/2020 – 07/2023")[
  Algorithms, databases, concurrent programming, software engineering, accessible web development, advanced mathematics. \
  *Thesis:* _VerifiedMovies — blockchain-based security and authentication_
]

#edu("High School Diploma in Computer Science — 100/100", "I.I.S. Polo Tecnico di Adria", "09/2015 – 06/2020")[
  Programming in C/C\+\+/Java, Cisco networking, web development (HTML/CSS/JS/PHP), Android, database design.
]

#sec("Other Activities")

#job("Web Application Developer (Internship)", "Digife S.r.l. – Ferrara", "01/2019 – 02/2019")[
  - WordPress site development with WooCommerce plugins; newsletter management and web content
]

#job("Administrative Assistant (Internship)", "CIERRE Elettronica – Serravalle (FE)", "06/2018 – 07/2018")[
  - Equipment management, order archiving, operational support to department manager
]

#job("Author and Contributor", "Wikipedia (Italian/English)", "2018 – Present")[
  - Active contributions to technical and scientific articles in Italian and English; revision of computer science and mathematics entries
]
