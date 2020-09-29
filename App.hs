{-# LANGUAGE EmptyDataDecls, RankNTypes, ScopedTypeVariables #-}
module App(List(..), app, rev) where {

import Prelude ((==), (/=), (<), (<=), (>=), (>), (+), (-), (*), (/), (**),
 (>>=), (>>), (=<<), (&&), (||), (^), (^^), (.), ($), ($!), (++), (!!), Eq,
 error, id, return, not, fst, snd, map, filter, concat, concatMap, reverse,
 zip, null, takeWhile, dropWhile, all, any, Integer, negate, abs, divMod,
 String, Bool(True, False), Maybe(Nothing, Just));

import qualified Prelude;

data List a = Nil | Cons a (List a);

app :: forall a. List a -> List a -> List a;
app Nil ys = ys;
app (Cons x xs) ys = Cons x (app xs ys);

rev :: forall a. List a -> List a;
rev Nil = Nil;
rev (Cons x xs) = app (rev xs) (Cons x Nil);

}