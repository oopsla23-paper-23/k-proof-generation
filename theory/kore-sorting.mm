$[ theory/kore.mm $]
$[ theory/matching-logic-predicate.mm $]

kore-top-sorting $a |- ( \in-sort ( \kore-top ph0 ) ph0 ) $.
kore-bottom-sorting $a |- ( \in-sort ( \kore-bottom ph0 ) ph0 ) $.
kore-not-sorting $a |- ( \in-sort ( \kore-not ph0 ph1 ) ph0 ) $.
kore-or-sorting-alt $a |- ( \imp ( \in-sort ph1 ph0 ) ( \imp ( \in-sort ph2 ph0 ) ( \in-sort ( \kore-or ph0 ph1 ph2 ) ph0 ) ) ) $.
kore-or-sorting $a |- ( \imp ( \and ( \in-sort ph1 ph0 ) ( \in-sort ph2 ph0 ) ) ( \in-sort ( \kore-or ph0 ph1 ph2 ) ph0 ) ) $.
or-sorting $a |- ( \imp ( \and ( \in-sort ph1 ph0 ) ( \in-sort ph2 ph0 ) ) ( \in-sort ( \or ph1 ph2 ) ph0 ) ) $.
kore-and-sorting-alt $a |- ( \imp ( \in-sort ph1 ph0 ) ( \imp ( \in-sort ph2 ph0 ) ( \in-sort ( \kore-and ph0 ph1 ph2 ) ph0 ) ) ) $.
kore-and-sorting $a |- ( \imp ( \and ( \in-sort ph1 ph0 ) ( \in-sort ph2 ph0 ) ) ( \in-sort ( \kore-and ph0 ph1 ph2 ) ph0 ) ) $.
kore-implies-sorting-alt $a |- ( \imp ( \in-sort ph2 ph0 ) ( \in-sort ( \kore-implies ph0 ph1 ph2 ) ph0 ) ) $.
kore-implies-sorting $a |- ( \imp ( \and ( \in-sort ph1 ph0 ) ( \in-sort ph2 ph0 ) ) ( \in-sort ( \kore-implies ph0 ph1 ph2 ) ph0 ) ) $.
kore-ceil-sorting $a |- ( \in-sort ( \kore-ceil ph0 ph2 ph1 ) ph2 ) $.
kore-floor-sorting $a |- ( \in-sort ( \kore-floor ph0 ph2 ph1 ) ph2 ) $.
kore-equals-sorting $a |- ( \in-sort ( \kore-equals ph0 ph1 ph2 ph3 ) ph1 ) $.
${
    $d X ph0 $.
    kore-mu-sorting.0 $e #Positive X ph1 $.
    kore-mu-sorting.1 $e |- ( \imp ( \in-sort X ph0 ) ( \in-sort ph1 ph0 ) ) $.
    kore-mu-sorting.2 $e #Substitution ph2 ph1 ( \inh ph0 ) X $.
    kore-mu-sorting $a |- ( \in-sort ( \mu X ph1 ) ph0 ) $.$}

${
    kore-valid-to-in-sort.0 $e |- ( \kore-valid ph0 ph1 ) $.
    kore-valid-to-in-sort $a |- ( \in-sort ph1 ph0 ) $.$}

kore-exists-sorting $a |- ( \in-sort ( \kore-exists ph0 ph1 x ph2 ) ph1 ) $.
kore-forall-sorting $a |- ( \in-sort ( \kore-forall ph0 ph1 x ph2 ) ph1 ) $.
sorted-forall-sorting-lemma-0 $a |- ( \imp ph0 ( \imp ( \imp ph1 ph2 ) ( \imp ( \imp ph0 ph1 ) ph2 ) ) ) $.
sorted-forall-sorting-lemma-1 $a |- ( \imp ( \floor ph0 ) ( \imp ( \floor ( \imp ph1 ph2 ) ) ( \floor ( \imp ( \imp ( \floor ph0 ) ph1 ) ph2 ) ) ) ) $.
sorted-forall-sorting-lemma-2 $a |- ( \imp ( \floor ph0 ) ( \imp ( \imp ( \and ph3 ( \floor ph0 ) ) ( \floor ( \imp ph1 ph2 ) ) ) ( \imp ph3 ( \floor ( \imp ( \imp ( \floor ph0 ) ph1 ) ph2 ) ) ) ) ) $.
sorted-forall-sorting-lemma-3 $a |- ( \imp ( \imp ph0 ph1 ) ( \imp ( \imp ph2 ph0 ) ( \imp ph2 ph1 ) ) ) $.
${
    $d x ph0 $.
    $d x ph3 $.
    sorted-forall-sorting.0 $e |- ( \exists x ( \in-sort x ph1 ) ) $.
    sorted-forall-sorting.1 $e |- ( \imp ( \and ph3 ( \in-sort x ph1 ) ) ( \in-sort ph2 ph0 ) ) $.
    sorted-forall-sorting $a |- ( \imp ph3 ( \in-sort ( \sorted-forall x ph1 ph2 ) ph0 ) ) $.$}

${
    $d x ph0 $.
    $d x ph3 $.
    sorted-exists-sorting.0 $e |- ( \imp ( \and ph3 ( \in-sort x ph1 ) ) ( \in-sort ph2 ph0 ) ) $.
    sorted-exists-sorting $a |- ( \imp ph3 ( \in-sort ( \sorted-exists x ph1 ph2 ) ph0 ) ) $.$}

kore-rewrites-sorting $a |- ( \imp ( \and ( \in-sort ph1 ph0 ) ( \in-sort ph2 ph0 ) ) ( \in-sort ( \kore-rewrites ph0 ph1 ph2 ) ph0 ) ) $.
kore-in-sorting $a |- ( \in-sort ( \kore-in ph0 ph1 ph2 ph3 ) ph1 ) $.
${
    kore-mu-sorting-alt.0 $e #Positive X ph1 $.
    kore-mu-sorting-alt   $a |- ( \in-sort ( \kore-mu ph0 X ph1 ) ph0 ) $.$}

${
    $d X ph0 $.
    $d X ph1 $.
    kore-eventually-sorting $a |- ( \in-sort ( \kore-eventually ph0 ph1 ) ph0 ) $.$}

${
    $d X ph0 $.
    $d X ph1 $.
    kore-weak-eventually-sorting $a |- ( \in-sort ( \kore-weak-eventually ph0 ph1 ) ph0 ) $.$}

${
    $d X ph0 $.
    $d X ph1 $.
    kore-always-sorting $a |- ( \in-sort ( \kore-always ph0 ph1 ) ph0 ) $.$}

kore-all-path-next-sorting $a |- ( \in-sort ( \kore-all-path-next ph0 ph1 ) ph0 ) $.
kore-circularity-sorting $a |- ( \in-sort ( \kore-circularity ph0 ph1 ) ph0 ) $.
${
    $d X Y ph0 $.
    kore-well-founded-sorting $a |- ( \in-sort ( \kore-well-founded ph0 ) ph0 ) $.$}

${
    $d X Y ph0 $.
    kore-well-founded-alt-sorting $a |- ( \in-sort ( \kore-well-founded-alt ph0 ) ph0 ) $.$}

kore-one-path-reaches-star-sorting $a |- ( \imp ( \in-sort ph1 ph0 ) ( \in-sort ( \kore-one-path-reaches-star ph0 ph1 ph2 ) ph0 ) ) $.
kore-one-path-reaches-plus-sorting $a |- ( \imp ( \in-sort ph1 ph0 ) ( \in-sort ( \kore-one-path-reaches-plus ph0 ph1 ph2 ) ph0 ) ) $.
