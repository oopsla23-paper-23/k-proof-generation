$[ theory/kore.mm $]

${
    $d xX y $.
    $d xX ph1 $.
    $d y ph6 $.
    substitution-kore-exists.0 $e #Substitution ph0 ph3 ph6 xX $.
    substitution-kore-exists.1 $e #Substitution ph2 ph5 ph6 xX $.
    substitution-kore-exists $a #Substitution ( \kore-exists ph0 ph1 y ph2 ) ( \kore-exists ph3 ph1 y ph5 ) ph6 xX $.
$}

${
    $d xX y $.
    $d y ph6 $.
    substitution-kore-exists-alt.0 $e #Substitution ph0 ph3 ph6 xX $.
    substitution-kore-exists-alt.1 $e #Substitution ph1 ph4 ph6 xX $.
    substitution-kore-exists-alt.2 $e #Substitution ph2 ph5 ph6 xX $.
    substitution-kore-exists-alt   $a #Substitution ( \kore-exists ph0 ph1 y ph2 ) ( \kore-exists ph3 ph4 y ph5 ) ph6 xX $.
$}

${
    $d x ph1 $.
    substitution-kore-exists-shadowed $a #Substitution ( \kore-exists ph0 ph1 x ph2 ) ( \kore-exists ph0 ph1 x ph2 ) ph3 x $.
$}

${
    $d xX x $.
    $d x ph2 $.
    substitution-kore-forall-sort.0 $e #Substitution ph0 ph1 ph2 xX $.
    substitution-kore-forall-sort $a #Substitution ( \kore-forall-sort x ph0 ) ( \kore-forall-sort x ph1 ) ph2 xX $.
$}

substitution-kore-forall-sort-shadowed $a #Substitution ( \kore-forall-sort x ph0 ) ( \kore-forall-sort x ph0 ) ph1 x $.

${
    substitution-kore-valid.0 $e #Substitution ph0 ph2 ph4 xX $.
    substitution-kore-valid.1 $e #Substitution ph1 ph3 ph4 xX $.
    substitution-kore-valid $a #Substitution ( \kore-valid ph0 ph1 ) ( \kore-valid ph2 ph3 ) ph4 xX $.
$}

${
    substitution-kore-bottom.0 $e #Substitution ph0 ph1 ph2 xX $.
    substitution-kore-bottom $a #Substitution ( \kore-bottom ph0 ) ( \kore-bottom ph1 ) ph2 xX $.
$}

${
    substitution-kore-top.0 $e #Substitution ph0 ph1 ph2 xX $.
    substitution-kore-top $a #Substitution ( \kore-top ph0 ) ( \kore-top ph1 ) ph2 xX $.
$}

${
    substitution-kore-not.0 $e #Substitution ph0 ph2 ph4 xX $.
    substitution-kore-not.1 $e #Substitution ph1 ph3 ph4 xX $.
    substitution-kore-not $a #Substitution ( \kore-not ph0 ph1 ) ( \kore-not ph2 ph3 ) ph4 xX $.
$}

${
    substitution-kore-and.0 $e #Substitution ph0 ph3 ph6 xX $.
    substitution-kore-and.1 $e #Substitution ph1 ph4 ph6 xX $.
    substitution-kore-and.2 $e #Substitution ph2 ph5 ph6 xX $.
    substitution-kore-and $a #Substitution ( \kore-and ph0 ph1 ph2 ) ( \kore-and ph3 ph4 ph5 ) ph6 xX $.
$}

${
    substitution-kore-or.0 $e #Substitution ph0 ph3 ph6 xX $.
    substitution-kore-or.1 $e #Substitution ph1 ph4 ph6 xX $.
    substitution-kore-or.2 $e #Substitution ph2 ph5 ph6 xX $.
    substitution-kore-or $a #Substitution ( \kore-or ph0 ph1 ph2 ) ( \kore-or ph3 ph4 ph5 ) ph6 xX $.
$}

${
    substitution-kore-implies.0 $e #Substitution ph0 ph3 ph6 xX $.
    substitution-kore-implies.1 $e #Substitution ph1 ph4 ph6 xX $.
    substitution-kore-implies.2 $e #Substitution ph2 ph5 ph6 xX $.
    substitution-kore-implies $a #Substitution ( \kore-implies ph0 ph1 ph2 ) ( \kore-implies ph3 ph4 ph5 ) ph6 xX $.
$}

