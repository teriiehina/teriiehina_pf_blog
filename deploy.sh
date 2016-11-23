#!/bin/bash
jekyll build
scp -r ./_site/* teriiehina.blog:~/teriiehina.blog