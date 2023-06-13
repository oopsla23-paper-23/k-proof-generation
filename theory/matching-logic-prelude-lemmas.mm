$[ theory/matching-logic-prelude.mm $]
$[ theory/matching-logic-propositional.mm $]



${
    $d xX ph0 $.
    substitution-disjoint $a #Substitution ph0 ph0 ph1 xX $.
$}

substitution-top $a #Substitution \top \top ph0 xX $.

${
    substitution-not.0 $e #Substitution ph1 ph2 ph0 xX $.
    substitution-not $a #Substitution ( \not ph1 ) ( \not ph2 ) ph0 xX $.
$}

${
    substitution-or.0 $e #Substitution ph1 ph3 ph0 xX $.
    substitution-or.1 $e #Substitution ph2 ph4 ph0 xX $.
    substitution-or $a #Substitution ( \or ph1 ph2 ) ( \or ph3 ph4 ) ph0 xX $.
$}

${
    substitution-and.0 $e #Substitution ph1 ph3 ph0 xX $.
    substitution-and.1 $e #Substitution ph2 ph4 ph0 xX $.
    substitution-and $a #Substitution ( \and ph1 ph2 ) ( \and ph3 ph4 ) ph0 xX $.
$}

${
    substitution-iff.0 $e #Substitution ph1 ph3 ph0 xX $.
    substitution-iff.1 $e #Substitution ph2 ph4 ph0 xX $.
    substitution-iff $a #Substitution ( \iff ph1 ph2 ) ( \iff ph3 ph4 ) ph0 xX $.
$}

${
    substitution-ceil.0 $e #Substitution ph1 ph2 ph0 xX $.
    substitution-ceil $a #Substitution ( \ceil ph1 ) ( \ceil ph2 ) ph0 xX $.
$}

${
    substitution-floor.0 $e #Substitution ph1 ph2 ph0 xX $.
    substitution-floor $a #Substitution ( \floor ph1 ) ( \floor ph2 ) ph0 xX $.
$}

${
    substitution-included.0 $e #Substitution ph1 ph3 ph0 xX $.
    substitution-included.1 $e #Substitution ph2 ph4 ph0 xX $.
    substitution-included $a #Substitution ( \included ph1 ph2 ) ( \included ph3 ph4 ) ph0 xX $.
$}

${
    substitution-eq.0 $e #Substitution ph1 ph3 ph0 xX $.
    substitution-eq.1 $e #Substitution ph2 ph4 ph0 xX $.
    substitution-eq $a #Substitution ( \eq ph1 ph2 ) ( \eq ph3 ph4 ) ph0 xX $.
$}

${
    substitution-inh.0 $e #Substitution ph1 ph2 ph0 xX $.
    substitution-inh $a #Substitution ( \inh ph1 ) ( \inh ph2 ) ph0 xX $.
$}

${
    substitution-in-sort.0 $e #Substitution ph1 ph3 ph0 xX $.
    substitution-in-sort.1 $e #Substitution ph2 ph4 ph0 xX $.
    substitution-in-sort $a #Substitution ( \in-sort ph1 ph2 ) ( \in-sort ph3 ph4 ) ph0 xX $.
$}

${
    substitution-pair-sort.0 $e #Substitution ph1 ph3 ph0 xX $.
    substitution-pair-sort.1 $e #Substitution ph2 ph4 ph0 xX $.
    substitution-pair-sort $a #Substitution ( \pair-sort ph1 ph2 ) ( \pair-sort ph3 ph4 ) ph0 xX $.
$}

${
    substitution-pair.0 $e #Substitution ph1 ph3 ph0 xX $.
    substitution-pair.1 $e #Substitution ph2 ph4 ph0 xX $.
    substitution-pair $a #Substitution ( \pair ph1 ph2 ) ( \pair ph3 ph4 ) ph0 xX $.
$}

${
    substitution-pair-fst.0 $e #Substitution ph1 ph2 ph0 xX $.
    substitution-pair-fst $a #Substitution ( \pair-fst ph1 ) ( \pair-fst ph2 ) ph0 xX $.
$}

${
    substitution-pair-snd.0 $e #Substitution ph1 ph2 ph0 xX $.
    substitution-pair-snd $a #Substitution ( \pair-snd ph1 ) ( \pair-snd ph2 ) ph0 xX $.
$}

${
    $d xX x $.
    $d ph2 x $.
    substitution-exists-alt.0 $e #Substitution ph0 ph1 ph2 xX $.
    substitution-exists-alt   $a #Substitution ( \exists x ph0 ) ( \exists x ph1 ) ph2 xX $.
$}



${
    notation-not.0 $e #Notation ph0 ph1 $.
    notation-not $a #Notation ( \not ph0 ) ( \not ph1 ) $.
$}

${
    notation-or.0 $e #Notation ph0 ph2 $.
    notation-or.1 $e #Notation ph1 ph3 $.
    notation-or $a #Notation ( \or ph0 ph1 ) ( \or ph2 ph3 ) $.
$}

${
    notation-and.0 $e #Notation ph0 ph2 $.
    notation-and.1 $e #Notation ph1 ph3 $.
    notation-and $a #Notation ( \and ph0 ph1 ) ( \and ph2 ph3 ) $.
$}

${
    notation-iff.0 $e #Notation ph0 ph2 $.
    notation-iff.1 $e #Notation ph1 ph3 $.
    notation-iff $a #Notation ( \iff ph0 ph1 ) ( \iff ph2 ph3 ) $.
$}

${
    notation-forall.0 $e #Notation ph0 ph1 $.
    notation-forall $a #Notation ( \forall x ph0 ) ( \forall x ph1 ) $.
$}

${
    notation-ceil.0 $e #Notation ph0 ph1 $.
    notation-ceil $a #Notation ( \ceil ph0 ) ( \ceil ph1 ) $.
$}

${
    notation-floor.0 $e #Notation ph0 ph1 $.
    notation-floor $a #Notation ( \floor ph0 ) ( \floor ph1 ) $.
$}

