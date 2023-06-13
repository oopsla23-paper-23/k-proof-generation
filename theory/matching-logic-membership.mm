$[ theory/matching-logic-prelude-lemmas.mm $]

in-vs-include-lemma-0 $a |- ( \imp ph0 ( \or ( \and ph0 ( \not ph1 ) ) ( \and ph0 ph1 ) ) ) $.

in-vs-include-lemma-1 $a |- ( \imp ( \not ( \imp ph0 ph1 ) ) ( \and ph0 ( \not ph1 ) ) ) $.

in-vs-include-lemma-2 $a |- ( \imp ( \and ph0 ( \not ph1 ) ) ( \not ( \imp ph0 ph1 ) ) ) $.

in-imp-include $a |- ( \imp ( \in x ph0 ) ( \included x ph0 ) ) $.

include-imp-in $a |- ( \imp ( \included x ph0 ) ( \in x ph0 ) ) $.

in-vs-include $a |- ( \iff ( \in x ph0 ) ( \included x ph0 ) ) $.

${
    membership-intro.0 $e |- ph0 $.
    membership-intro $a |- ( \forall x ( \in x ph0 ) ) $.
$}

${
    membership-elim.0 $e #Fresh x ph0 $.
    membership-elim.1 $e |- ( \forall x ( \in x ph0 ) ) $.
    membership-elim $a |- ph0 $.
$}

${
    $d x y $.
    membership-exists $a |- ( \iff ( \in x ( \exists y ph0 ) ) ( \exists y ( \in x ph0 ) ) ) $.
$}

${
    rule-imp-compat-in-in.0 $e |- ( \imp ph0 ph1 ) $.
    rule-imp-compat-in-in $a |- ( \imp ( \in x ph0 ) ( \in x ph1 ) ) $.
$}

membership-or $a |- ( \iff ( \in x ( \or ph0 ph1 ) ) ( \or ( \in x ph0 ) ( \in x ph1 ) ) ) $.

membership-not $a |- ( \iff ( \in x ( \not ph0 ) ) ( \not ( \in x ph0 ) ) ) $.

membership-and $a |- ( \iff ( \in x ( \and ph0 ph1 ) ) ( \and ( \in x ph0 ) ( \in x ph1 ) ) ) $.

membership-var-left-aux-0 $a |- ( \imp ( \not ( \iff ph0 ph1 ) ) ( \or ( \and ph0 ( \not ph1 ) ) ( \and ( \not ph0 ) ph1 ) ) ) $.

membership-var-left-aux-1 $a |- ( \imp ( \ceil ( \and x y ) ) ( \not ( \ceil ( \and x ( \not y ) ) ) ) ) $.

membership-var-left-aux-2 $a |- ( \imp ( \ceil ( \and x y ) ) ( \not ( \ceil ( \and ( \not x ) y ) ) ) ) $.

membership-var-left $a |- ( \imp ( \in x y ) ( \eq x y ) ) $.

membership-var-right-aux $a |- ( \imp ( \or ph0 ph1 ) ( \or ( \not ( \iff ph0 ph1 ) ) ( \and ph0 ph1 ) ) ) $.

membership-var-right $a |- ( \imp ( \eq x y ) ( \in x y ) ) $.

membership-var $a |- ( \iff ( \in x y ) ( \eq x y ) ) $.

membership-imp $a |- ( \iff ( \in x ( \imp ph0 ph1 ) ) ( \imp ( \in x ph0 ) ( \in x ph1 ) ) ) $.

${
    rule-membership-imp-right.0 $e |- ( \imp ( \in x ph0 ) ( \in x ph1 ) ) $.
    rule-membership-imp-right $a |- ( \in x ( \imp ph0 ph1 ) ) $.
$}

ceil-and-x-ceil-ph-imp-ceil-ph $a |- ( \imp ( \ceil ( \and x ( \ceil ph0 ) ) ) ( \ceil ph0 ) ) $.

membership-symbol-ceil-aux-aux-0 $a |- ( \imp ( \ceil ( \and x ph0 ) ) ( \floor ( \ceil ( \and x ph0 ) ) ) ) $.

membership-symbol-ceil-aux-0 $a |- ( \imp ( \ceil ( \and x ph0 ) ) ( \ceil ( \and y ( \ceil ( \and x ph0 ) ) ) ) ) $.

${
    $d y ph0 $.
    membership-symbol-ceil-right-aux-0 $a |- ( \imp ( \exists y ( \and ( \ceil ( \and y ph0 ) ) y ) ) ph0 ) $.
$}


${
    $d x y $.
    $d y ph0 $.
    membership-symbol-ceil-right $a |- ( \imp ( \exists y ( \in y ph0 ) ) ( \in x ( \ceil ph0 ) ) ) $.
$}

${
    $d x y ph0 $.
    $d y ph0 $.
    membership-symbol-ceil-left-aux-0 $a |- ( \imp ph0 ( \exists y ( \ceil ( \and y ph0 ) ) ) ) $.
$}

${
    $d x y $.
    $d y ph0 $.
    membership-symbol-ceil-left $a |- ( \imp ( \in x ( \ceil ph0 ) ) ( \exists y ( \in y ph0 ) ) ) $.
$}

${
    $d x y $.
    $d x ph0 $.
    $d y ph0 $.
    lemma-ceil-imp-floor-ceil $a |- ( \imp ( \ceil ph0 ) ( \floor ( \ceil ph0 ) ) ) $.
$}

ceil-floor-imp-floor $a |- ( \imp ( \ceil ( \floor ph0 ) ) ( \floor ph0 ) ) $.

${
    nonempty-is-not-bot.0 $e |- ( \ceil ph0 ) $.
    nonempty-is-not-bot   $a |- ( \not ( \eq ph0 \bot ) ) $.
$}

${
    $d x y ph0 $.
    functional-imp-nonempty $a |- ( \imp ( \exists x ( \eq x ph0 ) ) ( \ceil ph0 ) ) $.
$}

${
    $d x ph0 $.
    functional-imp-nonempty-alt.0 $e |- ( \imp th0 ( \exists x ( \eq x ph0 ) ) ) $.
    functional-imp-nonempty-alt   $a |- ( \imp th0 ( \ceil ph0 ) ) $.
$}
