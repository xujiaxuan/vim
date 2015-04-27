#!/bin/bash
find `pwd` -name '*.h' >> cscope.files
find `pwd` -name '*.c' >> cscope.files
find `pwd` -name '*.cpp' >> cscope.files
cscope -Rbkq -i cscope.files
ctags -R .
