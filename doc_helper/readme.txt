它是一个很强大的文本转换工具，我主要把它用来将markdown转换成html
官方介绍：
Pandoc is a Haskell library for converting from one markup format to another, and acommand-line tool that uses this library. It can read markdown and (subsets of)Textile, reStructuredText, HTML, LaTeX, MediaWiki markup, Haddock markup, OPML, andDocBook; and it can write plain text, markdown, reStructuredText, XHTML, HTML 5,LaTeX (including beamer slide shows), ConTeXt, RTF, OPML, DocBook, OpenDocument,ODT, Word docx, GNU Texinfo, MediaWiki markup, EPUB (v2 or v3), FictionBook2, Tex‐tile, groff man pages, Emacs Org-Mode, AsciiDoc, and Slidy, Slideous, DZSlides,reveal.js or S5 HTML slide shows. It can also produce PDF output on systems whereLaTeX is installed.
安装pandoc
不要安装12.04源上的，太老了，有条件可以下源码编的，但编译可能碰到很多问题，比较麻烦。我在 ubuntu 14.04源 上下了安装包，ubuntu12.04的可以直接安装
安装包发放在12.04
执行./install.sh
使用pandoc_md.sh直接转换你的markdown文件，例如pandoc_md.sh xxx.md
pandoc_md.sh默认生成带侧边栏目录的html，例如示例1，加-r后不会生成侧边栏，但依然有目录（用于通过浏览器转成PDF），例如示例2，加-n后则不会产生目录（用于显示比较简单的文本）。
特点：转换出来的html是独立的(self-contained)，所有css，js，图片都被直接编码到页面源码中，所以离线情况下就能显示样式和图片，另外在windows的浏览器下可以以更漂亮的字体显示。