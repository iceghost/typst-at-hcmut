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

#set text(font: fonts.at("text"))
#show raw: set text(font: fonts.at("monospace"))

#{ include "/contents/01-bia.typ" }
#pagebreak()

#lorem(100)