${
    notation-in.0 $e #Notation ph0 ph1 $.
    notation-in $a #Notation ( \in x ph0 ) ( \in x ph1 ) $.
$}

${
    notation-included.0 $e #Notation ph0 ph2 $.
    notation-included.1 $e #Notation ph1 ph3 $.
    notation-included $a #Notation ( \included ph0 ph1 ) ( \included ph2 ph3 ) $.
$}

${
    notation-eq.0 $e #Notation ph0 ph2 $.
    notation-eq.1 $e #Notation ph1 ph3 $.
    notation-eq $a #Notation ( \eq ph0 ph1 ) ( \eq ph2 ph3 ) $.
$}

${
    notation-inh.0 $e #Notation ph0 ph1 $.
    notation-inh $a #Notation ( \inh ph0 ) ( \inh ph1 ) $.
$}

${
    notation-in-sort.0 $e #Notation ph0 ph2 $.
    notation-in-sort.1 $e #Notation ph1 ph3 $.
    notation-in-sort $a #Notation ( \in-sort ph0 ph1 ) ( \in-sort ph2 ph3 ) $.
$}

${
    notation-sorted-forall.0 $e #Notation ph0 ph2 $.
    notation-sorted-forall.1 $e #Notation ph1 ph3 $.
    notation-sorted-forall $a #Notation ( \sorted-forall x ph0 ph1 ) ( \sorted-forall x ph2 ph3 ) $.
$}

${
    notation-sorted-exists.0 $e #Notation ph0 ph2 $.
    notation-sorted-exists.1 $e #Notation ph1 ph3 $.
    notation-sorted-exists $a #Notation ( \sorted-exists x ph0 ph1 ) ( \sorted-exists x ph2 ph3 ) $.
$}

${
    notation-forall-sort.0 $e #Notation ph0 ph1 $.
    notation-forall-sort $a #Notation ( \forall-sort s0 ph0 ) ( \forall-sort s0 ph1 ) $.
$}

${
    notation-exists-sort.0 $e #Notation ph0 ph1 $.
    notation-exists-sort $a #Notation ( \exists-sort s0 ph0 ) ( \exists-sort s0 ph1 ) $.
$}

${
    notation-is-top.0 $e #Notation ph0 ph1 $.
    notation-is-top $a #Notation ( \is-top ph0 ) ( \is-top ph1 ) $.
$}

${
    notation-is-bot.0 $e #Notation ph0 ph1 $.
    notation-is-bot $a #Notation ( \is-bot ph0 ) ( \is-bot ph1 ) $.
$}

${
    notation-is-predicate.0 $e #Notation ph0 ph1 $.
    notation-is-predicate $a #Notation ( \is-predicate ph0 ) ( \is-predicate ph1 ) $.
$}



${
    $d x ph0 $.
    propagation-app-bot-left  $a |- ( \imp ( \app \bot ph0 ) \bot ) $.
$}

${
    $d x ph0 $.
    propagation-app-bot-right $a |- ( \imp ( \app ph0 \bot ) \bot ) $.
$}

${
    $d x ph2 $.
    propagation-app-or-left  $a |- ( \imp ( \app ( \or ph0 ph1 ) ph2 )
                                          ( \or ( \app ph0 ph2 ) ( \app ph1 ph2 ) ) ) $.
$}

${
    $d x ph0 $.
    propagation-app-or-right $a |- ( \imp ( \app ph0 ( \or ph1 ph2 ) )
                                          ( \or ( \app ph0 ph1 ) ( \app ph0 ph2 ) ) ) $.
$}

${
    $d y ph1 $.
    $d y x $.
    propagation-app-exists-left.0 $e #Fresh x ph1 $.
    propagation-app-exists-left   $a |- ( \imp ( \app ( \exists x ph0 ) ph1 )
                                                      ( \exists x ( \app ph0 ph1 ) ) ) $.
$}
${
    $d y ph0 $.
    $d y x $.
    propagation-app-exists-right.0 $e #Fresh x ph0 $.
    propagation-app-exists-right   $a |- ( \imp ( \app ph0 ( \exists x ph1 ) )
                                                       ( \exists x ( \app ph0 ph1 ) ) ) $.
$}
${
    $d x ph2 $.
    frame-app-left.0 $e |- ( \imp ph0 ph1 ) $.
    frame-app-left   $a |- ( \imp ( \app ph0 ph2 ) ( \app ph1 ph2 ) ) $.
$}
${
    $d x ph0 $.
    frame-app-right.0 $e |- ( \imp ph1 ph2 ) $.
    frame-app-right   $a |- ( \imp ( \app ph0 ph1 ) ( \app ph0 ph2 ) ) $.
$}



lemma-top $a |- \top $.

${
    lemma-forall-gen.0 $e |- ( \imp ph0 ph1 ) $.
    lemma-forall-gen.1 $e #Fresh x ph0 $.
    lemma-forall-gen $a |- ( \imp ph0 ( \forall x ph1 ) ) $.
$}

lemma-dn-intro $a |- ( \imp ph0 ( \imp ( \imp ph0 \bot ) \bot ) ) $.

lemma-imp2-iff $a |- ( \imp ( \and ( \imp ph0 ( \imp ph1 ph2 ) ) ( \imp ph0 ( \imp ph2 ph1 ) ) ) ( \imp ph0 ( \iff ph1 ph2 ) ) )
  $.




${
    lemma-forall-intro.0 $e |- ph0 $.
    lemma-forall-intro $a |- ( \forall x ph0 ) $.
$}

${
    forall-elim.0 $e #Substitution ph1 ph0 y x $.
    forall-elim   $a |- ( \imp ( \forall x ph0 ) ph1 ) $.
$}

forall-elim-alt $a |- ( \imp ( \forall x ph0 ) ph0 ) $.

forall-elim-alt2 $a |- ( \imp ( \imp ph0 ( \forall x ph1 ) ) ( \imp ph0 ph1 ) ) $.

forall-intro-alt $a |- ( \imp ( \imp ph0 ph1 ) ( \imp ( \forall x ph0 ) ph1 ) ) $.

