﻿theory lab2
imports Main
begin
(*note: from Isabelle Tutorial*)
no_notation Nil("[]") and Cons (infix "#" 65) and append (infixr "@" 65)
hide_type list
hide_const rev

datatype 'a list = Nil ("[]")
| Cons 'a "'a list" (infixr "#" 65)

primrec app :: "'a list \<Rightarrow> 'a list \<Rightarrow> 'a list" (infixr "@" 65) where
"[] @ ys = ys" |
"(x # xs) @ ys = x # (xs @ ys)"

primrec rev :: "'a list \<Rightarrow> 'a list" where
"rev [] = []" |
"rev (x # xs) = (rev xs) @ (x # [])"

value "a # b # c # []"

value "rev (a # b # c # [])"

value "rev (rev (a # b # c # []))"

lemma app_Nil2 [simp]: "xs @ [] = xs"
apply (induct_tac xs)
apply auto
done

lemma app_assoc [simp]: "(xs @ ys) @ zs = xs @ (ys @ zs)"
apply (induct_tac xs)
apply auto
done

lemma rev_app [simp]: "rev (xs @ ys) = (rev ys) @ (rev xs)"
apply (induct_tac xs)
apply auto
done

theorem rev_rev [simp]: "rev (rev xs) = xs"
using [[simp_trace]]
apply (induct_tac xs)
apply auto
done

end