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

#set heading(numbering: "1.1.1")
#show heading: it => {
  it
  v(.5em)
}

#import "/components/latex.typ"
#show "LaTeX": latex.LaTeX

#{ include "/contents/01-bia.typ" }
#pagebreak()
#outline()
#outline(title: "Danh mục hình ảnh", target: figure.where(kind: image))
#outline(title: "Danh mục chương trình", target: figure.where(kind: raw))
#pagebreak()
#{ include "/contents/02-section-binh-thuong/00.typ" }
#{ include "/contents/03-bang-bieu.typ" }
#{ include "/contents/04-code.typ" }
#{ include "/contents/05-chen-tai-lieu-tham-khao.typ" }
#pagebreak()
#bibliography("references.bib")
