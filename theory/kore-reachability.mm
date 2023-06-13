$[ theory/kore.mm $]
$[ theory/kore-predicate.mm $]

${
    kore-implies-compat-in-kore-next.0 $e |- ( \is-predicate th0 ) $.
    kore-implies-compat-in-kore-next.1 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-implies-compat-in-kore-next.2 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-implies-compat-in-kore-next.3 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) ) $.
    kore-implies-compat-in-kore-next   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-next ph0 ph1 ) ( \kore-next ph0 ph2 ) ) ) ) $.
$}

${
    kore-implies-compat-in-kore-next-alt.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-implies-compat-in-kore-next-alt.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-implies-compat-in-kore-next-alt.2 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) ) $.
    kore-implies-compat-in-kore-next-alt   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-next ph0 ph1 ) ( \kore-next ph0 ph2 ) ) ) ) $.
$}

${
    kore-or-propagates-in-kore-next.0 $e |- ( \is-predicate th0 ) $.
    kore-or-propagates-in-kore-next.1 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-or-propagates-in-kore-next.2 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-or-propagates-in-kore-next   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-iff ph0 ( \kore-next ph0 ( \kore-or ph0 ph1 ph2 ) ) ( \kore-or ph0 ( \kore-next ph0 ph1 ) ( \kore-next ph0 ph2 ) ) ) ) ) $.
$}

${
    kore-or-propagates-in-kore-next-alt.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-or-propagates-in-kore-next-alt.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-or-propagates-in-kore-next-alt   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-iff ph0 ( \kore-next ph0 ( \kore-or ph0 ph1 ph2 ) ) ( \kore-or ph0 ( \kore-next ph0 ph1 ) ( \kore-next ph0 ph2 ) ) ) ) ) $.
$}

${
    kore-prefixpoint.0 $e #Positive X ph2 $.
    kore-prefixpoint.1 $e #Substitution ph1 ph2 ( \mu X ph2 ) X $.
    kore-prefixpoint.2 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-prefixpoint   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-mu ph0 X ph2 ) ) ) ) $.
$}

${

    kore-kt.0 $e #Positive X ph1 $.
    kore-kt.1 $e #Substitution ph3 ph1 ph2 X $.
    kore-kt.2 $e #Substitution ph4 ph1 ( \imp th0 ph2 ) X $.
    kore-kt.3 $e |- ( \is-predicate th0 ) $.
    kore-kt.4 $e |- ( \imp th0 ( \imp ph4 ph3 ) ) $.
    kore-kt.5 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-kt.6 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
    kore-kt.7 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph3 ph2 ) ) ) $.
    kore-kt   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-mu ph0 X ph1 ) ph2 ) ) ) $.
$}



${
    kore-eventually-prefixpoint-lemma.0 $e #Notation ph2 ph3 $.
    kore-eventually-prefixpoint-lemma   $a
        #Notation ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-or ph0 ph1 ( \kore-next ph0 ph2 ) ) ph2 ) ) )
                  ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-or ph0 ph1 ( \kore-next ph0 ph3 ) ) ph3 ) ) )
    $.
$}

${

    $d X ph0 $.
    $d X ph1 $.
    kore-eventually-sorting-alt $a |- ( \imp ( \in-sort ph1 ph0 ) ( \in-sort ( \mu X ( \kore-or ph0 ph1 ( \kore-next ph0 X ) ) ) ph0 ) ) $.
$}

${
    $d X ph0 $.
    $d X ph1 $.
    kore-eventually-prefixpoint $a |- ( \imp ( \in-sort ph1 ph0 ) ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-or ph0 ph1 ( \kore-next ph0 ( \kore-eventually ph0 ph1 ) ) ) ( \kore-eventually ph0 ph1 ) ) ) ) $.
$}

${
    kore-eventually-prefixpoint-alt.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-eventually-prefixpoint-alt   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-or ph0 ph1 ( \kore-next ph0 ( \kore-eventually ph0 ph1 ) ) ) ( \kore-eventually ph0 ph1 ) ) ) ) $.
$}

${
    kore-eventually-kt-notation.0 $e #Notation ph1 ph2 $.
    kore-eventually-kt-notation   $a
        #Notation ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph3 ) ) )
                  ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph2 ph3 ) ) )
    $.
$}

${
    $d X ph0 $.
    $d X ph1 $.
    $d X ph2 $.
    kore-eventually-kt.0 $e |- ( \is-predicate th0 ) $.
    kore-eventually-kt.1 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-eventually-kt.2 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-eventually-kt.3 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-or ph0 ph1 ( \kore-next ph0 ph2 ) ) ph2 ) ) ) $.
    kore-eventually-kt   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-eventually ph0 ph1 ) ph2 ) ) ) $.
$}

${
    kore-eventually-kt-alt.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-eventually-kt-alt.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-eventually-kt-alt.2 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-or ph0 ph1 ( \kore-next ph0 ph2 ) ) ph2 ) ) ) $.
    kore-eventually-kt-alt   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-eventually ph0 ph1 ) ph2 ) ) ) $.
$}

${
    kore-ph-to-eventually-ph.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-ph-to-eventually-ph   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-eventually ph0 ph1 ) ) ) ) $.
$}

${
    kore-next-eventually-ph-to-eventually-ph.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-next-eventually-ph-to-eventually-ph   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-next ph0 ( \kore-eventually ph0 ph1 ) ) ( \kore-eventually ph0 ph1 ) ) ) ) $.
$}

${
    kore-eventually-idempotency.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-eventually-idempotency   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-eventually ph0 ( \kore-eventually ph0 ph1 ) ) ( \kore-eventually ph0 ph1 ) ) ) ) $.
$}

${
    kore-implies-compat-in-kore-eventually.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-implies-compat-in-kore-eventually.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-implies-compat-in-kore-eventually.2 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) ) $.
    kore-implies-compat-in-kore-eventually   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-eventually ph0 ph1 ) ( \kore-eventually ph0 ph2 ) ) ) ) $.
$}

${
    kore-or-propagates-in-eventually.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-or-propagates-in-eventually.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-or-propagates-in-eventually   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-iff ph0 ( \kore-eventually ph0 ( \kore-or ph0 ph1 ph2 ) ) ( \kore-or ph0 ( \kore-eventually ph0 ph1 ) ( \kore-eventually ph0 ph2 ) ) ) ) ) $.
