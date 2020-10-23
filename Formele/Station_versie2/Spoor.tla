---- MODULE Spoor ----
EXTENDS Naturals
VARIABLES bezet, trein

----

TypeInvariant == bezet \in {1,0}

Init == /\ bezet = 0
        /\ trein = "N"


treinOp == /\ bezet' = bezet + 1

treinWeg == /\ bezet' = bezet - 1

zetTrein(richting) == /\ trein' = richting

wegTrein == /\ trein' = "N" 

Next == \/ treinOp
        \/ treinWeg
        
        
Spec == /\ Init
        /\ [][Next]_<<bezet, trein>>
----        
THEOREM Spec => []TypeInvariant            
====
