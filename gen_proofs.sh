#!/bin/bash

mm_compress() {
  metamath "read '$1'" "save proof * /compressed" "write source '$1'" "exit"
  rm $1~1
}

python3 -m scripts.prove_symbolic examples/csl23/$1/imp.k IMP examples/csl23/$1/$2 --standalone --output examples/csl23/$1/$3.mm
mm_compress examples/csl23/$1/$3.mm

python3 -m scripts.prove_symbolic examples/csl23/$1/imp5.k IMP5 examples/csl23/$1/$2 --standalone --output examples/csl23/$1/$3.imp5.mm
mm_compress examples/csl23/$1/$3.imp5.mm