$}



${
    kore-weak-eventually-postfixpoint-notation.0 $e #Notation ph2 ph3 $.
    kore-weak-eventually-postfixpoint-notation $a
        #Notation ( \imp ( \in-sort ph1 ph0 ) ( \kore-valid ph0 ( \kore-implies ph0 ph2 ( \kore-not ph0 ( \kore-not ph0 ( \kore-or ph0 ph1 ( \kore-next ph0 ph2 ) ) ) ) ) ) )
                  ( \imp ( \in-sort ph1 ph0 ) ( \kore-valid ph0 ( \kore-implies ph0 ph3 ( \kore-not ph0 ( \kore-not ph0 ( \kore-or ph0 ph1 ( \kore-next ph0 ph3 ) ) ) ) ) ) )
    $.
$}

${
    $d X ph0 $.
    $d X ph1 $.
    kore-weak-eventually-postfixpoint $a |- ( \imp ( \in-sort ph1 ph0 ) ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-weak-eventually ph0 ph1 ) ( \kore-or ph0 ph1 ( \kore-next ph0 ( \kore-weak-eventually ph0 ph1 ) ) ) ) ) ) $.
$}

${
    kore-weak-eventually-postfixpoint-alt.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-weak-eventually-postfixpoint-alt   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-weak-eventually ph0 ph1 ) ( \kore-or ph0 ph1 ( \kore-next ph0 ( \kore-weak-eventually ph0 ph1 ) ) ) ) ) ) $.
$}

${
    kore-weak-eventually-kt-notation.0 $e #Notation ph2 ph3 $.
    kore-weak-eventually-kt-notation   $a
        #Notation ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-not ph0 ( \kore-not ph0 ph1 ) ) ph2 ) ) )
                  ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-not ph0 ( \kore-not ph0 ph1 ) ) ph3 ) ) )
    $.
$}

${
    $d X ph0 $.
    $d X ph1 $.
    $d X ph2 $.
    kore-weak-eventually-kt.0 $e |- ( \is-predicate th0 ) $.
    kore-weak-eventually-kt.1 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-weak-eventually-kt.2 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-weak-eventually-kt.3 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-or ph0 ph2 ( \kore-next ph0 ph1 ) ) ) ) ) $.
    kore-weak-eventually-kt   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-weak-eventually ph0 ph2 ) ) ) ) $.
$}

${
    kore-weak-eventually-kt-alt.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-weak-eventually-kt-alt.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-weak-eventually-kt-alt.2 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-or ph0 ph2 ( \kore-next ph0 ph1 ) ) ) ) ) $.
    kore-weak-eventually-kt-alt   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-weak-eventually ph0 ph2 ) ) ) ) $.
$}

${
    kore-weak-eventually-prefixpoint.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-weak-eventually-prefixpoint   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-or ph0 ph1 ( \kore-next ph0 ( \kore-weak-eventually ph0 ph1 ) ) ) ( \kore-weak-eventually ph0 ph1 ) ) ) ) $.
$}

${
    kore-eventually-to-weak-eventually.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-eventually-to-weak-eventually   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-eventually ph0 ph1 ) ( \kore-weak-eventually ph0 ph1 ) ) ) ) $.
$}

${
    kore-next-weak-eventually-ph-to-weak-eventually-ph.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-next-weak-eventually-ph-to-weak-eventually-ph   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-next ph0 ( \kore-weak-eventually ph0 ph1 ) ) ( \kore-weak-eventually ph0 ph1 ) ) ) ) $.
$}

${
    kore-ph-to-weak-eventually-ph.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-ph-to-weak-eventually-ph   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-weak-eventually ph0 ph1 ) ) ) ) $.
$}

${
    kore-implies-compat-in-kore-weak-eventually.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-implies-compat-in-kore-weak-eventually.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-implies-compat-in-kore-weak-eventually.2 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) ) $.
    kore-implies-compat-in-kore-weak-eventually   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-weak-eventually ph0 ph1 ) ( \kore-weak-eventually ph0 ph2 ) ) ) ) $.
$}

${
    kore-weak-eventually-idempotency.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-weak-eventually-idempotency   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-weak-eventually ph0 ( \kore-weak-eventually ph0 ph1 ) ) ( \kore-weak-eventually ph0 ph1 ) ) ) ) $.
$}



${
    kore-always-postfixpoint-notation.0 $e #Notation ph2 ph3 $.
    kore-always-postfixpoint-notation   $a
        #Notation ( \imp ( \in-sort ph1 ph0 ) ( \kore-valid ph0 ( \kore-implies ph0 ph2 ( \kore-and ph0 ph1 ( \kore-all-path-next ph0 ph2 ) ) ) ) )
                  ( \imp ( \in-sort ph1 ph0 ) ( \kore-valid ph0 ( \kore-implies ph0 ph3 ( \kore-and ph0 ph1 ( \kore-all-path-next ph0 ph3 ) ) ) ) )
    $.
$}

${
    $d X ph0 $.
    $d X ph1 $.
    kore-always-postfixpoint $a |- ( \imp ( \in-sort ph1 ph0 ) ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-always ph0 ph1 ) ( \kore-and ph0 ph1 ( \kore-all-path-next ph0 ( \kore-always ph0 ph1 ) ) ) ) ) ) $.
$}

${
    kore-always-postfixpoint-alt.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-always-postfixpoint-alt   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-always ph0 ph1 ) ( \kore-and ph0 ph1 ( \kore-all-path-next ph0 ( \kore-always ph0 ph1 ) ) ) ) ) ) $.
$}

${

    $d X ph0 $.
    $d X ph1 $.
    $d X ph2 $.
    kore-always-kt.0 $e |- ( \is-predicate th0 ) $.
    kore-always-kt.1 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-always-kt.2 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-always-kt.3 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-and ph0 ph2 ( \kore-all-path-next ph0 ph1 ) ) ) ) ) $.
    kore-always-kt   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-always ph0 ph2 ) ) ) ) $.
$}

${
    kore-always-kt-alt.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-always-kt-alt.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-always-kt-alt.2 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-and ph0 ph2 ( \kore-all-path-next ph0 ph1 ) ) ) ) ) $.
    kore-always-kt-alt   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-always ph0 ph2 ) ) ) ) $.
