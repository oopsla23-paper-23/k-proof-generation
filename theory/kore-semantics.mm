$( Translation from kore constructs to lower level ML constructs $)

$[ theory/kore.mm $]
$[ theory/kore-substitution.mm $]
$[ theory/kore-propositional.mm $]
$[ theory/kore-sorting.mm $]
$[ theory/kore-notation.mm $]
$[ theory/kore-predicate.mm $]
$[ theory/matching-logic-membership.mm $]
$[ theory/matching-logic-disjointness.mm $]

kore-semantics-not $a |- ( \eq ( \kore-not ph0 ph1 ) ( \and ( \not ph1 ) ( \inh ph0 ) ) )  $.

${
    kore-semantics-forall.0 $e #Fresh x ph1 $.
    kore-semantics-forall $a |- ( \eq ( \kore-forall ph0 ph1 x ph2 ) ( \and ( \sorted-forall x ph0 ph2 ) ( \inh ph1 ) ) ) $.
$}

kore-semantics-and $a |- ( \eq ( \kore-and ph0 ph1 ph2 ) ( \and ph1 ph2 ) ) $.

kore-semantics-or $a |- ( \eq ( \kore-or ph0 ph1 ph2 ) ( \or ph1 ph2 ) ) $.


kore-semantics-implies $a |- ( \imp ( \in-sort ph2 ph0 ) ( \eq ( \kore-implies ph0 ph1 ph2 ) ( \and ( \imp ph1 ph2 ) ( \inh ph0 ) ) ) ) $.

kore-semantics-iff $a |- ( \imp ( \and ( \in-sort ph1 ph0 ) ( \in-sort ph2 ph0 ) ) ( \eq ( \kore-iff ph0 ph1 ph2 ) ( \and ( \iff ph1 ph2 ) ( \inh ph0 ) ) ) ) $.

kore-semantics-ceil $a |- ( \eq ( \kore-ceil ph0 ph1 ph2 ) ( \and ( \ceil ph2 ) ( \inh ph1 ) ) ) $.

kore-semantics-floor $a |- ( \eq ( \kore-floor ph0 ph1 ph2 ) ( \and ( \floor ( \imp ( \inh ph0 ) ph2 ) ) ( \inh ph1 ) ) ) $.

kore-semantics-equals-lemma-0 $a |- ( \imp ( \and ( \in-sort ph1 ph0 ) ( \in-sort ph2 ph0 ) ) ( \included ( \not ( \inh ph0 ) ) ( \iff ph1 ph2 ) ) ) $.

kore-semantics-equals-lemma-1 $a |- ( \imp ( \and ( \in-sort ph2 ph0 ) ( \in-sort ph3 ph0 ) ) ( \included ( \iff ph2 ph3 ) ( \imp ( \inh ph0 ) ( \iff ph2 ph3 ) ) ) ) $.

kore-semantics-equals-lemma-2 $a |- ( \imp ( \included ( \not ( \inh ph0 ) ) ( \iff ph1 ph2 ) ) ( \included ( \imp ( \inh ph0 ) ( \iff ph1 ph2 ) ) ( \iff ph1 ph2 ) ) ) $.

kore-semantics-equals-lemma-3 $a |- ( \imp ( \and ( \in-sort ph2 ph0 ) ( \in-sort ph3 ph0 ) ) ( \eq ( \imp ( \inh ph0 ) ( \iff ph2 ph3 ) ) ( \iff ph2 ph3 ) ) ) $.


${
    $d x ph0 $.
    $d x ph1 $.
    kore-semantics-equals-alt $a |-
        ( \imp ( \and ( \in-sort ph2 ph0 ) ( \in-sort ph3 ph0 ) )
               ( \eq ( \kore-equals ph0 ph1 ph2 ph3 ) ( \and ( \floor ( \imp ( \inh ph0 ) ( \iff ph2 ph3 ) ) ) ( \inh ph1 ) ) ) )
    $.
$}

${
    $d x ph0 $.
    $d x ph1 $.
    kore-semantics-equals $a
        |- ( \imp ( \and ( \in-sort ph2 ph0 ) ( \in-sort ph3 ph0 ) )
                  ( \eq  ( \kore-equals ph0 ph1 ph2 ph3 )
                         ( \and ( \eq ph2 ph3 ) ( \inh ph1 ) ) ) )
    $.
$}

${
    $d x ph1 $.
    kore-exists-intro $a |- ( \imp ( \exists x ( \eq ph0 ph1 ) ) ( \eq ( \and ( \exists x ph0 ) ph1 ) ph1 ) ) $.
$}

kore-semantics-dn $a |- ( \imp ( \in-sort ph1 ph0 ) ( \eq ( \kore-not ph0 ( \kore-not ph0 ph1 ) ) ph1 ) ) $.

${
    kore-semantics-exists-dn.0 $e |- ( \is-predicate th0 ) $.
    kore-semantics-exists-dn.1 $e #Fresh x th0 $.
    kore-semantics-exists-dn.2 $e |- ( \imp th0 ( \in-sort ph2 ph0 ) ) $.
    kore-semantics-exists-dn   $a |- ( \imp th0 ( \eq ( \kore-exists ph1 ph0 x ( \kore-not ph0 ( \kore-not ph0 ph2 ) ) ) ( \kore-exists ph1 ph0 x ph2 ) ) ) $.
$}
