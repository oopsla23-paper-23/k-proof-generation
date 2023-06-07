This contains a modified semantics of IMP so that one can pass input into `*.imp` programs, i.e., they become functions.
It also extends the semantics of imp to work with lists.

All undeclared variables in an imp program have to be provided in the input as follows:
```bash
krun sum.imp -cIN="n |-> 10"
```