$}

${
    kore-implies-compat-in-kore-always.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-implies-compat-in-kore-always.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-implies-compat-in-kore-always.2 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) ) $.
    kore-implies-compat-in-kore-always   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-always ph0 ph1 ) ( \kore-always ph0 ph2 ) ) ) ) $.
$}

${
    kore-always-elim.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-always-elim   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-always ph0 ph1 ) ph1 ) ) ) $.
$}

${
    kore-always-idempotency.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-always-idempotency   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-always ph0 ( \kore-always ph0 ph1 ) ) ( \kore-always ph0 ph1 ) ) ) ) $.
$}

${
    kore-always-dup.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-always-dup   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-always ph0 ph1 ) ( \kore-always ph0 ( \kore-always ph0 ph1 ) ) ) ) ) $.
$}



${
    kore-well-founded-prefixpoint-notation.0 $e #Notation ph1 ph2 $.
    kore-well-founded-prefixpoint-notation   $a
        #Notation ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-all-path-next ph0 ph1 ) ph1 ) ) )
                  ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-all-path-next ph0 ph2 ) ph2 ) ) )
    $.
$}

${
    $d X ph0 $.
    kore-well-founded-prefixpoint $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-all-path-next ph0 ( \kore-well-founded ph0 ) ) ( \kore-well-founded ph0 ) ) ) ) $.
$}

${
    kore-well-founded-kt-notation.0 $e #Notation ph2 ph3 $.
    kore-well-founded-kt-notation   $a
        #Notation ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph2 ph1 ) ) )
                  ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph3 ph1 ) ) )
    $.
$}

${
    $d x X ph0 $.
    $d x X ph1 $.
    $d x th0 $.
    kore-well-founded-kt.0 $e |- ( \is-predicate th0 ) $.
    kore-well-founded-kt.1 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-well-founded-kt.2 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-all-path-next ph0 ph1 ) ph1 ) ) ) $.
    kore-well-founded-kt   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-well-founded ph0 ) ph1 ) ) ) $.
$}

${
    kore-well-founded-kt-alt.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-well-founded-kt-alt.1 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-all-path-next ph0 ph1 ) ph1 ) ) ) $.
    kore-well-founded-kt-alt   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-well-founded ph0 ) ph1 ) ) ) $.
$}



${
    kore-well-founded-alt-prefixpoint-notation.0 $e #Notation ph1 ph2 $.
    kore-well-founded-alt-prefixpoint-notation   $a
        #Notation ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-all-path-next ph0 ( \kore-always ph0 ph1 ) ) ph1 ) ) )
                  ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-all-path-next ph0 ( \kore-always ph0 ph2 ) ) ph2 ) ) )
    $.
$}

${
    $d X ph0 $.
    kore-well-founded-alt-prefixpoint $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-all-path-next ph0 ( \kore-always ph0 ( \kore-well-founded-alt ph0 ) ) ) ( \kore-well-founded-alt ph0 ) ) ) ) $.
$}

${
    kore-well-founded-alt-kt-notation.0 $e #Notation ph2 ph3 $.
    kore-well-founded-alt-kt-notation   $a
        #Notation ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph2 ph1 ) ) )
                  ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph3 ph1 ) ) )
    $.
$}

${
    $d x X ph0 $.
    $d x X ph1 $.
    $d x th0 $.
    kore-well-founded-alt-kt.0 $e |- ( \is-predicate th0 ) $.
    kore-well-founded-alt-kt.1 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-well-founded-alt-kt.2 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-all-path-next ph0 ( \kore-always ph0 ph1 ) ) ph1 ) ) ) $.
    kore-well-founded-alt-kt   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-well-founded-alt ph0 ) ph1 ) ) ) $.
$}

${
    kore-well-founded-alt-kt-alt.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-well-founded-alt-kt-alt.1 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-all-path-next ph0 ( \kore-always ph0 ph1 ) ) ph1 ) ) ) $.
    kore-well-founded-alt-kt-alt   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-well-founded-alt ph0 ) ph1 ) ) ) $.
$}

kore-well-founded-alt-postfixpoint $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-well-founded-alt ph0 ) ( \kore-all-path-next ph0 ( \kore-always ph0 ( \kore-well-founded-alt ph0 ) ) ) ) ) ) $.

${
    kore-all-path-next-and-next-propagate-lemma.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-all-path-next-and-next-propagate-lemma.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-all-path-next-and-next-propagate-lemma.2 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
    kore-all-path-next-and-next-propagate-lemma   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-or ph0 ( \kore-or ph0 ph1 ph3 ) ( \kore-not ph0 ph2 ) ) ( \kore-implies ph0 ( \kore-and ph0 ( \kore-not ph0 ph1 ) ph2 ) ph3 ) ) ) ) $.
$}

${

    kore-all-path-next-and-next-propagate.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-all-path-next-and-next-propagate.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-all-path-next-and-next-propagate   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-and ph0 ( \kore-all-path-next ph0 ph1 ) ( \kore-next ph0 ph2 ) ) ( \kore-next ph0 ( \kore-and ph0 ph1 ph2 ) ) ) ) ) $.
$}

${
    kore-all-path-next-imp-to-next.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-all-path-next-imp-to-next.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-all-path-next-imp-to-next   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-all-path-next ph0 ( \kore-implies ph0 ph1 ph2 ) ) ( \kore-implies ph0 ( \kore-next ph0 ph1 ) ( \kore-next ph0 ph2 ) ) ) ) ) $.
$}

${
    kore-weak-eventually-to-wf-eventually.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-weak-eventually-to-wf-eventually   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-weak-eventually ph0 ph1 ) ( \kore-implies ph0 ( \kore-well-founded ph0 ) ( \kore-eventually ph0 ph1 ) ) ) ) ) $.
$}

${
    kore-wf-eventually-to-weak-eventually.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-wf-eventually-to-weak-eventually   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-implies ph0 ( \kore-well-founded ph0 ) ( \kore-eventually ph0 ph1 ) ) ( \kore-weak-eventually ph0 ph1 ) ) ) ) $.
$}

