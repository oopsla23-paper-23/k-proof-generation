This contains a modified semantics of IMP so that one can pass input into `*.imp` programs, i.e., they become functions.
It also extends the semantics of imp to work with lists.

All undeclared variables in an imp program have to be provided in the input as follows:
```bash
krun sum.imp -cIN="N |-> 10"
```

Running with arrays:
```bash
krun svm.imp -cIN="L |-> 2 W |-> makeArray(2,3) X |-> makeArray(2,3) B |-> 20"
```

-----
# Running in Docker

Copy the `.k` versions to the docker container like:

```bash
docker cp svm5.k {CONTAINER_ID}:/opt/proof-generation/example/svm5.k
```

where {CONTAINER_ID} is taken from `docker ps`.

In Docker, after kompiling IMP, run:

```bash
pypy3 -m scripts.prove_reachability example/imp.k IMP example/svm5.k SVM5 --standalone -o examples/spec-proof.mm
```