${
    substitution-kore-ceil.0 $e #Substitution ph0 ph3 ph6 xX $.
    substitution-kore-ceil.1 $e #Substitution ph1 ph4 ph6 xX $.
    substitution-kore-ceil.2 $e #Substitution ph2 ph5 ph6 xX $.
    substitution-kore-ceil $a #Substitution ( \kore-ceil ph0 ph1 ph2 ) ( \kore-ceil ph3 ph4 ph5 ) ph6 xX $.
$}

${
    substitution-kore-floor.0 $e #Substitution ph0 ph3 ph6 xX $.
    substitution-kore-floor.1 $e #Substitution ph1 ph4 ph6 xX $.
    substitution-kore-floor.2 $e #Substitution ph2 ph5 ph6 xX $.
    substitution-kore-floor $a #Substitution ( \kore-floor ph0 ph1 ph2 ) ( \kore-floor ph3 ph4 ph5 ) ph6 xX $.
$}

${
    substitution-kore-equals.0 $e #Substitution ph0 ph4 ph8 xX $.
    substitution-kore-equals.1 $e #Substitution ph1 ph5 ph8 xX $.
    substitution-kore-equals.2 $e #Substitution ph2 ph6 ph8 xX $.
    substitution-kore-equals.3 $e #Substitution ph3 ph7 ph8 xX $.
    substitution-kore-equals $a #Substitution ( \kore-equals ph0 ph1 ph2 ph3 ) ( \kore-equals ph4 ph5 ph6 ph7 ) ph8 xX $.
$}

${
    substitution-kore-in.0 $e #Substitution ph0 ph4 ph8 xX $.
    substitution-kore-in.1 $e #Substitution ph1 ph5 ph8 xX $.
    substitution-kore-in.2 $e #Substitution ph2 ph6 ph8 xX $.
    substitution-kore-in.3 $e #Substitution ph3 ph7 ph8 xX $.
    substitution-kore-in $a #Substitution ( \kore-in ph0 ph1 ph2 ph3 ) ( \kore-in ph4 ph5 ph6 ph7 ) ph8 xX $.
$}

${
    substitution-kore-next.0 $e #Substitution ph0 ph2 ph4 xX $.
    substitution-kore-next.1 $e #Substitution ph1 ph3 ph4 xX $.
    substitution-kore-next $a #Substitution ( \kore-next ph0 ph1 ) ( \kore-next ph2 ph3 ) ph4 xX $.
$}

${
    substitution-kore-rewrites.0 $e #Substitution ph0 ph3 ph6 xX $.
    substitution-kore-rewrites.1 $e #Substitution ph1 ph4 ph6 xX $.
    substitution-kore-rewrites.2 $e #Substitution ph2 ph5 ph6 xX $.
    substitution-kore-rewrites $a #Substitution ( \kore-rewrites ph0 ph1 ph2 ) ( \kore-rewrites ph3 ph4 ph5 ) ph6 xX $.
$}

${
    $d X xX $.
    $d X ph4 $.
    substitution-kore-mu.0 $e #Substitution ph0 ph2 ph4 xX $.
    substitution-kore-mu.1 $e #Substitution ph1 ph3 ph4 xX $.
    substitution-kore-mu.2 $e #Positive X ph1 $.
    substitution-kore-mu.3 $e #Positive X ph3 $.
    substitution-kore-mu   $a #Substitution ( \kore-mu ph0 X ph1 ) ( \kore-mu ph2 X ph3 ) ph4 xX $.
$}

${
    $d Y xX $.
    $d Y ph0 $.
    $d Y ph1 $.
    $d Y ph2 $.
    $d Y ph3 $.
    $d Y ph4 $.
    substitution-kore-eventually.0 $e #Substitution ph0 ph2 ph4 xX $.
    substitution-kore-eventually.1 $e #Substitution ph1 ph3 ph4 xX $.
    substitution-kore-eventually $a #Substitution ( \kore-eventually ph0 ph1 ) ( \kore-eventually ph2 ph3 ) ph4 xX $.
$}

${
    $d Y xX $.
    $d Y ph0 $.
    $d Y ph1 $.
    $d Y ph2 $.
    $d Y ph3 $.
    $d Y ph4 $.
    substitution-kore-weak-eventually.0 $e #Substitution ph0 ph2 ph4 xX $.
    substitution-kore-weak-eventually.1 $e #Substitution ph1 ph3 ph4 xX $.
    substitution-kore-weak-eventually $a #Substitution ( \kore-weak-eventually ph0 ph1 ) ( \kore-weak-eventually ph2 ph3 ) ph4 xX $.
$}