${
    kore-or-propagates-in-weak-eventually.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-or-propagates-in-weak-eventually.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-or-propagates-in-weak-eventually   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-iff ph0 ( \kore-weak-eventually ph0 ( \kore-or ph0 ph1 ph2 ) ) ( \kore-or ph0 ( \kore-weak-eventually ph0 ph1 ) ( \kore-weak-eventually ph0 ph2 ) ) ) ) ) $.
$}

${

    kore-always-and-weak-eventually-to-eventually.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-always-and-weak-eventually-to-eventually.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-always-and-weak-eventually-to-eventually   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-and ph0 ( \kore-always ph0 ph1 ) ( \kore-weak-eventually ph0 ph2 ) ) ( \kore-weak-eventually ph0 ( \kore-and ph0 ph1 ph2 ) ) ) ) ) $.
$}

${
    kore-rewrites-star-reflexivity.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-rewrites-star-reflexivity   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-star ph0 ph1 ph1 ) ) ) $.
$}

${
    kore-rewrites-star-union.0 $e |- ( \is-predicate th0 ) $.
    kore-rewrites-star-union.1 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-rewrites-star-union.2 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-rewrites-star-union.3 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
    kore-rewrites-star-union.4 $e |- ( \imp th0 ( \in-sort ph4 ph0 ) ) $.
    kore-rewrites-star-union.5 $e |- ( \imp th0 ( \in-sort ph5 ph0 ) ) $.
    kore-rewrites-star-union.6 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-star ph0 ( \kore-and ph0 ph1 ph3 ) ph4 ) ) ) $.
    kore-rewrites-star-union.7 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-star ph0 ( \kore-and ph0 ph2 ph3 ) ph5 ) ) ) $.
    kore-rewrites-star-union   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-star ph0 ( \kore-and ph0 ( \kore-or ph0 ph1 ph2 ) ph3 ) ( \kore-or ph0 ph4 ph5 ) ) ) ) $.
$}

${
    kore-rewrites-plus-union.0 $e |- ( \is-predicate th0 ) $.
    kore-rewrites-plus-union.1 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-rewrites-plus-union.2 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-rewrites-plus-union.3 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
    kore-rewrites-plus-union.4 $e |- ( \imp th0 ( \in-sort ph4 ph0 ) ) $.
    kore-rewrites-plus-union.5 $e |- ( \imp th0 ( \in-sort ph5 ph0 ) ) $.
    kore-rewrites-plus-union.6 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-plus ph0 ( \kore-and ph0 ph1 ph3 ) ph4 ) ) ) $.
    kore-rewrites-plus-union.7 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-plus ph0 ( \kore-and ph0 ph2 ph3 ) ph5 ) ) ) $.
    kore-rewrites-plus-union   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-plus ph0 ( \kore-and ph0 ( \kore-or ph0 ph1 ph2 ) ph3 ) ( \kore-or ph0 ph4 ph5 ) ) ) ) $.
$}

${
    kore-rewrites-star-subsumption-lhs.0 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) ) $.
    kore-rewrites-star-subsumption-lhs.1 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-star ph0 ph2 ph3 ) ) ) $.
    kore-rewrites-star-subsumption-lhs   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-star ph0 ph1 ph3 ) ) ) $.
$}

${
    kore-rewrites-star-subsumption-rhs.0 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-rewrites-star-subsumption-rhs.1 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
    kore-rewrites-star-subsumption-rhs.2 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-star ph0 ph1 ph2 ) ) ) $.
    kore-rewrites-star-subsumption-rhs.3 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph2 ph3 ) ) ) $.
    kore-rewrites-star-subsumption-rhs   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-star ph0 ph1 ph3 ) ) ) $.
$}

${
    kore-rewrites-plus-subsumption-lhs.0 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) ) $.
    kore-rewrites-plus-subsumption-lhs.1 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-plus ph0 ph2 ph3 ) ) ) $.
    kore-rewrites-plus-subsumption-lhs   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-plus ph0 ph1 ph3 ) ) ) $.
$}

${
    kore-rewrites-plus-subsumption-rhs.0 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-rewrites-plus-subsumption-rhs.1 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
    kore-rewrites-plus-subsumption-rhs.2 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-plus ph0 ph1 ph2 ) ) ) $.
    kore-rewrites-plus-subsumption-rhs.3 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph2 ph3 ) ) ) $.
    kore-rewrites-plus-subsumption-rhs   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-plus ph0 ph1 ph3 ) ) ) $.
$}

${
    kore-rewrites-star-prune.0 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-rewrites-star-prune.1 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
    kore-rewrites-star-prune.2 $e |- ( \imp th0 ( \in-sort ph4 ph0 ) ) $.
    kore-rewrites-star-prune.3 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-not ph0 ph2 ) ) ) $.
    kore-rewrites-star-prune.4 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-star ph0 ph1 ( \kore-or ph0 ( \kore-and ph0 ph2 ph3 ) ph4 ) ) ) ) $.
    kore-rewrites-star-prune   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-star ph0 ph1 ph4 ) ) ) $.
$}

${
    kore-rewrites-star-branch.0 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-rewrites-star-branch.1 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
    kore-rewrites-star-branch.2 $e |- ( \imp th0 ( \in-sort ph4 ph0 ) ) $.
    kore-rewrites-star-branch.3 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-star ph0 ph1 ( \kore-or ph0 ph2 ph3 ) ) ) ) $.
    kore-rewrites-star-branch.4 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-star ph0 ph2 ph4 ) ) ) $.
    kore-rewrites-star-branch   $a |- ( \imp th0  ( \kore-valid ph0 ( \kore-rewrites-star ph0 ph1 ( \kore-or ph0 ph4 ph3 ) ) ) ) $.
$}

${
    kore-rewrites-plus-branch.0 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-rewrites-plus-branch.1 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
    kore-rewrites-plus-branch.2 $e |- ( \imp th0 ( \in-sort ph4 ph0 ) ) $.
    kore-rewrites-plus-branch.3 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-plus ph0 ph1 ( \kore-or ph0 ph2 ph3 ) ) ) ) $.
    kore-rewrites-plus-branch.4 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-star ph0 ph2 ph4 ) ) ) $.
    kore-rewrites-plus-branch   $a |- ( \imp th0  ( \kore-valid ph0 ( \kore-rewrites-plus ph0 ph1 ( \kore-or ph0 ph4 ph3 ) ) ) ) $.
