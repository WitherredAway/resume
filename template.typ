#let serif = ("EB Garamond", "Libertinus Serif", "Liberation Serif")
#let accent = rgb("#1f3864")

#let fab(name) = text(font: "Font Awesome 6 Brands", name)

#let url(target, label) = text(size: 9pt)[#link(target)[#label]]

#let note(body) = text(size: 9.5pt, fill: luma(110), style: "italic")[#body]

#let stats = json("stats.json")

#let group(n) = {
  let digits = str(n).clusters().rev()
  digits.enumerate()
    .map(((i, d)) => if i > 0 and calc.rem(i, 3) == 0 { d + "," } else { d })
    .rev()
    .join()
}

// Rounds down to the nearest step so the figure stays true as the count grows.
#let approx(n, step) = group(int(calc.floor(n / step) * step)) + "+"

#let plain(body) = if body.has("text") {
  body.text
} else {
  body.children.map(c => if c.has("text") { c.text } else { " " }).join()
}

#let caps(s) = s.split(" ").map(w => {
  upper(w.first()) + text(size: 0.82em, upper(w.slice(1)))
}).join(" ")

#let row(left-side, right-side) = block(below: 0.3em)[
  #grid(columns: (1fr, auto), align: (left, right), left-side, right-side)
]

#let subrow(left-side, right-side) = row(
  text(size: 10pt, left-side),
  text(size: 10pt, right-side),
)

#let resume(author: "", body) = {
  set document(title: author + " - Curriculum Vitae", author: author)
  set page(paper: "us-letter", margin: (x: 0.7in, y: 0.55in))
  set text(font: serif, size: 10.5pt, lang: "en")
  set par(justify: true, leading: 0.55em, spacing: 0.5em)
  set list(marker: text(fill: accent)[•], indent: 0.7em, body-indent: 0.5em, spacing: 0.45em)
  show strong: set text(weight: "semibold")
  show link: set text(fill: accent)

  show heading.where(level: 1): it => block(
    above: 0.8em,
    below: 0.45em,
    width: 100%,
    stroke: (bottom: 0.6pt + accent),
    inset: (bottom: 0.3em),
  )[#set text(size: 11pt, weight: "semibold", fill: accent); #caps(plain(it.body))]

  body
}

#let head(name: "", contacts: ()) = align(center)[
  #text(size: 21pt, weight: "bold")[#name]
  #linebreak()
  #contacts.join([#h(0.45em)•#h(0.45em)])
]

#let entry(title: "", tags: none, date: none, source: none) = block(above: 0.6em, below: 0.4em)[
  #grid(
    columns: (1fr, auto),
    align: (left, right),
    row-gutter: 0.3em,
    [*#title*#if tags != none [#h(0.5em)#note(tags)]],
    date,
    grid.cell(colspan: 2, align: left, source),
  )
]
