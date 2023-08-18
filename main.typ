#set page(
  paper: "a4",
  header: { include "/components/header.typ" },
  footer: { include "/components/footer.typ" },
  margin: (
    top: 30mm,
    bottom: 20mm,
    left: 30mm,
    right: 20mm,
  ),
)

#let m = yaml("/metadata.yml")
#let fonts = m.at("fonts")

#set text(font: fonts.at("text"), lang: "vi")
#show raw: set text(font: fonts.at("monospace"))

#set heading(numbering: "1.1.1")
#show heading: it => {
  it
  v(.5em)
}

#import "/components/latex.typ"
#show "LaTeX": latex.LaTeX

#{ include "/contents/01-bia.typ" }
#pagebreak()
#{ include "/contents/02-section-binh-thuong.typ" }
#{ include "/contents/03-bang-bieu.typ" }
#{ include "/contents/04-code.typ" }
#{ include "/contents/05-chen-tai-lieu-tham-khao.typ" }
#pagebreak()
#bibliography("references.bib")