exists-intro-alt $a |- ( \imp ph0 ( \exists x ph0 ) ) $.

${
    lemma-forall-elim.0 $e |- ( \forall x ph0 ) $.
    lemma-forall-elim $a |- ph0 $.
$}

${
    $d x ph0 $.
    lemma-forall-sort-elim-disjoint.0 $e |- ( \forall-sort x ph0 ) $.
    lemma-forall-sort-elim-disjoint $a |- ph0 $.
$}



${
    $d x y $.
    alpha-exists.0 $e #Fresh y ph0 $.
    alpha-exists.1 $e #Substitution ph1 ph0 y x $.
    alpha-exists $a |- ( \iff ( \exists x ph0 ) ( \exists y ph1 ) ) $.
$}

${
    $d x y $.
    alpha-forall.0 $e #Fresh y ph0 $.
    alpha-forall.1 $e #Substitution ph1 ph0 y x $.
    alpha-forall $a |- ( \iff ( \forall x ph0 ) ( \forall y ph1 ) ) $.
$}

${
    $d x y $.
    alpha-forall-sort.0 $e #Fresh y ph0 $.
    alpha-forall-sort.1 $e #Substitution ph1 ph0 y x $.
    alpha-forall-sort $a |- ( \iff ( \forall-sort x ph0 ) ( \forall-sort y ph1 ) ) $.
$}

${
    $d x y $.
    fv-subst-left.0 $e |- ph0 $.
    fv-subst-left.1 $e #Substitution ph1 ph0 y x $.
    fv-subst-left.2 $e #Fresh y ph0 $.
    fv-subst-left $a |- ph1 $.
$}

${
    $d x y $.
    fv-subst-right.0 $e |- ph1 $.
    fv-subst-right.1 $e #Substitution ph1 ph0 y x $.
    fv-subst-right.2 $e #Fresh y ph0 $.
    fv-subst-right $a |- ph0 $.
$}



lemma-ceil-compat-in-or $a |- ( \iff ( \ceil ( \or ph0 ph1 ) ) ( \or ( \ceil ph0 ) ( \ceil ph1 ) ) ) $.

lemma-x-and-ph-imp-not-ceil-x-and-not-ph $a |- ( \imp ( \and x ph0 ) ( \not ( \ceil ( \and x ( \not ph0 ) ) ) ) ) $.

lemma-curry-left $a |- ( \imp ( \imp ( \and ph0 ph1 ) ph2 ) ( \imp ph0 ( \imp ph1 ph2 ) ) ) $.

lemma-curry-right $a |- ( \imp ( \imp ph0 ( \imp ph1 ph2 ) ) ( \imp ( \and ph0 ph1 ) ph2 ) ) $.

${
    rule-uncurry.0 $e |- ( \imp ph0 ( \imp ph1 ph2 ) ) $.
    rule-uncurry   $a |- ( \imp ( \and ph0 ph1 ) ph2 ) $.
$}

${
    rule-curry.0 $e |- ( \imp ( \and ph0 ph1 ) ph2 ) $.
    rule-curry   $a |- ( \imp ph0 ( \imp ph1 ph2 ) ) $.
$}

${
    prenex-exists-and-left.0 $e #Fresh x ph1 $.
    prenex-exists-and-left $a |- ( \imp ( \and ( \exists x ph0 ) ph1 ) ( \exists x ( \and ph0 ph1 ) ) ) $.
$}

${
    prenex-forall-and-left.0 $e #Fresh x ph1 $.
    prenex-forall-and-left $a |- ( \imp ( \and ( \forall x ph0 ) ph1 ) ( \forall x ( \and ph0 ph1 ) ) ) $.
$}

lemma-disjoint-disj $a |- ( \imp ( \or ph0 ph1 ) ( \or ( \and ph0 ( \not ph1 ) ) ph1 ) ) $.

${
    lemma-ph-imp-exists-x-and-ph.0 $e #Fresh x ph0 $.
    lemma-ph-imp-exists-x-and-ph $a |- ( \imp ph0 ( \exists x ( \and x ph0 ) ) ) $.
$}

${
    $d x ph0 $.
    lemma-app-context-imp-ceil.0 $e #ApplicationContext y ph1 $.
    lemma-app-context-imp-ceil.1 $e #Substitution ph2 ph1 ph0 y $.
    lemma-app-context-imp-ceil.2 $e #Substitution ph3 ph1 ( \exists x ( \and x ph0 ) ) y $.
    lemma-app-context-imp-ceil.3 $e #Substitution ph4 ph1 ( \and x ph0 ) y $.
    lemma-app-context-imp-ceil.4 $e |- ( \imp ph2 ph3 ) $.
    lemma-app-context-imp-ceil.5 $e |- ( \imp ph3 ( \exists x ph4 ) ) $.
    lemma-app-context-imp-ceil $a |- ( \imp ph2 ( \ceil ph0 ) ) $.
$}

${

    $d x ph0 $.
    lemma-ph-imp-ceil-ph $a |- ( \imp ph0 ( \ceil ph0 ) ) $.
$}

${
    $d x ph0 $.
    $d y sg0 $.
    $d y sg1 $.
    lemma-app-app-ph-imp-ceil-ph $a |- ( \imp ( \app sg0 ( \app sg1 ph0 ) ) ( \ceil ph0 ) ) $.
$}

${
    lemma-imp-compat-in-ceil.0 $e |- ( \imp ph0 ph1 ) $.
    lemma-imp-compat-in-ceil $a |- ( \imp ( \ceil ph0 ) ( \ceil ph1 ) ) $.
$}

${
    lemma-imp-compat-in-floor.0 $e |- ( \imp ph0 ph1 ) $.
    lemma-imp-compat-in-floor $a |- ( \imp ( \floor ph0 ) ( \floor ph1 ) ) $.
$}

lemma-ceil2-imp-ceil $a |- ( \imp ( \ceil ( \ceil ph0 ) ) ( \ceil ph0 ) ) $.

lemma-floor-imp-floor2 $a |- ( \imp ( \floor ph0 ) ( \floor ( \floor ph0 ) ) ) $.



