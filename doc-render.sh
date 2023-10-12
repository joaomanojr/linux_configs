#!/bin/bash

# https://www.linode.com/docs/guides/how-to-use-python-markdown-to-convert-markdown-to-html/
python3 -m markdown README.md -f README.html
printf "README.md rendered to README.html\n"
printf "Use 'see README.html' to check contents\n"

exit 0

