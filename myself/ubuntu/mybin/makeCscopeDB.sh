#!/bin/bash
rm -rf cscope.*
rm -rf tags
find `pwd` -name '*.h' >> cscope.files
find `pwd` -name '*.c' >> cscope.files
find `pwd` -name '*.cpp' >> cscope.files
find `pwd` -name '*.java' >> cscope.files
find `pwd` -name '*.xml' >> cscope.files
cscope -Rbkq -i cscope.files
ctags -R .