$}

${
    kore-rewrites-subsumption-lhs.0 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) ) $.
    kore-rewrites-subsumption-lhs.1 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites ph0 ph2 ph3 ) ) ) $.
    kore-rewrites-subsumption-lhs   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites ph0 ph1 ph3 ) ) ) $.
$}

${
    kore-rewrites-subsumption-rhs.0 $e |- ( \is-predicate th0 ) $.
    kore-rewrites-subsumption-rhs.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-rewrites-subsumption-rhs.2 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
    kore-rewrites-subsumption-rhs.3 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites ph0 ph1 ph2 ) ) ) $.
    kore-rewrites-subsumption-rhs.4 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph2 ph3 ) ) ) $.
    kore-rewrites-subsumption-rhs   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites ph0 ph1 ph3 ) ) ) $.
$}

${
    $d x th0 $.
    $d x ph0 $.
    $d x ph1 $.
    $d x ph2 $.
    kore-predicate-propagate-in-next.0 $e |- ( \kore-is-predicate ph0 ph1 ) $.
    kore-predicate-propagate-in-next.1 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-predicate-propagate-in-next.2 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-predicate-propagate-in-next   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-and ph0 ph1 ( \kore-next ph0 ph2 ) ) ( \kore-next ph0 ( \kore-and ph0 ph1 ph2 ) ) ) ) ) $.
$}

${
    $d x th0 $.
    $d x ph0 $.
    $d x ph1 $.
    $d x ph2 $.
    kore-predicate-propagate-in-weak-eventually.0 $e |- ( \kore-is-predicate ph0 ph1 ) $.
    kore-predicate-propagate-in-weak-eventually.1 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-predicate-propagate-in-weak-eventually.2 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-predicate-propagate-in-weak-eventually   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-and ph0 ph1 ( \kore-weak-eventually ph0 ph2 ) ) ( \kore-weak-eventually ph0 ( \kore-and ph0 ph1 ph2 ) ) ) ) ) $.
$}

${

    kore-rewrites-constraint-lemma.0 $e |- ( \kore-is-predicate ph0 ph1 ) $.
    kore-rewrites-constraint-lemma.1 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-rewrites-constraint-lemma.2 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-rewrites-constraint-lemma.3 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
    kore-rewrites-constraint-lemma.4 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites ph0 ( \kore-and ph0 ph1 ph2 ) ph3 ) ) ) $.
    kore-rewrites-constraint-lemma   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites ph0 ( \kore-and ph0 ph1 ph2 ) ( \kore-and ph0 ph1 ph3 ) ) ) ) $.
$}

${

    kore-one-path-reaches-plus-constraint-lemma.0 $e |- ( \kore-is-predicate ph0 ph1 ) $.
    kore-one-path-reaches-plus-constraint-lemma.1 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-one-path-reaches-plus-constraint-lemma.2 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-one-path-reaches-plus-constraint-lemma.3 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
    kore-one-path-reaches-plus-constraint-lemma.4 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-plus ph0 ( \kore-and ph0 ph1 ph2 ) ph3 ) ) ) $.
    kore-one-path-reaches-plus-constraint-lemma   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-plus ph0 ( \kore-and ph0 ph1 ph2 ) ( \kore-and ph0 ph1 ph3 ) ) ) ) $.
$}

${

    kore-one-path-reaches-star-constraint-lemma-alt.0 $e |- ( \kore-is-predicate ph0 ph2 ) $.
    kore-one-path-reaches-star-constraint-lemma-alt.1 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-one-path-reaches-star-constraint-lemma-alt.2 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-one-path-reaches-star-constraint-lemma-alt.3 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
    kore-one-path-reaches-star-constraint-lemma-alt.4 $e |- ( \imp th0 ( \in-sort ph4 ph0 ) ) $.
    kore-one-path-reaches-star-constraint-lemma-alt.5 $e |- ( \imp th0 ( \in-sort ph5 ph0 ) ) $.
    kore-one-path-reaches-star-constraint-lemma-alt.6 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-one-path-reaches-star ph0 ( \kore-and ph0 ph2 ph3 ) ( \kore-and ph0 ph4 ph5 ) ) ) ) ) $.
    kore-one-path-reaches-star-constraint-lemma-alt   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-one-path-reaches-star ph0 ( \kore-and ph0 ph2 ph3 ) ( \kore-and ph0 ( \kore-and ph0 ph2 ph4 ) ph5 ) ) ) ) ) $.
$}

${

    kore-one-path-reaches-plus-constraint-lemma-alt.0 $e |- ( \kore-is-predicate ph0 ph1 ) $.
    kore-one-path-reaches-plus-constraint-lemma-alt.1 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-one-path-reaches-plus-constraint-lemma-alt.2 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-one-path-reaches-plus-constraint-lemma-alt.3 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
    kore-one-path-reaches-plus-constraint-lemma-alt.4 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph4 ( \kore-one-path-reaches-plus ph0 ( \kore-and ph0 ph1 ph2 ) ph3 ) ) ) ) $.
    kore-one-path-reaches-plus-constraint-lemma-alt   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph4 ( \kore-one-path-reaches-plus ph0 ( \kore-and ph0 ph1 ph2 ) ( \kore-and ph0 ph1 ph3 ) ) ) ) ) $.
$}

${
    kore-rewrites-star-intro.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-rewrites-star-intro.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-rewrites-star-intro.2 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites ph0 ph1 ph2 ) ) ) $.
    kore-rewrites-star-intro   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-star ph0 ph1 ph2 ) ) ) $.
$}

${
    kore-rewrites-star-intro-alt.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-rewrites-star-intro-alt.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-rewrites-star-intro-alt.2 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-plus ph0 ph1 ph2 ) ) ) $.
    kore-rewrites-star-intro-alt   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-star ph0 ph1 ph2 ) ) ) $.
$}

${
    kore-rewrites-plus-intro.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-rewrites-plus-intro.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-rewrites-plus-intro.2 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites ph0 ph1 ph2 ) ) ) $.
    kore-rewrites-plus-intro   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-plus ph0 ph1 ph2 ) ) ) $.
$}

