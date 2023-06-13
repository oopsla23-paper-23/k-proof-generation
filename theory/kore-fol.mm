$[ theory/kore.mm $]
$[ theory/kore-substitution.mm $]
$[ theory/kore-propositional.mm $]
$[ theory/kore-semantics.mm $]
$[ theory/kore-sorting.mm $]
$[ theory/kore-notation.mm $]
$[ theory/matching-logic-membership.mm $]
$[ theory/matching-logic-disjointness.mm $]

${
    kore-equals-symmetry.0 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-equals ph1 ph0 ph3 ph2 ) ) ) $.
    kore-equals-symmetry   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-equals ph1 ph0 ph2 ph3 ) ) ) $.
$}

${
    kore-in-reflexivity.0 $e |- ( \is-predicate th0 ) $.
    kore-in-reflexivity.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-in-reflexivity   $a |- ( \imp th0 ( \kore-valid ph1 ( \kore-in ph0 ph1 ph2 ph2 ) ) ) $.
$}

${
    sorted-forall-propagate-floor $a |- ( \imp ( \sorted-forall x ph0 ( \floor ph1 ) ) ( \floor ( \sorted-forall x ph0 ph1 ) ) ) $.
$}

${
    $d x ph2 $.
    kore-forall-intro-lemma $a |- ( \imp ( \sorted-forall x ph0 ( \eq ph1 ph2 ) ) ( \eq ( \and ( \sorted-forall x ph0 ph1 ) ph2 ) ph2 ) ) $.
$}

${
    $d x th0 $.
    $d x ph0 $.
    kore-forall-intro.0 $e |- ( \sorted-forall x ph2 ( \imp th0 ( \kore-valid ph0 ph1 ) ) ) $.
    kore-forall-intro   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-forall ph2 ph0 x ph1 ) ) ) $.
$}

${
    $d x th0 $.
    $d x ph0 $.
    kore-forall-intro-alt.0 $e |- ( \imp ( \and ( \in-sort x ph2 ) th0 ) ( \kore-valid ph0 ph1 ) ) $.
    kore-forall-intro-alt   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-forall ph2 ph0 x ph1 ) ) ) $.
$}

${
    kore-equality-in-constraint.0 $e |- ( \is-predicate th0 ) $.
    kore-equality-in-constraint.1 $e #Substitution ph2 ph4 ph5 x $.
    kore-equality-in-constraint.2 $e #Substitution ph3 ph4 ph6 x $.
    kore-equality-in-constraint.3 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-equality-in-constraint.4 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-equality-in-constraint.5 $e |- ( \imp th0 ( \in-sort ph3 ph0 ) ) $.
    kore-equality-in-constraint.6 $e |- ( \imp th0 ( \in-sort ph5 ph7 ) ) $.
    kore-equality-in-constraint.7 $e |- ( \imp th0 ( \in-sort ph6 ph7 ) ) $.
    kore-equality-in-constraint.8 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-equals ph7 ph0 ph5 ph6 ) ) ) ) $.
    kore-equality-in-constraint   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-and ph0 ph1 ph2 ) ( \kore-and ph0 ph1 ph3 ) ) ) ) $.
$}

unit-sort-is-kore-sort $a |- ( \kore-is-sort \unit-sort ) $.

unit-sort-is-functional $a |- ( \exists x ( \eq x \unit-sort ) ) $.

${
    $d x ph0 $.
    kore-sort-functional.0 $e |- ( \imp th0 ( \kore-is-sort ph0 ) ) $.
    kore-sort-functional   $a |- ( \imp th0 ( \exists x ( \eq x ph0 ) ) ) $.
$}

${
    $d z ph0 $.
    $d z ph1 $.
    $d z ph2 $.
    $d z y $.
    $d z x $.
    $d z th1 $.
    $d z th2 $.
    $d x ph0 $.
    functional-substitution-alt2.0 $e #Fresh y th0 $.
    functional-substitution-alt2.1 $e |- ( \imp th0 ( \exists x ( \eq x ph0 ) ) ) $.
    functional-substitution-alt2.2 $e |- ( \imp ( \and th0 th1 ) ph1 ) $.
    functional-substitution-alt2.3 $e #Substitution ( \imp th2 ph2 ) ( \imp th1 ph1 ) ph0 y $.
    functional-substitution-alt2.4 $e #Substitution ( \imp th3 ph3 ) ( \imp th1 ph1 ) z y $.
    functional-substitution-alt2   $a |- ( \imp ( \and th0 th2 ) ph2 ) $.
$}