lemma-floor-elim-alt $a |- ( \imp ( \floor ph0 ) ph0 ) $.

${
    lemma-floor-intro.0 $e |- ph0 $.
    lemma-floor-intro $a |- ( \floor ph0 ) $.
$}

${
    lemma-floor-elim.0 $e |- ( \floor ph0 ) $.
    lemma-floor-elim $a |- ph0 $.
$}

lemma-floor-compat-in-and $a |- ( \iff ( \floor ( \and ph0 ph1 ) ) ( \and ( \floor ph0 ) ( \floor ph1 ) ) ) $.


lemma-floor-imp-floor $a |- ( \imp ( \floor ( \imp ph0 ph1 ) ) ( \imp ( \floor ph0 ) ( \floor ph1 ) ) ) $.

${
    lemma-floor-imp-elim.0 $e |- ( \floor ( \imp ph0 ph1 ) ) $.
    lemma-floor-imp-elim $a |- ( \imp ( \floor ph0 ) ( \floor ph1 ) ) $.
$}

${
    lemma-in-sort.0 $e |- ( \in-sort ph1 ph0 ) $.
    lemma-in-sort $a |- ( \imp ph1 ( \inh ph0 ) ) $.
$}

${
    lemma-mp2.0 $e |- ph0 $.
    lemma-mp2.1 $e |- ph1 $.
    lemma-mp2.2 $e |- ( \imp ( \and ph0 ph1 ) ph2 ) $.
    lemma-mp2 $a |- ph2 $.
$}

${
    lemma-iff-intro-d.0 $e |- ( \imp ph0 ( \imp ph1 ph2 ) ) $.
    lemma-iff-intro-d.1 $e |- ( \imp ph0 ( \imp ph2 ph1 ) ) $.
    lemma-iff-intro-d $a |- ( \imp ph0 ( \iff ph1 ph2 ) ) $.
$}

${
    lemma-pmp2.0 $e |- ( \imp ph0 ph1 ) $.
    lemma-pmp2.1 $e |- ( \imp ph0 ( \imp ph1 ph2 ) ) $.
    lemma-pmp2 $a |- ( \imp ph0 ph2 ) $.
$}



${
    lemma-imp-not-not.0 $e |- ( \imp ph1 ph0 )  $.
    lemma-imp-not-not $a |- ( \imp ( \not ph0 ) ( \not ph1 ) ) $.
$}

${
    lemma-double-not-ceil-alt.0 $e |- ( \imp ( \ceil ( \not ( \ceil ph0 ) ) ) ( \not ( \ceil ph0 ) ) ) $.
    lemma-double-not-ceil-alt $a |- ( \imp ( \ceil ph0 ) ( \not ( \ceil ( \not ( \ceil ph0 ) ) ) ) ) $.
$}

${
    lemma-not-ceil-elim.0 $e |- ( \not ph0 ) $.
    lemma-not-ceil-elim $a |- ( \not ( \ceil ph0 ) ) $.
$}

lemma-and-ceil $a |- ( \eq ( \and ( \ceil x ) ph0 ) ph0 ) $.

lemma-or-and $a |- ( \eq ( \or ( \and ( \not ph1 ) ph0 ) ( \and ( \ceil ph1 ) ph0 ) ) ph0 ) $.



${
    lemma-not-and-rewrite.0 $e |- ( \imp ph1 ( \not ph0 ) ) $.
    lemma-not-and-rewrite $a |- ( \not ( \and ph0 ph1 ) ) $.
$}



${
    lemma-eq-intro.0 $e |- ( \imp ph0 ph1 ) $.
    lemma-eq-intro.1 $e |- ( \imp ph1 ph0 ) $.
    lemma-eq-intro $a |- ( \eq ph0 ph1 ) $.
$}

${
    lemma-eq-1.0 $e |- ( \imp ph1 ph0 ) $.
    lemma-eq-1 $a |- ( \eq ( \and ph0 ph1 ) ph1 ) $.
$}

lemma-eq-imp $a |- ( \imp ( \eq ph0 ph1 ) ( \imp ph0 ph1 ) ) $.



lemma-eq-reflexivity $a |- ( \eq ph0 ph0 ) $.



${
    lemma-eq-symmetry.0 $e |- ( \eq ph1 ph0 ) $.
    lemma-eq-symmetry $a |- ( \eq ph0 ph1 ) $.
$}



${
    lemma-eq-transitivity.0 $e |- ( \eq ph0 ph1 ) $.
    lemma-eq-transitivity.1 $e |- ( \eq ph1 ph2 ) $.
    lemma-eq-transitivity $a |- ( \eq ph0 ph2 ) $.
$}



${
    lemma-eq-congruence-or.0 $e |- ( \eq ph0 ph2 ) $.
    lemma-eq-congruence-or.1 $e |- ( \eq ph1 ph3 ) $.
    lemma-eq-congruence-or $a |- ( \eq ( \or ph0 ph1 ) ( \or ph2 ph3 ) ) $.
$}

${
    lemma-eq-congruence-and.0 $e |- ( \eq ph0 ph2 ) $.
    lemma-eq-congruence-and.1 $e |- ( \eq ph1 ph3 ) $.
    lemma-eq-congruence-and $a |- ( \eq ( \and ph0 ph1 ) ( \and ph2 ph3 ) ) $.
$}

${
    lemma-eq-congruence-not.0 $e |- ( \eq ph0 ph1 ) $.
    lemma-eq-congruence-not $a |- ( \eq ( \not ph0 ) ( \not ph1 ) ) $.
$}

${
    lemma-eq-congruence-ceil.0 $e |- ( \eq ph0 ph1 ) $.
    lemma-eq-congruence-ceil $a |- ( \eq ( \ceil ph0 ) ( \ceil ph1 ) ) $.
$}



${
    lemma-prenex-forall-imp.0 $e #Fresh x ph1 $.
    lemma-prenex-forall-imp.1 $e |- ( \forall x ( \imp ph0 ph1 ) ) $.
    lemma-prenex-forall-imp $a |- ( \imp ( \exists x ph0 ) ph1 ) $.
$}

