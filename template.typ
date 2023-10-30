#let project(
  type: "",
  // name: "",
  subject: "",
  abstract: [],
  authors: (),
  logo: none,
  body
) = {
  // Set the document's basic properties.
  set document(author: authors.map(a => repr(a.name)).join(", "), title: type)
  set text(font: "Liberation Serif", lang: "ru")
  show math.equation: set text(weight: 400)
  set heading(numbering: none)
  set par(justify: true)
  set page(paper: "a4", margin: (left:3cm, right:1.5cm, top:2cm, bottom:2cm),
)



  // v(0.0fr)
  align(center)[
    #text(1.25em, weight: 200, "Санкт-Петербургский политехнический университет Петра Великого") \
    #text(1.25em, weight: 200, "Институт компьютерных наук и кибербезопасности") \
    #text(1.25em, weight: 200, "Высшая школа программной инженерии")
  ]

  // Title page.
  v(8cm)
  align(center)[
    #text(2em, weight: 500, type) \
    // #v(0.1cm)
    #text(1.15em, weight: 100, "по теме")
    #text(1.15em, weight: 100, subject) \ \
    #text(1.3em, weight: 100, "Вариант 20")
  ]

  
  //Author information.
  v(5cm)
  pad(
    // top: 0.7em,
    
      authors.map(author => columns(2, [
        #align(left)[#author.role]
        #colbreak()
        #align(right)[#author.name]
      ])
      ).join(),
  )

  v(1fr)
  align(center)[
    #text(1.25em, weight: 200, "Санкт-Петербург \n 2023")
  ]
  
  pagebreak()
  pagebreak()
  // Table of contents.
  outline(depth: 3, indent: true, title: "Оглавление")
  pagebreak()

  // Main body.
  set page(numbering: "1", number-align: center)
  set par(first-line-indent: 20pt)
  counter(page).update(4)
  set heading(numbering: "1.1")

  body
}


