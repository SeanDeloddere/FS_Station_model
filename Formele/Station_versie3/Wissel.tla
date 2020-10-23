---- MODULE Wissel ----
EXTENDS Naturals
VARIABLES bezet
----

TypeInvariant == /\ bezet \in {0,1}


Init == /\ bezet = 0


reserveer == bezet' = bezet + 1
vrij == bezet' = bezet - 1

              
----
====