lemma-i-giveup-on-naming-2 $a |- ( \imp ( \imp ph0 ( \imp ph1 ph2 ) ) ( \imp ( \imp ph3 ph1 ) ( \imp ph0 ( \imp ph3 ph2 ) ) ) ) $.

${
    functional-substitution-var-same.0 $e #Fresh x ph0 $.
    functional-substitution-var-same.1 $e #Substitution ph2 ph1 ph0 x $.
    functional-substitution-var-same $a |- ( \imp ( \exists x ( \eq x ph0 ) ) ( \imp ( \forall x ph1 ) ph2 ) ) $.
$}

${
    fresh-in-eq.0 $e #Fresh xX ph0 $.
    fresh-in-eq.1 $e #Fresh xX ph1 $.
    fresh-in-eq $a #Fresh xX ( \eq ph0 ph1 ) $.
$}

${
    $d x y $.
    $d x ph0 $.

    functional-substitution-var-diff.0 $e #Fresh y ph0 $.
    functional-substitution-var-diff.1 $e #Substitution ph2 ph1 ph0 x $.
    functional-substitution-var-diff $a |- ( \imp ( \exists y ( \eq y ph0 ) ) ( \imp ( \forall x ph1 ) ph2 ) ) $.
$}

${
    $d z ph0 $.
    $d z ph1 $.
    $d z ph2 $.
    $d z y $.
    $d z x $.
    functional-substitution.0 $e #Fresh y ph0 $.
    functional-substitution.1 $e #Substitution ph2 ph1 ph0 x $.
    functional-substitution.2 $e #Substitution ph3 ph1 z x $.
    functional-substitution $a |- ( \imp ( \exists y ( \eq y ph0 ) ) ( \imp ( \forall x ph1 ) ph2 ) ) $.
$}

${
    lemma-imp-compat-in-exists.0 $e |- ( \imp ph0 ph1 ) $.
    lemma-imp-compat-in-exists $a |- ( \imp ( \exists x ph0 ) ( \exists x ph1 ) ) $.
$}

${
    lemma-imp-compat-in-forall.0 $e |- ( \imp ph0 ph1 ) $.
    lemma-imp-compat-in-forall $a |- ( \imp ( \forall x ph0 ) ( \forall x ph1 ) ) $.
$}

exists-and-elim $a |- ( \imp ( \exists x ( \and ph0 ph1 ) ) ( \and ( \exists x ph0 ) ( \exists x ph1 ) ) ) $.

${
    rule-exists-and-elim.0 $e |- ( \exists x ( \and ph0 ph1 ) ) $.
    rule-exists-and-elim-left $a |- ( \exists x ph0 ) $.
    rule-exists-and-elim-right $a |- ( \exists x ph1 ) $.
$}

${
    singleton-inclusion.0 $e #Fresh y ph0 $.
    singleton-inclusion.1 $e #Fresh y ph1 $.
    singleton-inclusion $a |- ( \imp ( \exists y ( \and ( \included y ph1 ) ( \eq y ph0 ) ) ) ( \included ph0 ph1 ) ) $.
$}

${
    lemma-floor-intro-imp3.0 $e |- ( \imp ph0 ( \imp ph1 ph2 ) ) $.
    lemma-floor-intro-imp3 $a |- ( \imp ( \floor ph0 ) ( \imp ( \floor ph1 ) ( \floor ph2 ) ) ) $.
$}

${
    lemma-floor-intro-imp3-alt.0 $e |- ( \imp ph0 ( \imp ph1 ph2 ) ) $.
    lemma-floor-intro-imp3-alt $a |- ( \imp ( \floor ph0 ) ( \imp ( \floor ph1 ) ph2 ) ) $.
$}

${
    lemma-floor-intro-imp4.0 $e |- ( \imp ph0 ( \imp ph1 ( \imp ph2 ph3 ) ) ) $.
    lemma-floor-intro-imp4 $a |- ( \imp ( \floor ph0 ) ( \imp ( \floor ph1 ) ( \imp ( \floor ph2 ) ( \floor ph3 ) ) ) ) $.
$}

${
    lemma-floor-intro-imp4-alt.0 $e |- ( \imp ph0 ( \imp ph1 ( \imp ph2 ph3 ) ) ) $.
    lemma-floor-intro-imp4-alt $a |- ( \imp ( \floor ph0 ) ( \imp ( \floor ph1 ) ( \imp ( \floor ph2 ) ph3 ) ) ) $.
$}

${
    lemma-floor-intro-imp5.0 $e |- ( \imp ph0 ( \imp ph1 ( \imp ph2 ( \imp ph3 ph4 ) ) ) ) $.
    lemma-floor-intro-imp5 $a |- ( \imp ( \floor ph0 ) ( \imp ( \floor ph1 ) ( \imp ( \floor ph2 ) ( \imp ( \floor ph3 ) ( \floor ph4 ) ) ) ) ) $.
$}

${
    lemma-floor-intro-imp6.0 $e |- ( \imp ph0 ( \imp ph1 ( \imp ph2 ( \imp ph3 ( \imp ph4 ph5 ) ) ) ) ) $.
    lemma-floor-intro-imp6 $a |- ( \imp ( \floor ph0 ) ( \imp ( \floor ph1 ) ( \imp ( \floor ph2 ) ( \imp ( \floor ph3 ) ( \imp ( \floor ph4 ) ( \floor ph5 ) ) ) ) ) ) $.
$}




in-sort-and-left-alt $a |- ( \imp ( \in-sort ph1 ph0 ) ( \in-sort ( \and ph1 ph2 ) ph0 ) ) $.

in-sort-and-right-alt $a |- ( \imp ( \in-sort ph2 ph0 ) ( \in-sort ( \and ph1 ph2 ) ph0 ) ) $.

in-sort-or-alt $a |- ( \imp ( \in-sort ph1 ph0 ) ( \imp ( \in-sort ph2 ph0 ) ( \in-sort ( \or ph1 ph2 ) ph0 ) ) ) $.

