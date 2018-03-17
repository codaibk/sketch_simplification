#!/bin/bash

function simplify () {
   IN="figs/$1"
   OUT="out/$1"
   python simplify.py --img "$IN" --out "$OUT" || exit 1
}

INPUTS=(
# FIGURE 1
   "0001.jpg"
"0002.jpg"
#"0003.jpg"
#"0004.jpg"
#"0005.jpg"
#"0006.jpg"
#"0007.jpg"
#"0008.jpg"
#"0009.jpg"
#"0010.jpg"
)

test -d figs/out/ || mkdir -p figs/out/
for FILE in "${INPUTS[@]}"; do
# for FILE in figs/*.jpg; do
   echo -n "Processing ${FILE}..."
   simplify "$FILE"
   echo "Done!"
done



