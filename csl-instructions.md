Instructions

# Step 1. Prepare Input Files
We have two input files. The first is a PL semantics, say `imp.k`. The second is a program, say `svm5.imp`, which implements an SVM with 5 features. 

# Step 2. Proof Generation 
There are 3 artifacts for proof generation: CAV'21 (done), OOPSLA'23 (done), and POC (wip). The following are the instructions for OOPSLA'23. 

2a. `git clone git@github.com:fiedlr/k-proof-generation.git`
2b. Follow the `Usage` section in the `README.md` to build the project. Note that the OOPSLA'23 artifact uses a customized version of K. 
2c. Run `python3 -m scripts.prove_symbolic [IMP_K] IMP [SVM5] --output [PLACE]`
    where `[IMP_K]` is `examples/csl23/svm/imp.k`,
          `[SVM5]` is `examples/csl23/svm/svm5.imp`, and
          `[PLACE]` is `proof-svm5` (this is the name of the folder in which the proof will be placed). 
    This command does the following tasks:
    2c(1). Compile `imp.k`.
    2c(2). Execute the program and produce the execution trace and proof hints. 
    2c(3). Generate the Metamath proof.
    It took 15 minutes to generate the proof for `svm5` on my machine. 
2d. The output proof will be stored at `proof-svm5`, where `goal.mm` is the top-level proof that imports other (sub)-proofs and lemmas. 
2e. Run `metamath proof-svm5/goal.mm` to load the proof into Metamath. Then run `verify proof *` to check it. 
Note that (2c) and (2e) should be run at the root of the project. 

The CAV'21 and OOPSLA'23 artifacts are done. We are trying them to produce proofs for more benchmark programs. Currently we only have `svm5.imp`.

# Step 3. Split Metamath Proofs
We will split (automatically or manually) `goal.mm` into multiple Metamath files, each stating one theorem/lemma, its proof, and its dependencies. 

# Step 4. ZK-Metamath
We will use the RiscZero implementation of Metamath to verify the proofs. Adam will give us more information later this week. 
