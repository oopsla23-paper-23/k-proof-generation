$[ theory/matching-logic-prelude-lemmas.mm $]
$[ theory/matching-logic-membership.mm $]

lemma-floor-is-predicate $a |- ( \is-predicate ( \floor ph0 ) ) $.

not-bot-to-top $a |- ( \imp ( \is-bot ph0 ) ( \is-top ( \not ph0 ) ) ) $.

not-top-to-bot $a |- ( \imp ( \is-top ph0 ) ( \is-bot ( \not ph0 ) ) ) $.

predicate-intro-not $a |- ( \imp ( \is-predicate ph0 ) ( \is-predicate ( \not ph0 ) ) ) $.

${
    rule-iff-compat-in-predicate.0 $e |- ( \iff ph0 ph1 ) $.
    rule-iff-compat-in-predicate $a |- ( \iff ( \is-predicate ph0 ) ( \is-predicate ph1 ) ) $.
$}

ph-or-top-to-top $a |- ( \imp ( \is-top ph0 ) ( \is-top ( \or ph0 ph1 ) ) ) $.

bot-or-bot-to-bot $a |- ( \imp ( \and ( \is-bot ph0 ) ( \is-bot ph1 ) ) ( \is-bot ( \or ph0 ph1 ) ) ) $.

predicate-case2 $a |- ( \imp ( \and ( \is-predicate ph0 ) ( \is-predicate ph1 ) ) ( \or ( \and ( \is-bot ph0 ) ( \is-bot ph1 ) ) ( \or ( \and ( \is-bot ph0 ) ( \is-top ph1 ) ) ( \or ( \and ( \is-top ph0 ) ( \is-bot ph1 ) ) ( \and ( \is-top ph0 ) ( \is-top ph1 ) ) ) ) ) ) $.

predicate-intro-or $a |- ( \imp ( \and ( \is-predicate ph0 ) ( \is-predicate ph1 ) ) ( \is-predicate ( \or ph0 ph1 ) ) ) $.

predicate-intro-imp $a |- ( \imp ( \and ( \is-predicate ph0 ) ( \is-predicate ph1 ) ) ( \is-predicate ( \imp ph0 ph1 ) ) ) $.

${
    rule-predicate-intro-imp.0 $e |- ( \is-predicate ph0 ) $.
    rule-predicate-intro-imp.1 $e |- ( \is-predicate ph1 ) $.
    rule-predicate-intro-imp $a |- ( \is-predicate ( \imp ph0 ph1 ) ) $.
$}

lemma-bot-imp-floor $a |- ( \imp ( \is-bot ph0 ) ( \imp ph0 ( \floor ph0 ) ) ) $.

lemma-top-imp-floor $a |- ( \imp ( \is-top ph0 ) ( \imp ph0 ( \floor ph0 ) ) ) $.

lemma-predicate-floor-alt $a |- ( \imp ( \is-predicate ph0 ) ( \imp ph0 ( \floor ph0 ) ) ) $.

${
    lemma-predicate-floor.0 $e |- ( \is-predicate ph0 ) $.
    lemma-predicate-floor $a |- ( \imp ph0 ( \floor ph0 ) ) $.
$}

lemma-imp-floor-imp-floor $a |- ( \imp ( \imp ( \floor ph0 ) ( \floor ph1 ) ) ( \floor ( \imp ( \floor ph0 ) ( \floor ph1 ) ) ) ) $.

lemma-ceil-is-predicate $a |- ( \is-predicate ( \ceil ph0 ) ) $.

${
    is-predicate-elim.0 $e |- ( \is-predicate ph0 ) $.
    is-predicate-elim.1 $e #Substitution ph2 ph1 \bot x $.
    is-predicate-elim.2 $e #Substitution ph3 ph1 \top x $.
    is-predicate-elim.3 $e #Substitution ph4 ph1 ph0 x $.
    is-predicate-elim.4 $e |- ph2 $.
    is-predicate-elim.5 $e |- ph3 $.
    is-predicate-elim   $a |- ph4 $.
$}