${
    in-sort-and-left.0 $e |- ( \in-sort ph1 ph0 ) $.
    in-sort-and-left $a |- ( \in-sort ( \and ph1 ph2 ) ph0 ) $.
$}

${
    in-sort-and-right.0 $e |- ( \in-sort ph2 ph0 ) $.
    in-sort-and-right $a |- ( \in-sort ( \and ph1 ph2 ) ph0 ) $.
$}

${
    in-sort-or.0 $e |- ( \in-sort ph1 ph0 ) $.
    in-sort-or.1 $e |- ( \in-sort ph2 ph0 ) $.
    in-sort-or $a |- ( \in-sort ( \or ph1 ph2 ) ph0 ) $.
$}

in-sort-inh $a |- ( \in-sort ( \inh ph0 ) ph0 ) $.

eq-imp-included $a |- ( \imp ( \eq ph0 ph1 ) ( \included ph0 ph1 ) ) $.

${
    fresh-in-in-sort.0 $e #Fresh xX ph0 $.
    fresh-in-in-sort.1 $e #Fresh xX ph1 $.
    fresh-in-in-sort $a #Fresh xX ( \in-sort ph0 ph1 ) $.
$}

${
    lemma-prenex-forall-or.0 $e #Fresh x ph1 $.
    lemma-prenex-forall-or $a |- ( \imp ( \forall x ( \or ph0 ph1 ) ) ( \or ( \forall x ph0 ) ph1 ) ) $.
$}

${
    lemma-prenex-forall-imp-alt.0 $e #Fresh x ph1 $.
    lemma-prenex-forall-imp-alt $a |- ( \imp ( \forall x ( \imp ph0 ph1 ) ) ( \imp ( \exists x ph0 ) ph1 ) ) $.
$}


${
    lemma-and-top-elim-in-sort.0 $e |- ( \in-sort ph1 ph0 ) $.
    lemma-and-top-elim-in-sort $a |- ( \eq ( \and ph1 ( \inh ph0 ) ) ph1 ) $.
$}

lemma-eq-transitivity-alt $a |- ( \imp ( \eq ph0 ph1 ) ( \imp ( \eq ph1 ph2 ) ( \eq ph0 ph2 ) ) ) $.

${
    rule-weakening.0 $e |- ph1 $.
    rule-weakening $a |- ( \imp ph0 ph1 ) $.
$}

weakening-imp2 $a |- ( \imp ( \imp ph0 ph1 ) ( \imp ( \imp ph2 ph0 ) ( \imp ph2 ph1 ) ) ) $.

weakening-imp3 $a |- ( \imp ( \imp ph0 ( \imp ph1 ph2 ) ) ( \imp ( \imp ph3 ph0 ) ( \imp ( \imp ph3 ph1 ) ( \imp ph3 ph2 ) ) ) ) $.

weakening-imp4 $a |- ( \imp ( \imp ph0 ( \imp ph1 ( \imp ph2 ph3 ) ) ) ( \imp ( \imp ph4 ph0 ) ( \imp ( \imp ph4 ph1 ) ( \imp ( \imp ph4 ph2 ) ( \imp ph4 ph3 ) ) ) ) ) $.

${
    rule-weakening-imp2.0 $e |- ( \imp ph0 ph1 ) $.
    rule-weakening-imp2   $a |- ( \imp ( \imp ph2 ph0 ) ( \imp ph2 ph1 ) ) $.
$}

eq-compat-in-or $a |- ( \imp ( \eq ph0 ph1 ) ( \imp ( \eq ph2 ph3 ) ( \eq ( \or ph0 ph2 ) ( \or ph1 ph3 ) ) ) ) $.

eq-compat-in-and $a |- ( \imp ( \eq ph0 ph1 ) ( \imp ( \eq ph2 ph3 ) ( \eq ( \and ph0 ph2 ) ( \and ph1 ph3 ) ) ) ) $.

eq-compat-in-not $a |- ( \imp ( \eq ph0 ph1 ) ( \eq ( \not ph0 ) ( \not ph1 ) ) ) $.

eq-compat-in-imp $a |- ( \imp ( \eq ph0 ph1 ) ( \imp ( \eq ph2 ph3 ) ( \eq ( \imp ph0 ph2 ) ( \imp ph1 ph3 ) ) ) ) $.

${
    rule-eq-compat-in-or.0 $e |- ( \eq ph0 ph1 ) $.
    rule-eq-compat-in-or.1 $e |- ( \eq ph2 ph3 ) $.
    rule-eq-compat-in-or $a |- ( \eq ( \or ph0 ph2 ) ( \or ph1 ph3 ) ) $.
$}

${
    rule-eq-compat-in-and.0 $e |- ( \eq ph0 ph1 ) $.
    rule-eq-compat-in-and.1 $e |- ( \eq ph2 ph3 ) $.
    rule-eq-compat-in-and $a |- ( \eq ( \and ph0 ph2 ) ( \and ph1 ph3 ) ) $.
$}

${
    rule-eq-compat-in-not.0 $e |- ( \eq ph0 ph1 ) $.
    rule-eq-compat-in-not $a |- ( \eq ( \not ph0 ) ( \not ph1 ) ) $.
$}

${
    rule-eq-compat-in-ceil.0 $e |- ( \eq ph0 ph1 ) $.
    rule-eq-compat-in-ceil $a |- ( \eq ( \ceil ph0 ) ( \ceil ph1 ) ) $.
$}

${
    rule-eq-compat-in-floor.0 $e |- ( \eq ph0 ph1 ) $.
    rule-eq-compat-in-floor $a |- ( \eq ( \floor ph0 ) ( \floor ph1 ) ) $.
$}

${
    lemma-floor-intro-alt.0 $e |- ( \imp ( \floor ph0 ) ph1 ) $.
    lemma-floor-intro-alt $a |- ( \imp ( \floor ph0 ) ( \floor ph1 ) ) $.
$}

eq-symmetry $a |- ( \imp ( \eq ph1 ph0 ) ( \eq ph0 ph1 ) ) $.