${
    $d z ph0 $.
    $d z ph1 $.
    $d z ph2 $.
    $d z y $.
    $d z x $.
    $d z th1 $.
    $d z th2 $.
    $d x ph0 $.
    $d y th0 $.
    functional-substitution-alt.0 $e |- ( \imp th0 ( \exists x ( \eq x ph0 ) ) ) $.
    functional-substitution-alt.1 $e |- ( \imp ( \and th0 th1 ) ph1 ) $.
    functional-substitution-alt.2 $e #Substitution ( \imp th2 ph2 ) ( \imp th1 ph1 ) ph0 y $.
    functional-substitution-alt.3 $e #Substitution ( \imp th3 ph3 ) ( \imp th1 ph1 ) z y $.
    functional-substitution-alt   $a |- ( \imp ( \and th0 th2 ) ph2 ) $.
$}

${
    $d z ph0 $.
    $d z ph1 $.
    $d z ph2 $.
    $d z y $.
    $d z x $.
    $d z th1 $.
    $d z th2 $.
    $d x ph0 $.
    $d y th0 $.
    functional-substitution-alt3.0 $e |- ( \imp th0 ( \exists x ( \eq x ph0 ) ) ) $.
    functional-substitution-alt3.2 $e #Substitution ( \imp th2 ph2 ) ( \imp th1 ph1 ) ph0 y $.
    functional-substitution-alt3.3 $e #Substitution ( \imp th3 ph3 ) ( \imp th1 ph1 ) z y $.
    functional-substitution-alt3   $a |- ( \imp th0 ( \imp ( \forall y ( \imp th1 ph1 ) ) ( \imp th2 ph2 ) ) ) $.
$}

${
    $d z ph0 $.
    $d z ph1 $.
    $d z ph2 $.
    $d z y $.
    $d z x $.
    $d z th1 $.
    $d z th2 $.
    $d z ph4 $.

    $d x ph0 $.
    $d y ph4 $.
    $d y ph5 $.
    $d y th0 $.
    functional-substitution-alt4.0 $e |- ( \is-predicate th0 ) $.
    functional-substitution-alt4.1 $e |- ( \imp th0 ( \exists x ( \eq x ph0 ) ) ) $.
    functional-substitution-alt4.2 $e |- ( \imp th0 ( \in-sort ph2 ph5 ) ) $.
    functional-substitution-alt4.3 $e |- ( \imp th0 ( \in-sort ph0 ph4 ) ) $.
    functional-substitution-alt4.4 $e #Substitution ph2 ph1 ph0 y $.
    functional-substitution-alt4.5 $e #Substitution ph3 ph1 z y $.
    functional-substitution-alt4   $a |- ( \imp th0 ( \kore-valid ph5 ( \kore-implies ph5 ( \kore-forall ph4 ph5 y ph1 ) ph2 ) ) ) $.
$}

eq-compat-in-eq-alt $a |- ( \imp ( \eq ph0 ph1 ) ( \eq ( \eq ph0 ph2 ) ( \eq ph1 ph2 ) ) ) $.

${
    nonempty-floor-is-top.0 $e |- ( \ceil ph0 ) $.
    nonempty-floor-is-top   $a |- ( \iff ( \eq ph0 ( \and ( \floor ph1 ) ph0 ) ) ( \floor ph1 ) ) $.
$}

${
    $d x y $.
    unit-sort-nonempty-alt $a |- ( \ceil ( \inh \unit-sort ) ) $.
$}

${
    kore-equals-to-eq.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-equals-to-eq.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-equals-to-eq.2 $e |- ( \imp th0 ( \kore-valid \unit-sort ( \kore-equals ph0 \unit-sort ph1 ph2 ) ) ) $.
    kore-equals-to-eq   $a |- ( \imp th0 ( \eq ph1 ph2 ) ) $.
$}

${
    kore-equals-elim.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-equals-elim.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-equals-elim.2 $e |- ( \imp th0 ( \kore-valid \unit-sort ( \kore-equals ph0 \unit-sort ph1 ph2 ) ) ) $.
    kore-equals-elim.3 $e |- ( \imp th0 ph3 ) $.
    kore-equals-elim.4 $e #Substitution ph3 ph4 ph1 x $.
    kore-equals-elim.5 $e #Substitution ph5 ph4 ph2 x $.
    kore-equals-elim   $a |- ( \imp th0 ph5 ) $.
$}

${

    kore-equals-elim-alt.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-equals-elim-alt.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-equals-elim-alt.2 $e |- ( \imp th0 ( \kore-valid \unit-sort ( \kore-equals ph0 \unit-sort ph1 ph2 ) ) ) $.
    kore-equals-elim-alt.3 $e |- ( \imp th0 ( \kore-valid ph6 ph3 ) ) $.
    kore-equals-elim-alt.4 $e #Substitution ( \kore-valid ph6 ph3 ) ph4 ph1 x $.
    kore-equals-elim-alt.5 $e #Substitution ( \kore-valid ph7 ph5 ) ph4 ph2 x $.
    kore-equals-elim-alt   $a |- ( \imp th0 ( \kore-valid ph7 ph5 ) ) $.
$}

