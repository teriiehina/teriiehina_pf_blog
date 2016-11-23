#!/bin/bash
jekyll build
rsync -r ./_site/* teriiehina_blog@teriiehina.blog:~/teriiehina.blog