${
    $d Y xX $.
    $d Y ph0 $.
    $d Y ph1 $.
    $d Y ph2 $.
    $d Y ph3 $.
    $d Y ph4 $.
    substitution-kore-always.0 $e #Substitution ph0 ph2 ph4 xX $.
    substitution-kore-always.1 $e #Substitution ph1 ph3 ph4 xX $.
    substitution-kore-always $a #Substitution ( \kore-always ph0 ph1 ) ( \kore-always ph2 ph3 ) ph4 xX $.
$}

${
    substitution-kore-rewrites-star.0 $e #Substitution ph0 ph3 ph6 xX $.
    substitution-kore-rewrites-star.1 $e #Substitution ph1 ph4 ph6 xX $.
    substitution-kore-rewrites-star.2 $e #Substitution ph2 ph5 ph6 xX $.
    substitution-kore-rewrites-star $a #Substitution ( \kore-rewrites-star ph0 ph1 ph2 ) ( \kore-rewrites-star ph3 ph4 ph5 ) ph6 xX $.
$}

${
    substitution-kore-rewrites-plus.0 $e #Substitution ph0 ph3 ph6 xX $.
    substitution-kore-rewrites-plus.1 $e #Substitution ph1 ph4 ph6 xX $.
    substitution-kore-rewrites-plus.2 $e #Substitution ph2 ph5 ph6 xX $.
    substitution-kore-rewrites-plus $a #Substitution ( \kore-rewrites-plus ph0 ph1 ph2 ) ( \kore-rewrites-plus ph3 ph4 ph5 ) ph6 xX $.
$}

${
    substitution-kore-one-path-reaches-star.0 $e #Substitution ph0 ph3 ph6 xX $.
    substitution-kore-one-path-reaches-star.1 $e #Substitution ph1 ph4 ph6 xX $.
    substitution-kore-one-path-reaches-star.2 $e #Substitution ph2 ph5 ph6 xX $.
    substitution-kore-one-path-reaches-star $a #Substitution ( \kore-one-path-reaches-star ph0 ph1 ph2 ) ( \kore-one-path-reaches-star ph3 ph4 ph5 ) ph6 xX $.
$}

${
    substitution-kore-one-path-reaches-plus.0 $e #Substitution ph0 ph3 ph6 xX $.
    substitution-kore-one-path-reaches-plus.1 $e #Substitution ph1 ph4 ph6 xX $.
    substitution-kore-one-path-reaches-plus.2 $e #Substitution ph2 ph5 ph6 xX $.
    substitution-kore-one-path-reaches-plus $a #Substitution ( \kore-one-path-reaches-plus ph0 ph1 ph2 ) ( \kore-one-path-reaches-plus ph3 ph4 ph5 ) ph6 xX $.
$}

${
    substitution-kore-dv.0 $e #Substitution ph0 ph2 ph4 xX $.
    substitution-kore-dv.1 $e #Substitution ph1 ph3 ph4 xX $.
    substitution-kore-dv $a #Substitution ( \kore-dv ph0 ph1 ) ( \kore-dv ph2 ph3 ) ph4 xX $.
$}

${
    $d xX y $.
    $d xX ph1 $.
    $d y ph6 $.
    substitution-kore-forall.0 $e #Substitution ph0 ph3 ph6 xX $.
    substitution-kore-forall.1 $e #Substitution ph2 ph5 ph6 xX $.
    substitution-kore-forall $a #Substitution ( \kore-forall ph0 ph1 y ph2 ) ( \kore-forall ph3 ph1 y ph5 ) ph6 xX $.
$}

${
    $d x ph1 $.
    substitution-kore-forall-shadowed $a #Substitution ( \kore-forall ph0 ph1 x ph2 ) ( \kore-forall ph0 ph1 x ph2 ) ph3 x $.
$}

${
    substitution-kore-inj.0 $e #Substitution ph0 ph3 ph6 xX $.
    substitution-kore-inj.1 $e #Substitution ph1 ph4 ph6 xX $.
    substitution-kore-inj.2 $e #Substitution ph2 ph5 ph6 xX $.
    substitution-kore-inj $a #Substitution ( \kore-inj ph0 ph1 ph2 ) ( \kore-inj ph3 ph4 ph5 ) ph6 xX $.
$}

${
    $d x ph0 $.
    $d x ph1 $.
    $d x ph2 $.
    $d x xX $.
    substitution-kore-is-sort.0 $e #Substitution ph0 ph1 ph2 xX $.
    substitution-kore-is-sort $a #Substitution ( \kore-is-sort ph0 ) ( \kore-is-sort ph1 ) ph2 xX $.
$}