${
    kore-rewrites-star-transitivity.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-rewrites-star-transitivity.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-rewrites-star-transitivity.2 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
    kore-rewrites-star-transitivity.3 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-star ph0 ph1 ph2 ) ) ) $.
    kore-rewrites-star-transitivity.4 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-star ph0 ph2 ph3 ) ) ) $.
    kore-rewrites-star-transitivity   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-star ph0 ph1 ph3 ) ) ) $.
$}

${
    kore-rewrites-plus-transitivity.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-rewrites-plus-transitivity.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-rewrites-plus-transitivity.2 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
    kore-rewrites-plus-transitivity.3 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-plus ph0 ph1 ph2 ) ) ) $.
    kore-rewrites-plus-transitivity.4 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-star ph0 ph2 ph3 ) ) ) $.
    kore-rewrites-plus-transitivity   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-plus ph0 ph1 ph3 ) ) ) $.
$}

${
    kore-one-path-reaches-star-intro.0 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-one-path-reaches-star-intro.1 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-star ph0 ph1 ph2 ) ) ) $.
    kore-one-path-reaches-star-intro   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-star ph0 ph1 ph2 ) ) ) $.
$}

${
    kore-one-path-reaches-star-intro-alt.0 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-one-path-reaches-star-intro-alt.1 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-plus ph0 ph1 ph2 ) ) ) $.
    kore-one-path-reaches-star-intro-alt   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-star ph0 ph1 ph2 ) ) ) $.
$}

${
    kore-one-path-reaches-star-intro-alt2.0 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-one-path-reaches-star-intro-alt2.1 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) ) $.
    kore-one-path-reaches-star-intro-alt2   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-star ph0 ph1 ph2 ) ) ) $.
$}

${
    kore-one-path-reaches-star-intro-alt3.0 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-one-path-reaches-star-intro-alt3.1 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph3 ( \kore-one-path-reaches-plus ph0 ph1 ph2 ) ) ) ) $.
    kore-one-path-reaches-star-intro-alt3   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph3 ( \kore-one-path-reaches-star ph0 ph1 ph2 ) ) ) ) $.
$}

${
    kore-one-path-reaches-plus-intro.0 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-one-path-reaches-plus-intro.1 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-rewrites-plus ph0 ph1 ph2 ) ) ) $.
    kore-one-path-reaches-plus-intro   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-plus ph0 ph1 ph2 ) ) ) $.
$}

${
    kore-one-path-reaches-star-transitivity.0 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-one-path-reaches-star-transitivity.1 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
    kore-one-path-reaches-star-transitivity.2 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-star ph0 ph1 ph2 ) ) ) $.
    kore-one-path-reaches-star-transitivity.3 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-star ph0 ph2 ph3 ) ) ) $.
    kore-one-path-reaches-star-transitivity   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-star ph0 ph1 ph3 ) ) ) $.
$}

${
    kore-one-path-reaches-plus-transitivity.0 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-one-path-reaches-plus-transitivity.1 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
    kore-one-path-reaches-plus-transitivity.2 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-plus ph0 ph1 ph2 ) ) ) $.
    kore-one-path-reaches-plus-transitivity.3 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-star ph0 ph2 ph3 ) ) ) $.
    kore-one-path-reaches-plus-transitivity   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-plus ph0 ph1 ph3 ) ) ) $.
$}

${
    kore-one-path-reaches-star-reflexivity.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-one-path-reaches-star-reflexivity   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-star ph0 ph1 ph1 ) ) ) $.
$}

${
    kore-one-path-reaches-star-subsumption-lhs.0 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) ) $.
    kore-one-path-reaches-star-subsumption-lhs.1 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-star ph0 ph2 ph3 ) ) ) $.
    kore-one-path-reaches-star-subsumption-lhs   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-star ph0 ph1 ph3 ) ) ) $.
$}

${
    kore-one-path-reaches-star-subsumption-rhs.0 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-one-path-reaches-star-subsumption-rhs.1 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
    kore-one-path-reaches-star-subsumption-rhs.2 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-star ph0 ph1 ph2 ) ) ) $.
    kore-one-path-reaches-star-subsumption-rhs.3 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph2 ph3 ) ) ) $.
    kore-one-path-reaches-star-subsumption-rhs   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-star ph0 ph1 ph3 ) ) ) $.
$}

${
    kore-one-path-reaches-plus-subsumption-lhs.0 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) ) $.
    kore-one-path-reaches-plus-subsumption-lhs.1 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-plus ph0 ph2 ph3 ) ) ) $.
    kore-one-path-reaches-plus-subsumption-lhs   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-plus ph0 ph1 ph3 ) ) ) $.
$}

${
    kore-one-path-reaches-plus-subsumption-rhs.0 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-one-path-reaches-plus-subsumption-rhs.1 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
    kore-one-path-reaches-plus-subsumption-rhs.2 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-plus ph0 ph1 ph2 ) ) ) $.
    kore-one-path-reaches-plus-subsumption-rhs.3 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph2 ph3 ) ) ) $.
    kore-one-path-reaches-plus-subsumption-rhs   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-plus ph0 ph1 ph3 ) ) ) $.
$}

${
    kore-one-path-reaches-star-subsumption-lhs-alt.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-one-path-reaches-star-subsumption-lhs-alt.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-one-path-reaches-star-subsumption-lhs-alt.2 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
    kore-one-path-reaches-star-subsumption-lhs-alt.3 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) ) $.
    kore-one-path-reaches-star-subsumption-lhs-alt.4 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph4 ( \kore-one-path-reaches-star ph0 ph2 ph3 ) ) ) ) $.
    kore-one-path-reaches-star-subsumption-lhs-alt   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph4 ( \kore-one-path-reaches-star ph0 ph1 ph3 ) ) ) ) $.
$}

${
    kore-one-path-reaches-plus-subsumption-lhs-alt.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-one-path-reaches-plus-subsumption-lhs-alt.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-one-path-reaches-plus-subsumption-lhs-alt.2 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
    kore-one-path-reaches-plus-subsumption-lhs-alt.3 $e |- ( \imp th0 ( \in-sort ph4 ph0 ) ) $.
    kore-one-path-reaches-plus-subsumption-lhs-alt.4 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ph2 ) ) ) $.
    kore-one-path-reaches-plus-subsumption-lhs-alt.5 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph4 ( \kore-one-path-reaches-plus ph0 ph2 ph3 ) ) ) ) $.
    kore-one-path-reaches-plus-subsumption-lhs-alt   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph4 ( \kore-one-path-reaches-plus ph0 ph1 ph3 ) ) ) ) $.
