= Code

Code là một phần quan trọng
trong báo cáo của sinh viên khoa Máy tính.
Khác với LaTeX, Typst hỗ trợ gõ code block mà không cần
thêm thư viện gì khác:

#figure(caption: [mô phỏng C++ `ostream` trong Python],
```python
class ostream:
  def __lshift__(self, other):
    print(other, end = ' ')
    return self

if __name__ == " __main__ ":
  cout = ostream()
  endl = '\n'
  cout << "Hello" << ", " << "World!" << endl
```
)

Inline: `print("Hello world")` hoặc #raw("print(\"Hello world\")", lang: "python")