eq-transitivity $a |- ( \imp ( \eq ph0 ph1 ) ( \imp ( \eq ph1 ph2 ) ( \eq ph0 ph2 ) ) ) $.

eq-intro $a |- ( \imp ( \included ph0 ph1 ) ( \imp ( \included ph1 ph0 ) ( \eq ph0 ph1 ) ) ) $.

${
    rule-eq-intro-hyp.0 $e |- ( \imp ph2 ( \included ph0 ph1 ) ) $.
    rule-eq-intro-hyp.1 $e |- ( \imp ph2 ( \included ph1 ph0 ) ) $.
    rule-eq-intro-hyp $a |- ( \imp ph2 ( \eq ph0 ph1 ) ) $.
$}

${
    rule-eq-transitivity-hyp.0 $e |- ( \imp ph3 ( \eq ph0 ph1 ) ) $.
    rule-eq-transitivity-hyp.1 $e |- ( \imp ph3 ( \eq ph1 ph2 ) ) $.
    rule-eq-transitivity-hyp $a |- ( \imp ph3 ( \eq ph0 ph2 ) ) $.
$}

${
    eq-elim-alt.0 $e #Substitution ph2 ph4 ph0 x $.
    eq-elim-alt.1 $e #Substitution ph3 ph4 ph1 x $.
    eq-elim-alt $a |- ( \imp ( \eq ph0 ph1 ) ( \eq ph2 ph3 ) ) $.
$}

${
    eq-elim-alt-hyp.0 $e #Substitution ph2 ph4 ph0 x $.
    eq-elim-alt-hyp.1 $e #Substitution ph3 ph4 ph1 x $.
    eq-elim-alt-hyp.2 $e |- ( \imp ph5 ( \eq ph0 ph1 ) ) $.
    eq-elim-alt-hyp $a |- ( \imp ph5 ( \eq ph2 ph3 ) ) $.
$}

included-transitivity $a |- ( \imp ( \included ph0 ph1 ) ( \imp ( \included ph1 ph2 ) ( \included ph0 ph2 ) ) ) $.

${
    rule-included-transitivity-hyp.0 $e |- ( \imp ph3 ( \included ph0 ph1 ) ) $.
    rule-included-transitivity-hyp.1 $e |- ( \imp ph3 ( \included ph1 ph2 ) ) $.
    rule-included-transitivity-hyp $a |- ( \imp ph3 ( \included ph0 ph2 ) ) $.
$}

unit-sort-singleton $a |- ( \exists x ( \eq x ( \inh \unit-sort ) ) ) $.

unit-sort-nonempty $a |- ( \exists x ( \in-sort x \unit-sort ) ) $.

ceil-propagation-exists-left $a |- ( \imp ( \ceil ( \exists x ph0 ) ) ( \exists x ( \ceil ph0 ) ) ) $.

ceil-propagation-exists-right $a |- ( \imp ( \exists x ( \ceil ph0 ) ) ( \ceil ( \exists x ph0 ) ) ) $.

ceil-propagation-exists $a |- ( \iff ( \ceil ( \exists x ph0 ) ) ( \exists x ( \ceil ph0 ) ) ) $.

floor-propagation-forall-right $a |- ( \imp ( \floor ( \forall x ph0 ) ) ( \forall x ( \floor ph0 ) ) ) $.

floor-propagation-forall-left $a |- ( \imp ( \forall x ( \floor ph0 ) ) ( \floor ( \forall x ph0 ) ) ) $.

${
    rule-eq-to-iff.0 $e |- ( \eq ph0 ph1 ) $.
    rule-eq-to-iff $a |- ( \iff ph0 ph1 ) $.
$}

${
    rule-iff-to-eq.0 $e |- ( \iff ph0 ph1 ) $.
    rule-iff-to-eq $a |- ( \eq ph0 ph1 ) $.
$}

${
    rule-iff-compat-in-ceil.0 $e |- ( \iff ph0 ph1 ) $.
    rule-iff-compat-in-ceil $a |- ( \iff ( \ceil ph0 ) ( \ceil ph1 ) ) $.
$}

${
    rule-iff-compat-in-floor.0 $e |- ( \iff ph0 ph1 ) $.
    rule-iff-compat-in-floor $a |- ( \iff ( \floor ph0 ) ( \floor ph1 ) ) $.
$}

${
    rule-iff-compat-in-app.0 $e |- ( \iff ph0 ph1 ) $.
    rule-iff-compat-in-app.1 $e |- ( \iff ph2 ph3 ) $.
    rule-iff-compat-in-app $a |- ( \iff ( \app ph0 ph2 ) ( \app ph1 ph3 ) ) $.
$}

${
    rule-iff-compat-in-imp.0 $e |- ( \iff ph0 ph1 ) $.
    rule-iff-compat-in-imp.1 $e |- ( \iff ph2 ph3 ) $.
    rule-iff-compat-in-imp $a |- ( \iff ( \imp ph0 ph2 ) ( \imp ph1 ph3 ) ) $.
$}

${
    rule-iff-compat-in-iff.0 $e |- ( \iff ph0 ph2 ) $.
    rule-iff-compat-in-iff.1 $e |- ( \iff ph1 ph3 ) $.
    rule-iff-compat-in-iff $a |- ( \iff ( \iff ph0 ph1 ) ( \iff ph2 ph3 ) ) $.
$}

${
    rule-iff-compat-in-eq.0 $e |- ( \iff ph0 ph2 ) $.
    rule-iff-compat-in-eq.1 $e |- ( \iff ph1 ph3 ) $.
    rule-iff-compat-in-eq $a |- ( \iff ( \eq ph0 ph1 ) ( \eq ph2 ph3 ) ) $.
$}

${
    rule-iff-compat-in-exists.0 $e |- ( \iff ph0 ph1 ) $.
    rule-iff-compat-in-exists $a |- ( \iff ( \exists x ph0 ) ( \exists x ph1 ) ) $.
$}

${
    rule-iff-compat-in-forall.0 $e |- ( \iff ph0 ph1 ) $.
    rule-iff-compat-in-forall $a |- ( \iff ( \forall x ph0 ) ( \forall x ph1 ) ) $.
$}

