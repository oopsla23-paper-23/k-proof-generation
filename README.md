# Proof Generation (demo)

## Set-Up Instructions

1. Clone all submodules

   ```git submodule update --init --recursive --depth 1```

2. Install Z3 4.8.10 from [https://github.com/Z3Prover/z3/releases/tag/z3-4.8.10](https://github.com/Z3Prover/z3/releases/tag/z3-4.8.10)

3. Compile the customized K framework. The following commands are tested on Ubuntu 22.04, for other distributions you might need suitable commands to install required packages.
    ```
    pushd deps/k
    sudo apt-get install build-essential m4 openjdk-8-jdk libgmp-dev libmpfr-dev pkg-config flex bison libz3-dev maven python3 cmake gcc clang-11 lld-11 llvm-11-tools zlib1g-dev libboost-test-dev libyaml-dev libjemalloc-dev
    curl -sSL https://get.haskellstack.org/ | sh
    sed -i 's/-Werror //' llvm-backend/src/main/native/llvm-backend/CMakeLists.txt
    mvn package
    popd
    ```
    NOTE: This will take about 20 minutes. Use `mvn package -DskipTests` to skip tests.
    NOTE: You could also try to use a newer version of K but you would need to add an extra
    flag `--no-backend-hints` for the `scripts.prove_symbolic` script.

    Finally, add K binaries to `PATH`:
    ```
    export PATH=$(realpath deps/k/k-distribution/target/release/k/bin):$PATH`
    ```

4. Install Python prerequisites (NOTE: Python 3.7+ is required)

    ```
    python3 -m pip install -r requirements.txt
    ```

5. Install Metamath for verification

    ```
    sudo apt-get install metamath
    ```

## Proof Generation Instructions

We will use the `transfer.imp` program as an example. There are four inputs:
1. `examples/csl23/blockchain/imp.k`: The semantics of IMP
2. `IMP`: the main K module of IMP
3. `examples/csl23/blockchain/transfer.imp`: the transfer program
4. `proof-transfer`: the folder in which the generated proofs will be placed.

Following these steps to generate and verify the proof for `transfer.imp`.

1. Generate the proof(s).

   ```python3 -m scripts.prove_symbolic examples/csl23/blockchain/imp.k IMP examples/csl23/blockchain/transfer.imp --output proof-transfer```

   If you want the proof to be in a single file, add the `--standalone` flag.

2. Load the proofs to Metamath

   ```metamath proof-transfer/goal.mm```

3. Within the Metamath command line `MM>`, type the following command to verify the proofs

   ```verify proof *```

4. You'll see that the proofs are verified.

   ```
   33787128 bytes were read into the source buffer.
   The source has 16994 statements; 2586 are $a and 8360 are $p.
   No errors were found.  However, proofs were not checked.  Type VERIFY PROOF *
   if you want to check them.
   MM> verify proof *
   0 10%  20%  30%  40%  50%  60%  70%  80%  90% 100%
   ..................................................
   All proofs in the database were verified in 10.32 s.
   ```

## Proof compression

Generated proofs are usually very large.
There are two generic techniques how to deal with this.

### Metamath compression

We can apply a built-in Metamath compression to generated proofs, it often helps.

For the CSL23 demo, the easiest way is to use `gen_proofs.sh`.
The `gen_proofs.sh` generates the proof and then applies Metamath compression in a postprocessing stage:

```sh
bash ./gen_proofs.sh {EXAMPLE_FOLDER_IN_CSL23} {IMP_FILE_TO_RUN} {OUTPUT_FILE_NAME}
```

### Slicing

Proofs can also be sliced into multiple smaller proofs for parallelization as follows:

```sh
python3 -m scripts.metamath-extract {PROOF_MM_FILE} {OUTPUT_DIR}
```

All proofs in `OUTPUT_DIR` can be checked as follows:
```sh
cd {OUTPUT_DIR}
for f in *; do metamath "read '$f'" "verify proof *" "exit" >> ../log.txt; done;
```

The file `log.txt` in the parent directory contains all the logs from Metamath verification, including possible errors.

## Current Examples

- `examples/csl`: Examples for CSL
  - `examples/csl/svm`: support vector machine (SVM) examples
    - `examples/csl/svm5.imp`: an SVM with 5 features
  - `examples/csl/multisvm`: support vector machine (SVM) examples with multiclass predictions
    - `examples/csl/multisvm5.imp`: a multiclass SVM with 5 features
  - `examples/csl/perceptron`: layer perceptron examples with the ReLU activation function
    - `examples/csl/perceptron.imp`: a layer perceptron with 5 features
  - `examples/csl/blockchain`: blockchain examples
    - `examples/csl/blockchain/transfer.imp`: the transfer function
