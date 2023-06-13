$[ theory/kore.mm $]
$[ theory/kore-notation.mm $]
$[ theory/matching-logic-predicate.mm $]

kore-ceil-is-predicate $a |- ( \kore-is-predicate ph1 ( \kore-ceil ph0 ph1 ph2 ) ) $.

kore-is-predicate-not $a |- ( \imp ( \kore-is-predicate ph0 ph1 ) ( \kore-is-predicate ph0 ( \kore-not ph0 ph1 ) ) ) $.

${
    kore-is-predicate-not-alt.0 $e |- ( \kore-is-predicate ph0 ph1 ) $.
    kore-is-predicate-not-alt   $a |- ( \kore-is-predicate ph0 ( \kore-not ph0 ph1 ) ) $.
$}

kore-floor-is-predicate $a |- ( \kore-is-predicate ph1 ( \kore-floor ph0 ph1 ph2 ) ) $.

${
    kore-is-predicate-and-alt.0 $e |- ( \kore-is-predicate ph0 ph1 ) $.
    kore-is-predicate-and-alt.1 $e |- ( \kore-is-predicate ph0 ph2 ) $.
    kore-is-predicate-and-alt   $a |- ( \kore-is-predicate ph0 ( \kore-and ph0 ph1 ph2 ) ) $.
$}

${
    $d x ph0 $.
    kore-is-sort-is-predicate $a |- ( \is-predicate ( \kore-is-sort ph0 ) ) $.
$}

kore-is-predicate-top $a |- ( \kore-is-predicate ph0 ( \kore-top ph0 ) ) $.


${
    kore-is-predicate-elim.0 $e |- ( \kore-is-predicate ph0 ph1 ) $.
    kore-is-predicate-elim.1 $e #Substitution ph3 ph2 ( \kore-bottom ph0 ) x $.
    kore-is-predicate-elim.2 $e #Substitution ph4 ph2 ( \kore-top ph0 ) x $.
    kore-is-predicate-elim.3 $e #Substitution ph5 ph2 ph1 x $.
    kore-is-predicate-elim.4 $e |- ph3 $.
    kore-is-predicate-elim.5 $e |- ph4 $.
    kore-is-predicate-elim   $a |- ph5 $.
$}
