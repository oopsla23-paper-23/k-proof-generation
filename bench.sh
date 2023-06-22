cd mm-benchmarks

for f in *;
do
echo $f;
START=$(date +%s);
cd ../risc0-metamath-15
RUST_BACKTRACE=full cargo run ../mm-benchmarks/$f goal;
END=$(date +%s);
cd -;
echo $f ".." $(expr $END - $START) "s" >> $1;
done;
