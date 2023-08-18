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

#set document(title: m.at("tiêu đề"), author: m.at("sinh viên").map(s => s.at("tên")))
#set text(font: fonts.at("text"), lang: "vi")
#show raw: set text(font: fonts.at("monospace"))
#show raw.where(block: true): set block(fill: gray.lighten(90%), width: 100%, inset: (x: 1em, y: 1em))
#show link: it => {
  set text(fill: blue)
  underline(it)
}

#set heading(numbering: "1.1.1")
#show heading: it => {
  it
  v(.5em)
}

#import "/components/latex.typ"
#show "LaTeX": latex.LaTeX

#{ include "contents/00.typ" }
