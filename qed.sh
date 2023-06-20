#!/bin/bash

mm_compress() {
  metamath "read '$1'" "save proof * /compressed" "write source '$1'" "exit"
  rm $1~1
}

# generate proof
#python3 -m scripts.prove_symbolic examples/csl23/$1/imp.k IMP examples/csl23/$1/$2 --standalone --output examples/csl23/$1/$3
python3 -m scripts.prove_symbolic $1 $2 $3 --standalone --output $4

# apply mm postcompression
mm_compress $4

# slice into independent subproofs
rm -r risc0-metamath-15/$(basename $4)-sliced
python3 -m scripts.metamath-extract $4 risc0-metamath-15/$(basename $4)-sliced

# zk
cd risc0-metamath-15
RUST_BACKTRACE=full cargo run $(basename $4)-sliced/goal.mm $5
