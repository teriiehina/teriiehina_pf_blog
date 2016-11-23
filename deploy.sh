#!/bin/bash
jekyll build
rsync -r ./_site/* teriiehina.blog:~/teriiehina.blog