$}

${
    kore-one-path-reaches-plus-subsumption-rhs-alt.0 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-one-path-reaches-plus-subsumption-rhs-alt.1 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
    kore-one-path-reaches-plus-subsumption-rhs-alt.2 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph4 ( \kore-one-path-reaches-plus ph0 ph1 ph2 ) ) ) ) $.
    kore-one-path-reaches-plus-subsumption-rhs-alt.3 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph2 ph3 ) ) ) $.
    kore-one-path-reaches-plus-subsumption-rhs-alt   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph4 ( \kore-one-path-reaches-plus ph0 ph1 ph3 ) ) ) ) $.
$}

${
    kore-one-path-reaches-star-subsumption-rhs-alt.0 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-one-path-reaches-star-subsumption-rhs-alt.1 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
    kore-one-path-reaches-star-subsumption-rhs-alt.2 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph4 ( \kore-one-path-reaches-star ph0 ph1 ph2 ) ) ) ) $.
    kore-one-path-reaches-star-subsumption-rhs-alt.3 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph2 ph3 ) ) ) $.
    kore-one-path-reaches-star-subsumption-rhs-alt   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph4 ( \kore-one-path-reaches-star ph0 ph1 ph3 ) ) ) ) $.
$}

${
    kore-one-path-reaches-star-subsumption-rhs-alt2.0 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-one-path-reaches-star-subsumption-rhs-alt2.1 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
    kore-one-path-reaches-star-subsumption-rhs-alt2.2 $e |- ( \imp th0 ( \in-sort ph5 ph0 ) ) $.
    kore-one-path-reaches-star-subsumption-rhs-alt2.3 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph4 ( \kore-one-path-reaches-star ph0 ph1 ( \kore-or ph0 ph2 ph3 ) ) ) ) ) $.
    kore-one-path-reaches-star-subsumption-rhs-alt2.4 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph3 ph5 ) ) ) $.
    kore-one-path-reaches-star-subsumption-rhs-alt2   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph4 ( \kore-one-path-reaches-star ph0 ph1 ( \kore-or ph0 ph2 ph5 ) ) ) ) ) $.
$}

${
    kore-one-path-reaches-star-branch.0 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-one-path-reaches-star-branch.1 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
    kore-one-path-reaches-star-branch.2 $e |- ( \imp th0 ( \in-sort ph4 ph0 ) ) $.
    kore-one-path-reaches-star-branch.3 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-star ph0 ph1 ( \kore-or ph0 ph2 ph3 ) ) ) ) $.
    kore-one-path-reaches-star-branch.4 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-star ph0 ph2 ph4 ) ) ) $.
    kore-one-path-reaches-star-branch   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-star ph0 ph1 ( \kore-or ph0 ph4 ph3 ) ) ) ) $.
$}

${
    kore-one-path-reaches-plus-branch.0 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-one-path-reaches-plus-branch.1 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
    kore-one-path-reaches-plus-branch.2 $e |- ( \imp th0 ( \in-sort ph4 ph0 ) ) $.
    kore-one-path-reaches-plus-branch.3 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-plus ph0 ph1 ( \kore-or ph0 ph2 ph3 ) ) ) ) $.
    kore-one-path-reaches-plus-branch.4 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-star ph0 ph2 ph4 ) ) ) $.
    kore-one-path-reaches-plus-branch   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-plus ph0 ph1 ( \kore-or ph0 ph4 ph3 ) ) ) ) $.
$}

${
    kore-one-path-reaches-star-union.0 $e |- ( \is-predicate th0 ) $.
    kore-one-path-reaches-star-union.1 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-one-path-reaches-star-union.2 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-one-path-reaches-star-union.3 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
    kore-one-path-reaches-star-union.4 $e |- ( \imp th0 ( \in-sort ph4 ph0 ) ) $.
    kore-one-path-reaches-star-union.5 $e |- ( \imp th0 ( \in-sort ph5 ph0 ) ) $.
    kore-one-path-reaches-star-union.6 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-star ph0 ( \kore-and ph0 ph1 ph3 ) ph4 ) ) ) $.
    kore-one-path-reaches-star-union.7 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-star ph0 ( \kore-and ph0 ph2 ph3 ) ph5 ) ) ) $.
    kore-one-path-reaches-star-union   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-star ph0 ( \kore-and ph0 ( \kore-or ph0 ph1 ph2 ) ph3 ) ( \kore-or ph0 ph4 ph5 ) ) ) ) $.
$}

${
    kore-one-path-reaches-star-union-alt.0 $e |- ( \is-predicate th0 ) $.
    kore-one-path-reaches-star-union-alt.1 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-one-path-reaches-star-union-alt.2 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-one-path-reaches-star-union-alt.3 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
    kore-one-path-reaches-star-union-alt.4 $e |- ( \imp th0 ( \in-sort ph4 ph0 ) ) $.
    kore-one-path-reaches-star-union-alt.5 $e |- ( \imp th0 ( \in-sort ph5 ph0 ) ) $.
    kore-one-path-reaches-star-union-alt.6 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph5 ( \kore-one-path-reaches-star ph0 ph1 ph3 ) ) ) ) $.
    kore-one-path-reaches-star-union-alt.7 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph5 ( \kore-one-path-reaches-star ph0 ph2 ph4 ) ) ) ) $.
    kore-one-path-reaches-star-union-alt   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph5 ( \kore-one-path-reaches-star ph0 ( \kore-or ph0 ph1 ph2 ) ( \kore-or ph0 ph3 ph4 ) ) ) ) ) $.
$}

