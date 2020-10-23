---- MODULE Lichtsein ----
(*EXTENDS Naturals*)
VARIABLES kleur
----
vars == << kleur >>
Kleuren == {"groen", "geel","rood"}

Types == /\ kleur \in Kleuren



Init == /\ kleur = "rood"
       

lichtRood == /\ kleur # "rood"
             /\ kleur' = "rood"
         
lichtGeel == /\ kleur # "geel"
             /\ kleur' = "geel"

lichtGroen == /\ kleur # "groen"
              /\ kleur' = "groen"
              
Next == \/ lichtRood
        \/ lichtGeel
        \/ lichtGroen

Live == /\ SF_vars(lichtRood)
        /\ SF_vars(lichtGroen)

Spec == /\ Init
        /\ [][Next]_vars
        /\ Live
----

(* licht niet permanent op rood *)
NietPermanentRood == []<>(kleur # "rood")
----
THEOREM Spec => []Types
THEOREM Spec => NietPermanentRood
====
