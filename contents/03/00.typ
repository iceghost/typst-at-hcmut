= Sử dụng

Việc sử dụng trên web app đơn giản rồi. Mình hướng dẫn trên máy tính cá nhân.

== Compile và edit

Flow đơn giản là bạn treo lệnh này trong terminal:
```console
typst watch main.typ
```
Sau đó bạn sẽ đi edit các file thoải mái.
Cho đến khi có lỗi xảy ra hoặc file pdf không như ý muốn,
bạn mở terminal lên để xem nó báo lỗi gì rồi fix.

== Preview

Sau khi nó compile xong xuôi, không có lỗi gì,
bạn sẽ thấy xuất hiện file `main.pdf` ở ngoài cùng.
Bạn có thể sử dụng phần mềm đọc PDF yêu thích của bạn
để mở file pdf được compile.

Trên Windows, mình gợi ý phần mềm
#link("https://www.sumatrapdfreader.org/free-pdf-reader", [SumatraPDF]),
vì nó có thể:

- Auto reload file PDF mượt mà khi compile.
- Có _dark mode_.
  #footnote([Thật ra là _invert color_ thôi, nhấn phím `I`])

  #figure(caption: [Dark mode đây, không điêu],
    image("screenshot.png")
  )

Trên MacOS, mình thấy phần mềm `Preview.app` mặc định xài ngon.

Trên VSCode cũng có extension để xem pdf,
nhưng cá nhân mình thấy không ngon lắm
vì mỗi lần reload nó trắng tinh.

Ngoài ra, các bạn cẩn thận khi xài Acrobat Reader
vì phần mềm này block không cho compile file pdf mới
khi nó đang mở.