forall-predicate-case $a |- ( \imp ( \forall x ( \is-predicate ph0 ) ) ( \or ( \exists x ( \is-top ph0 ) ) ( \forall x ( \is-bot ph0 ) ) ) ) $.

predicate-intro-exists $a |- ( \imp ( \forall x ( \is-predicate ph0 ) ) ( \is-predicate ( \exists x ph0 ) ) ) $.

${
    rule-predicate-intro-exists.0 $e |- ( \is-predicate ph0 ) $.
    rule-predicate-intro-exists   $a |- ( \is-predicate ( \exists x ph0 ) ) $.
$}

${
    $d x ph0 $.
    nonempty-predicate-is-top.0 $e |- ( \ceil ph0 ) $.
    nonempty-predicate-is-top.1 $e |- ( \is-predicate ph1 ) $.
    nonempty-predicate-is-top   $a |- ( \imp ( \eq ph0 ( \and ph1 ph0 ) ) ph1 ) $.
$}

${
    $d x ph1 $.
    $d x ph2 $.
    predicate-and-propagate-in-eq.0 $e |- ( \is-predicate ph0 ) $.
    predicate-and-propagate-in-eq   $a |- ( \imp ( \and ph0 ( \eq ph1 ph2 ) ) ( \eq ( \and ph0 ph1 ) ph2 ) ) $.
$}

${
    $d x ph0 $.
    $d x ph1 $.
    predicate-imp-propagate-in-floor.0 $e |- ( \is-predicate ph0 ) $.
    predicate-imp-propagate-in-floor   $a |- ( \imp ( \imp ph0 ( \floor ph1 ) ) ( \floor ( \imp ph0 ph1 ) ) ) $.
$}

${
    $d x ph0 $.
    $d x ph1 $.
    $d x ph2 $.
    predicate-imp-propagate-in-iff.0 $e |- ( \is-predicate ph0 ) $.
    predicate-imp-propagate-in-iff   $a |- ( \imp ( \imp ph0 ( \iff ph1 ph2 ) ) ( \iff ( \and ( \imp ph0 ph1 ) ph2 ) ph2 ) ) $.
$}

${
    predicate-floor-intro.0 $e |- ( \is-predicate ph0 ) $.
    predicate-floor-intro.1 $e |- ( \imp ph0 ph1 ) $.
    predicate-floor-intro   $a |- ( \imp ph0 ( \floor ph1 ) ) $.
$}

${
    rule-predicate-intro-and.0 $e |- ( \is-predicate ph0 ) $.
    rule-predicate-intro-and.1 $e |- ( \is-predicate ph1 ) $.
    rule-predicate-intro-and $a |- ( \is-predicate ( \and ph0 ph1 ) ) $.
$}

predicate-intro-top $a |- ( \is-predicate \top ) $.

is-bot-elim $a |- ( \imp ( \is-bot ph0 ) ( \imp ph0 ph1 ) ) $.

${
    $d x ph1 $.
    $d x ph2 $.
    predicate-imp-propagate-in-app.0 $e |- ( \is-predicate ph0 ) $.
    predicate-imp-propagate-in-app $a |- ( \iff ( \and ph0 ( \app ph1 ph2 ) ) ( \app ph1 ( \and ph0 ph2 ) ) ) $.
$}

${
    predicate-imp-compat-in-ceil.0 $e |- ( \is-predicate ph0 ) $.
    predicate-imp-compat-in-ceil.1 $e |- ( \imp ph0 ( \imp ph1 ph2 ) ) $.
    predicate-imp-compat-in-ceil   $a |- ( \imp ph0 ( \imp ( \ceil ph1 ) ( \ceil ph2 ) ) ) $.
$}

${
    predicate-not-ceil-elim.0 $e |- ( \is-predicate ph0 ) $.
    predicate-not-ceil-elim.1 $e |- ( \imp ph0 ( \not ph1 ) ) $.
    predicate-not-ceil-elim   $a |- ( \imp ph0 ( \not ( \ceil ph1 ) ) ) $.
$}
