#!/bin/bash
# author: Ivan Yakimov
# e-mail: ivan.yakimov.research@yandex.ru
# this software is licensed under the z-lib license
echo "
:load Driver.hs
\"################ START ##################\"
\"the original lists are:\"
l0
l1
l2
l3
l4
\"reversed:\"
rev l0
rev l1
rev l2
rev l3
rev l4
\"=====================================================================\"
\" Mathematical PROOF BY INDUCTION for the following theorem: \"
\"rev (rev xs) = xs\"
\" Isabelle automatically generates 2 subgoals which are \"
\"--------------------------------------------------------------------\"
\" # BASE ... \"
\" First goal is a BASE of the induction:\"
\" 1. rev (rev []) = [] \"
\" we can check whether is it a case with haskell by: \"
\" (rev (rev Nil)) == Nil \"
\" which is: \"
(rev (rev Nil)) == Nil
\"--------------------------------------------------------------------\"
\" # ... and INDUCTIVE STEP \"
\" Second goal is an INDUCTIVE STEP:\"
\" 2. !! x1 x2. rev (rev x2) = x2 ==> rev (rev (x1 # x2)) = x1 # x2 \"
\" first part of the second goal is an INDUCTIVE HYPOTHESIS: \"
\" !! x2. rev (rev x2) = x2:\"
\" we expand it with fixed-length list l2\"
\"(rev (rev l2) == l2)\"
\" the result is: \"
(rev (rev l2)) == l2
\" futher, we demonstrate that INDUCTUVE STEP ITSELF is true: \"
\" rev (rev (x1 # x2)) = x1 # x2 \"
\" with list produced from l2 by adding single element\"
\" (rev (rev (Cons 28 l2))) == (Cons 28 l2) \"
\" we can see that it is indeed true: \"
(rev (rev (Cons 28 l2))) == (Cons 28 l2)
\"####\"
\"################ END ##################\"
:quit
" | ghci
