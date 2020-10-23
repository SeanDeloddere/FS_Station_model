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
              

----

====
