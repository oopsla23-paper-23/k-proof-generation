#!/bin/bash

mm_compress() {
  metamath "read '$1'" "save proof * /compressed" "write source '$1'" "exit"
  rm $1~1
}

START=$(date +%s);

# generate proof
python3 -m scripts.prove_symbolic $1 $2 $3 --standalone --output $4

PROOFGEN=$(date +%s)

# apply mm postcompression
mm_compress $4

MMCOMPRESS=$(date +%s)

# slice into independent subproofs
rm -r risc0-metamath-15/$(basename $4)-sliced
python3 -m scripts.metamath-extract $4 risc0-metamath-15/$(basename $4)-sliced --abbreviate-lemma-names

SLICING=$(date +%s)

# zk
cd risc0-metamath-15
RUST_BACKTRACE=full cargo run $(basename $4)-sliced/goal.mm $5

ZK=$(date +%s)

echo $4" .. proofgen: "$(expr $PROOFGEN - $START)", mm_compress: "$(expr $MMCOMPRESS - $PROOFGEN)", slicing: "$(expr $SLICING - $MMCOMPRESS)", zk: "$(expr $ZK - $SLICING) >> $6