kore-equals-reflexivity-aux $a |- ( \not ( \and ( \not ( \and ( \or ( \and ( \not ph2 ) ph1 ) ph2 ) ( \or ( \and ( \not ph2 ) ph1 ) ph2 ) ) ) ph1 ) ) $.

kore-equals-reflexivity $a |- ( \kore-valid ph0 ( \kore-equals ph1 ph0 ph2 ph2 ) ) $.

${
    $d x ph0 $.
    $d x ph1 $.
    $d x ph2 $.
    kore-dup-and $a |- ( \kore-valid ph0 ( \kore-equals ph1 ph0 ( \kore-and ph1 ph2 ph2 ) ph2 ) ) $.
$}

${
    $d x y s0 $.
    $d y ph0 $.
    $d y ph1 $.

    kore-variable-functional $a
        |- ( \imp ( \in-sort x ph0 ) ( \kore-valid ph1 ( \kore-exists ph0 ph1 y ( \kore-equals ph0 ph1 y x ) ) ) )
    $.
$}

${
    $d y x $.
    $d y ph0 $.
    $d y ph1 $.
    $d x ph2 $.
    kore-functional-lemma $a
        |- ( \imp ( \floor ph2 )
           ( \imp ( \eq ( \and ( \exists x ph1 ) ph0 ) ph0 )
                  ( \eq ( \and ( \exists x ( \and ( \floor ph2 ) ph1 ) ) ph0 ) ph0 ) ) )
    $.
$}

${
    $d x ph0 $.
    $d x ph1 $.
    kore-functional.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-functional.1 $e |- ( \imp th0 ( \kore-valid \unit-sort ( \kore-exists ph0 \unit-sort x ( \kore-equals ph0 \unit-sort x ph1 ) ) ) ) $.
    kore-functional   $a |- ( \imp th0 ( \exists x ( \eq x ph1 ) ) ) $.
$}

kore-ph-implies-ceil-ph $a |- ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-ceil ph0 ph0 ph1 ) ) ) $.

${
    kore-floor-ph-implies-ph.0 $e |- ( \imp th0 ( \in-sort ph1 ph0 ) ) $.
    kore-floor-ph-implies-ph $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-floor ph0 ph0 ph1 ) ph1 ) ) ) $.
$}

${
    kore-exists-quantifier.0 $e #Substitution ph1 ph3 y x $.
    kore-exists-quantifier.1 $e #Fresh x ph2 $.
    kore-exists-quantifier   $a |- ( \imp ( \in-sort y ph2 ) ( \kore-valid ph0 ( \kore-implies ph0 ph1 ( \kore-exists ph2 ph0 x ph3 ) ) ) ) $.
$}

${
    kore-forall-prenex-implies-left.0 $e #Fresh x ph0 $.
    kore-forall-prenex-implies-left.1 $e #Fresh x ph1 $.
    kore-forall-prenex-implies-left   $a |- ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-implies ph0 ph1 ( \kore-forall ph3 ph0 x ph2 ) ) ( \kore-forall ph3 ph0 x ( \kore-implies ph0 ph1 ph2 ) ) ) ) $.
$}

${
    kore-forall-prenex-implies-right.0 $e #Fresh x ph0 $.
    kore-forall-prenex-implies-right.1 $e #Fresh x ph1 $.
    kore-forall-prenex-implies-right   $a |- ( \kore-valid ph0 ( \kore-implies ph0 ( \kore-forall ph3 ph0 x ( \kore-implies ph0 ph1 ph2 ) ) ( \kore-implies ph0 ph1 ( \kore-forall ph3 ph0 x ph2 ) ) ) ) $.
$}

${
    $d x ph0 $.
    $d x th0 $.
    $d y x $.
    $d y ph0 $.
    $d y ph1 $.
    $d y ph2 $.
    kore-forall-not-to-exists.0 $e |- ( \is-predicate th0 ) $.
    kore-forall-not-to-exists.1 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-forall-not-to-exists.2 $e |- ( \imp th0 ( \kore-valid ph0 ( \kore-forall ph1 ph0 x ( \kore-not ph0 ph2 ) ) ) ) $.
    kore-forall-not-to-exists   $a |- ( \imp th0 ( \kore-valid ph0 ( \kore-not ph0 ( \kore-exists ph1 ph0 x ph2 ) ) ) ) $.
$}
