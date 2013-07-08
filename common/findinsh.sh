#!/bin/bash
keyword=$1
find . -name "*.sh" -exec grep -H $keyword {} \;