${
    kore-one-path-reaches-star-union-alt2.0 $e |- ( \is-predicate th0 ) $.
    kore-one-path-reaches-star-union-alt2.1 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-one-path-reaches-star-union-alt2.2 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-one-path-reaches-star-union-alt2.3 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
    kore-one-path-reaches-star-union-alt2.4 $e |- ( \imp th0 ( \in-sort ph4 ph0 ) ) $.
    kore-one-path-reaches-star-union-alt2.5 $e |- ( \imp th0 ( \in-sort ph5 ph0 ) ) $.
    kore-one-path-reaches-star-union-alt2.6 $e |- ( \imp th0 ( \in-sort ph6 ph0 ) ) $.
    kore-one-path-reaches-star-union-alt2.7 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-star ph0 ( \kore-and ph0 ph1 ph6 ) ph3 ) ) ) $.
    kore-one-path-reaches-star-union-alt2.8 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph5 ( \kore-one-path-reaches-star ph0 ( \kore-and ph0 ph2 ph6 ) ph4 ) ) ) ) $.
    kore-one-path-reaches-star-union-alt2   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph5 ( \kore-one-path-reaches-star ph0 ( \kore-and ph0 ( \kore-or ph0 ph1 ph2 ) ph6 ) ( \kore-or ph0 ph3 ph4 ) ) ) ) ) $.
$}

${
    kore-one-path-reaches-plus-union.0 $e |- ( \is-predicate th0 ) $.
    kore-one-path-reaches-plus-union.1 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-one-path-reaches-plus-union.2 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-one-path-reaches-plus-union.3 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
    kore-one-path-reaches-plus-union.4 $e |- ( \imp th0 ( \in-sort ph4 ph0 ) ) $.
    kore-one-path-reaches-plus-union.5 $e |- ( \imp th0 ( \in-sort ph5 ph0 ) ) $.
    kore-one-path-reaches-plus-union.6 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-plus ph0 ( \kore-and ph0 ph1 ph3 ) ph4 ) ) ) $.
    kore-one-path-reaches-plus-union.7 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-plus ph0 ( \kore-and ph0 ph2 ph3 ) ph5 ) ) ) $.
    kore-one-path-reaches-plus-union   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-plus ph0 ( \kore-and ph0 ( \kore-or ph0 ph1 ph2 ) ph3 ) ( \kore-or ph0 ph4 ph5 ) ) ) ) $.
$}

kore-well-founded-to-well-founded-alt $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-well-founded ph0 ) ( \kore-well-founded-alt ph0 ) ) ) ) $.

${
    kore-reachability-one-path-circularity-lemma.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-reachability-one-path-circularity-lemma.1 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-circularity ph0 ph1 ) ph1 ) ) ) $.
    kore-reachability-one-path-circularity-lemma   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-well-founded ph0 ) ph1 ) ) ) $.
$}

${
    kore-reachability-permits-non-wf.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-reachability-permits-non-wf.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-reachability-permits-non-wf   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-implies ph0 ( \kore-well-founded ph0 ) ( \kore-one-path-reaches-plus ph0 ph1 ph2 ) ) ( \kore-one-path-reaches-plus ph0 ph1 ph2 ) ) ) ) $.
$}



${

    kore-reachability-one-path-transitivity.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-reachability-one-path-transitivity.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-reachability-one-path-transitivity.2 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
    kore-reachability-one-path-transitivity.3 $e |- ( \imp th0 ( \in-sort ph4 ph0 ) ) $.
    kore-reachability-one-path-transitivity.4 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-circularity ph0 ph1 ) ( \kore-one-path-reaches-plus ph0 ph2 ph3 ) ) ) ) $.
    kore-reachability-one-path-transitivity.5 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-always ph0 ph1 )      ( \kore-one-path-reaches-star ph0 ph3 ph4 ) ) ) ) $.
    kore-reachability-one-path-transitivity   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-circularity ph0 ph1 ) ( \kore-one-path-reaches-plus ph0 ph2 ph4 ) ) ) ) $.
$}

${
    kore-reachability-one-path-transitivity-alt.0 $e |- ( \is-predicate th0 ) $.
    kore-reachability-one-path-transitivity-alt.1 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-reachability-one-path-transitivity-alt.2 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-reachability-one-path-transitivity-alt.3 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
    kore-reachability-one-path-transitivity-alt.4 $e |- ( \imp th0 ( \in-sort ph4 ph0 ) ) $.
    kore-reachability-one-path-transitivity-alt.5 $e |- ( \imp th0 ( \in-sort ph5 ph0 ) ) $.
    kore-reachability-one-path-transitivity-alt.6 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-circularity ph0 ph1 ) ( \kore-one-path-reaches-plus ph0 ph2 ( \kore-or ph0 ph3 ph5 ) ) ) ) ) $.
    kore-reachability-one-path-transitivity-alt.7 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-always ph0 ph1 )      ( \kore-one-path-reaches-star ph0 ph3 ph4 ) ) ) ) $.
    kore-reachability-one-path-transitivity-alt   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-circularity ph0 ph1 ) ( \kore-one-path-reaches-plus ph0 ph2 ( \kore-or ph0 ph4 ph5 ) ) ) ) ) $.
$}

${
    kore-reachability-one-path-transitivity-alt2.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-reachability-one-path-transitivity-alt2.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-reachability-one-path-transitivity-alt2.2 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
    kore-reachability-one-path-transitivity-alt2.3 $e |- ( \imp th0 ( \in-sort ph4 ph0 ) ) $.
    kore-reachability-one-path-transitivity-alt2.4 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-one-path-reaches-plus ph0 ph2 ph3 ) ) ) $.
    kore-reachability-one-path-transitivity-alt2.5 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-always ph0 ph1 ) ( \kore-one-path-reaches-star ph0 ph3 ph4 ) ) ) ) $.
    kore-reachability-one-path-transitivity-alt2   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-circularity ph0 ph1 ) ( \kore-one-path-reaches-plus ph0 ph2 ph4 ) ) ) ) $.
$}

${
    kore-reachability-one-path-case-star.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-reachability-one-path-case-star.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-reachability-one-path-case-star.2 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
    kore-reachability-one-path-case-star.3 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-one-path-reaches-star ph0 ph2 ph4 ) ) ) ) $.
    kore-reachability-one-path-case-star.4 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-one-path-reaches-star ph0 ph3 ph4 ) ) ) ) $.
    kore-reachability-one-path-case-star   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-one-path-reaches-star ph0 ( \kore-or ph0 ph2 ph3 ) ph4 ) ) ) ) $.
$}
