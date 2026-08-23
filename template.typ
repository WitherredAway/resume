#let serif = ("Times New Roman", "Liberation Serif", "TeX Gyre Termes")

#let fab(name) = text(font: "Font Awesome 6 Brands", name)

#let url(target, label) = text(size: 9pt)[#link(target)[#underline(label)]]

#let note(body) = text(size: 9.5pt, fill: luma(110), style: "italic")[#body]

#let plain(body) = if body.has("text") {
  body.text
} else {
  body.children.map(c => if c.has("text") { c.text } else { " " }).join()
}

#let caps(s) = s.split(" ").map(w => {
  upper(w.first()) + text(size: 0.82em, upper(w.slice(1)))
}).join(" ")

#let row(left-side, right-side) = block(below: 0.35em)[
  #grid(columns: (1fr, auto), align: (left, right), left-side, right-side)
]

#let subrow(left-side, right-side) = row(
  text(size: 10pt, left-side),
  text(size: 10pt, right-side),
)

#let resume(author: "", body) = {
  set document(title: author + " - Curriculum Vitae", author: author)
  set page(paper: "us-letter", margin: (x: 0.8in, y: 0.7in))
  set text(font: serif, size: 11pt, lang: "en")
  set par(justify: true, leading: 0.65em, spacing: 0.65em)
  set list(marker: ([•], [◦]), indent: 1em, body-indent: 0.65em, spacing: 0.65em)
  show link: set text(fill: rgb("#0563c1"))

  show heading.where(level: 1): it => block(
    above: 1.4em,
    below: 0.9em,
    width: 100%,
    stroke: (bottom: 0.6pt),
    inset: (bottom: 0.35em),
  )[#set text(size: 11pt, weight: "regular"); #caps(plain(it.body))]

  body
}

#let head(name: "", contacts: ()) = align(center)[
  #text(size: 22pt, weight: "bold")[#name]
  #linebreak()
  #contacts.join([#h(0.45em)•#h(0.45em)])
]

#let entry(title: "", tags: none, date: none, source: none) = block(above: 1em, below: 0.6em)[
  #grid(
    columns: (1fr, auto),
    align: (left, right),
    row-gutter: 0.3em,
    [*#title*#if tags != none [#h(0.5em)#note(tags)]],
    date,
    grid.cell(colspan: 2, align: left, source),
  )
]
