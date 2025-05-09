#import "../utils/style.typ": ziti, zihao

#let abstract-en-page(
  keywords: (),
  doctype: "master",
  twoside: false,
  info: (:),
  body,
) = {
  set text(font: ziti.songti, size: zihao.xiaosi)
  set par(first-line-indent: 1.5em, leading: 16pt, spacing: 16pt)

  if doctype == "bachelor" {
    heading(level: 1)[#text(font: "Arial")[ABSTRACT]]
  } else {
    heading(level: 1)[Abstract]
  }

  body

  linebreak()
  linebreak()

  [*Keywords*：#(("",)+ keywords.intersperse(", ")).sum()]

  pagebreak(
    weak: true,
    to: if twoside {
      "odd"
    },
  )
}

