---- MODULE Wissel ----
EXTENDS Naturals
VARIABLES state, bezet
----
vars == <<state, bezet>>

States == {"straight", "change"}

TypeInvariant == /\ state \in States
                 /\ bezet \in {0,1}


Init == /\ state = "straight"
        /\ bezet = 0


ToChange == /\ state = "straight"
            /\ state' = "change"

ToStraight == /\ state = "change"
              /\ state' = "straight"
              
reserveer == bezet' = bezet + 1
vrij == bezet' = bezet - 1

              
Next == \/ ToChange
        \/ ToStraight
        
(* Liveness conditie nodig om te zorgen dat er ooit van stand veranderd wordt?*)
Live == WF_state(ToChange) /\ WF_state(ToStraight)

Spec == /\ Init
        /\ [][Next]_state
        (* /\ Live *)

----
THEOREM Spec => []TypeInvariant
====
