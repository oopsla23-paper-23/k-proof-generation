Generating Proof Certificates for a Language-Agnostic Deductive Program Verifier
--------------------------------------------------------------------------------

Welcome! This repository contains supplemental materials for our paper, including:
- A formalization of reachability in Metamath (`theory/kore-reachability.mm`),
- Our implementation for the proof generation procedure in the paper,
- Scripts for the evaluation section.

## Usage

1. Clone all submodules

    git submodule update --init --recursive --depth 1

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
    NOTE: This will take about 20 minutes.
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

## Run evaluations in the paper

See `examples/oopsla23/README.md` for details.

## Examples of generating proofs for concrete rewriting

Suppose you have a K definition `def.k` with the main module `MAIN`, and a
program `pgm.txt`, you can use

    python3 -m scripts.prove_symbolic def.k MAIN pgm.txt --output rewriting-proof

to generate the (concrete) rewriting proof for the program `pgm.txt` and output
to the `rewriting-proof` directory.

Once that's done, you can use Metamath to verify the proof:

    $ metamath rewriting-proof/goal.mm
    ...
    77192945 bytes were read into the source buffer.
    The source has 9148 statements; 4352 are $a and 1776 are $p.
    No errors were found.  However, proofs were not checked.  Type VERIFY PROOF *
    if you want to check them.
    MM> verify proof *
    0 10%  20%  30%  40%  50%  60%  70%  80%  90% 100%
    ..................................................
    MM>
