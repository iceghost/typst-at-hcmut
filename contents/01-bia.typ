#let m = yaml("/metadata.yml")

#set align(center)

#[
  #show: upper
  #set par(leading: 1.2em)
  
  Đại học Quốc gia Thành phố Hồ Chí Minh \
  Trường Đại học Bách Khoa \
  *Khoa Khoa học và Kỹ thuật Máy tính*
]

#v(2fr)

#align(center, image("/components/logo.png", height: 5cm))

#v(2fr)

#[
  #set text(size: 15pt)
  #set align(left)
 
  *#m.at("môn học").at("tên") - #m.at("môn học").at("mã")*
]

#v(.5fr)

#block(width: 100%, inset: (y: 2em), stroke: (y: 1pt))[
  #set text(weight: "bold", size: 14pt)
  
  #align(left)[Báo cáo]


  #set par(leading: 1em)
  #set text(size: 18pt)
  
  #upper(m.at("tiêu đề"))
]

#v(1fr)

#grid(
  columns: (1fr, 1fr),
  rows: (2em, auto),
  column-gutter: .5cm,
  align(right, [_Giảng viên hướng dẫn_:]), align(left, m.at("giảng viên")),
  align(right, [_Sinh viên thực hiện_:]) , align(left, for s in m.at("sinh viên") [
                                             #v(1em, weak: true)
                                             #s.at("mssv") - #s.at("tên")  
                                           ]),
)

#v(1fr)

TP. Hồ Chí Minh, #datetime.today().display("[month]/[year]")
