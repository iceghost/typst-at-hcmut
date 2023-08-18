= Cài đặt

Dưới đây là hướng dẫn cài đặt Typst nếu bạn sử dụng Typst
trên máy tính cá nhân thay vì trên #link("https://typst.app", [web app]).

== Typst

Ở Windows, xài `winget`:

```console
winget install Typst.Typst
```

Ở MacOS, nếu xài `brew`:

```console
brew install typst
```

Còn lại, các bạn tự tải file executable
từ trang #link("https://github.com/typst/typst/releases/latest", [GitHub])
rồi bỏ vào chỗ nào đó trong `PATH`, ví dụ như `/usr/bin`.

== Visual Studio Code extensions

Nếu bạn sử dụng VSCode, trong file `.vscode/extensions.json`
có liệt kê các extensions hữu ích khi làm việc với Typst.

Với extensions `typst-lsp`, mình tắt chế độ tự động tạo file pdf
vì nó làm thư mục của bạn khá bừa bộn.
Bạn có thể bật lên lại thử, có thể bạn thích điều này.

== Font LaTeX

Các bạn có thể sử dụng hai link sau để tải các font
được sử dụng trong các tài liệu LaTeX:
- Latin Modern Roman: https://www.fontsquirrel.com/fonts/download/Latin-Modern-Roman
- Latin Modern Mono: https://www.fontsquirrel.com/fonts/download/Latin-Modern-Mono
Các bạn có thể tìm hiểu thêm về các font này tại trang https://fontsquirrel.com
