module SVM5

imports IMP

syntax Id ::= "s"  [token]
            | "r"  [token]
            | "w1" [token]
            | "w2" [token]
            | "w3" [token]
            | "w4" [token]
            | "w5" [token]
            | "x1" [token]
            | "x2" [token]
            | "x3" [token]
            | "x4" [token]
            | "x5" [token]
            | "b"  [token]

claim
  <k>
    int r, s, b, w1, w2, w3, w4, w5, x1, x2, x3, x4, x5;
    w1 = W1:Int;
    w2 = W2:Int;
    w3 = W3:Int;
    w4 = W4:Int;
    w5 = W5:Int;
    x1 = X1:Int;
    x2 = X2:Int;
    x3 = X3:Int;
    x4 = X4:Int;
    x5 = X5:Int;
    b = B:Int;

    s = 0;
    s = s + (w1 * x1);
    s = s + (w2 * x2);
    s = s + (w3 * x3);
    s = s + (w4 * x4);
    s = s + (w5 * x5);
    if (b < s) {
      r = 1;
    } else {
      r = -1;
    }
    =>
    .
  </k>
  <state> .Map =>
      r |-> 1
      b |-> B:Int
      s |->
        W1 *Int X1 +Int
        W2 *Int X2 +Int
        W3 *Int X3 +Int
        W4 *Int X4 +Int
        W5 *Int X5
      w1 |-> W1:Int
      w2 |-> W2:Int
      w3 |-> W3:Int
      w4 |-> W4:Int
      w5 |-> W5:Int
      x1 |-> X1:Int
      x2 |-> X2:Int
      x3 |-> X3:Int
      x4 |-> X4:Int
      x5 |-> X5:Int
    </state>
  requires B <Int
    W1 *Int X1 +Int
    W2 *Int X2 +Int
    W3 *Int X3 +Int
    W4 *Int X4 +Int
    W5 *Int X5
  [one-path]

endmodule
