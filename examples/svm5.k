module SVM5

imports IMP

syntax Id ::= "s"  [token]
            | "r"  [token]
            | "w1" [token]
            | "W2" [token]
            | "W3" [token]
            | "W4" [token]
            | "W5" [token]
            | "x1" [token]
            | "X2" [token]
            | "X3" [token]
            | "X4" [token]
            | "X5" [token]
            | "b"  [token]

claim
  <k>
    int r, s, b, w1, x1;
    w1 = W1:Int;
    x1 = X1:Int;
    b = B:Int;
    s = 0;
    s = s + (w1 * x1);

    if (b < s) {
      r = 1;
    } else {
      r = -1;
    }
    =>
    .
  </k>
  <state> .Map =>
      b |-> B:Int
      r |-> 1
      s |-> W1 *Int X1
      w1 |-> W1:Int
      x1 |-> X1:Int
    </state>
  requires B <Int W1 *Int X1
  [one-path]

endmodule