${
    rule-iff-compat-in-sorted-exists.0 $e |- ( \iff ph0 ph2 ) $.
    rule-iff-compat-in-sorted-exists.1 $e |- ( \iff ph1 ph3 ) $.
    rule-iff-compat-in-sorted-exists $a |- ( \iff ( \sorted-exists x ph0 ph1 ) ( \sorted-exists x ph2 ph3 ) ) $.
$}

sorted-forall-to-sorted-exists $a |- ( \iff ( \sorted-forall x ph0 ph1 ) ( \not ( \sorted-exists x ph0 ( \not ph1 ) ) ) ) $.

${
    rule-iff-compat-in-sorted-forall.0 $e |- ( \iff ph0 ph2 ) $.
    rule-iff-compat-in-sorted-forall.1 $e |- ( \iff ph1 ph3 ) $.
    rule-iff-compat-in-sorted-forall $a |- ( \iff ( \sorted-forall x ph0 ph1 ) ( \sorted-forall x ph2 ph3 ) ) $.
$}

${
    prenex-exists-and-right.0 $e #Fresh x ph1 $.
    prenex-exists-and-right $a |- ( \imp ( \exists x ( \and ph0 ph1 ) ) ( \and ( \exists x ph0 ) ph1 ) ) $.
$}

${
    prenex-exists-and.0 $e #Fresh x ph1 $.
    prenex-exists-and $a |- ( \iff ( \and ( \exists x ph0 ) ph1 ) ( \exists x ( \and ph0 ph1 ) ) ) $.
$}

${
    prenex-sorted-exists-and.0 $e #Fresh x ph2 $.
    prenex-sorted-exists-and $a |- ( \iff ( \and ( \sorted-exists x ph0 ph1 ) ph2 ) ( \sorted-exists x ph0 ( \and ph1 ph2 ) ) ) $.
$}

${
    lemma-prenex-forall-imp-right.0 $e #Fresh x ph0 $.
    lemma-prenex-forall-imp-right $a |- ( \iff ( \forall x ( \imp ph0 ph1 ) ) ( \imp ph0 ( \forall x ph1 ) ) ) $.
$}

${
    forall-not-to-not-exists.0 $e |- ( \forall x ( \not ph0 ) ) $.
    forall-not-to-not-exists $a |- ( \not ( \exists x ph0 ) ) $.
$}

${
    imp-compat-in-sorted-exists.0 $e |- ( \imp ph0 ph1 ) $.
    imp-compat-in-sorted-exists $a |- ( \imp ( \sorted-exists x ph2 ph0 ) ( \sorted-exists x ph2 ph1 ) ) $.
$}

eq-compat-in-ceil $a |- ( \imp ( \eq ph0 ph1 ) ( \eq ( \ceil ph0 ) ( \ceil ph1 ) ) ) $.

x-in-ceil-imp-ceil $a |- ( \imp ( \in x ( \ceil ph0 ) ) ( \ceil ph0 ) ) $.

${
    weakened-mp.0 $e |- ( \imp ph0 ( \imp ph1 ph2 ) ) $.
    weakened-mp.1 $e |- ( \imp ph0 ph1 ) $.
    weakened-mp  $a |- ( \imp ph0 ph2 ) $.
$}

${
    $d x ph1 $.
    forall-propagate-in-floor-imp $a |- ( \imp ( \forall x ( \floor ( \imp ph0 ph1 ) ) ) ( \floor ( \imp ( \exists x ph0 ) ph1 ) ) ) $.
$}

${
    lemma-imp-compat-in-exists-alt.0 $e #Fresh x ph0 $.
    lemma-imp-compat-in-exists-alt.1 $e |- ( \imp ph0 ( \imp ph1 ph2 ) ) $.
    lemma-imp-compat-in-exists-alt $a |- ( \imp ph0 ( \imp ( \exists x ph1 ) ( \exists x ph2 ) ) ) $.
$}

${
    imp-compat-in-eq-and.0 $e |- ( \imp ph0 ph1 ) $.
    imp-compat-in-eq-and $a |- ( \imp ( \eq ( \and ph0 ph2 ) ph2 ) ( \eq ( \and ph1 ph2 ) ph2 ) ) $.
$}

${
    lemma-prenex-exists-imp-right.0 $e #Fresh x ph0 $.
    lemma-prenex-exists-imp-right $a |- ( \imp ( \exists x ( \imp ph0 ph1 ) ) ( \imp ph0 ( \exists x ph1 ) ) ) $.
$}

${
    prenex-forall-iff-left.0 $e #Fresh x ph1 $.
    prenex-forall-iff-left   $a |- ( \imp ( \forall x ( \iff ph0 ph1 ) ) ( \iff ( \forall x ph0 ) ph1 ) ) $.
$}

restricted-inclusion $a |- ( \imp ( \included ph0 ph1 ) ( \eq ( \and ph1 ph0 ) ph0 ) ) $.

iff-transitivity $a |- ( \imp ( \iff ph0 ph1 ) ( \imp ( \iff ph1 ph2 ) ( \iff ph0 ph2 ) ) ) $.

${
    prenex-forall-or-left.0 $e #Fresh x ph0 $.
    prenex-forall-or-left   $a |- ( \imp ( \forall x ( \or ph0 ph1 ) ) ( \or ph0 ( \forall x ph1 ) ) ) $.
$}

${
    prenex-forall-or-right.0 $e #Fresh x ph0 $.
    prenex-forall-or-right   $a |- ( \imp ( \or ph0 ( \forall x ph1 ) ) ( \forall x ( \or ph0 ph1 ) ) ) $.
$}

${
    rule-imp-compat-in-and-alt.0 $e |- ( \imp ph4 ( \imp ph0 ph1 ) ) $.
    rule-imp-compat-in-and-alt.1 $e |- ( \imp ph4 ( \imp ph2 ph3 ) ) $.
    rule-imp-compat-in-and-alt $a |- ( \imp ph4 ( \imp ( \and ph0 ph2 ) ( \and ph1 ph3 ) ) ) $.
$}
