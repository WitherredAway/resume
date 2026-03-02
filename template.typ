/*
Resume template originally created by Oliver Ni.
Used and modified by Souvic Das.

Original structure and layout credit:
Oliver Ni

This file contains design and layout adaptations.
*/

#let resume_author = "Souvic Das"

#let project(body) = {
  set document(title: resume_author + " – Resume", author: (resume_author))
  set page(paper: "us-letter", margin: 0.25in)

  set text(font: "EB Garamond", lang: "en", size: 11pt, weight: 400)
  set par(spacing: 0.8em)
  show strong: it => text(weight: "semibold", it.body)

  show heading.where(level: 1): it => [
    #set text(12pt, weight: "regular")
    #block(
      width: 100%,
      stroke: (bottom: 0.5pt),
      inset: (bottom: 0.5em),
      above: 1.3em,
      below: 0.8em,
      smallcaps(it.body)
    )
  ]
  show heading.where(level: 2): it => {
    text(size: 12pt, it.body)
    h(0.3em)
  }
  set list(indent: 1em)

  body
}

#let fab(name) = text(font: "Font Awesome 6 Brands", name)
#let fas(name) = text(font: "Font Awesome 6 Free Solid", name)
#let far(name) = text(font: "Font Awesome 6 Free", name)

#let entry(l, r, content, below: 1.2em) = block(
  below: below,
  grid(
    gutter: 0.8em,
    columns: (1fr, auto),
    align(left, l),
    align(right, r),
    ..if content != none { (grid.cell(colspan: 2, content),) }
  )
)
