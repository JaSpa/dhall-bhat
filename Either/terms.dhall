let Either = ./Type

in    λ(a : Type)
    → λ(b : Type)
    →   { Left = (Either a b).Left
        , Right = (Either a b).Right
        , fromLeft = λ(def : a) → λ(e : Either a b) → ./fromLeft a b def e
        , fromRight = λ(def : b) → λ(e : Either a b) → ./fromRight a b def e
        , isLeft = λ(e : Either a b) → ./isLeft a b e
        , isRight = λ(e : Either a b) → ./isRight a b e
        , lefts = λ(eithers : List (Either a b)) → ./lefts a b eithers
        , mapBoth =
              λ(c : Type)
            → λ(d : Type)
            → λ(f : a → c)
            → λ(g : b → d)
            → λ(e : Either a b)
            → ./mapBoth a b c d f g e
        , mapLeft =
            λ(c : Type) → λ(f : a → c) → λ(e : Either a b) → ./mapLeft a b c f e
        , mapRight =
              λ(d : Type)
            → λ(f : b → d)
            → λ(e : Either a b)
            → ./mapRight a b d f e
        , partition = λ(eithers : List (Either a b)) → ./partition a b eithers
        , rights = λ(eithers : List (Either a b)) → ./rights a b eithers
        }
      ∧ ./monad a ⫽ ./traversable a ⫽ ./bifunctor
