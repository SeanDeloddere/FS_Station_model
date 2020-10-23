---- MODULE Station_volledig ----
EXTENDS Naturals 

VARIABLES W01state, W02state, W03state, W04state, W05state, W06state, W07state, W08state, W09state, W10state, W11state, W12state,
          LAWkleur, LBWkleur, LCWkleur, LDWkleur, L1Ekleur, L2Ekleur, L3Ekleur, L4Ekleur, L1Wkleur, L2Wkleur, L3Wkleur, L4Wkleur, LFEkleur, LGEkleur,
          W01bezet, W02bezet, W03bezet, W04bezet, W05bezet, W06bezet, W07bezet, W08bezet, W09bezet, W10bezet, W11bezet, W12bezet,
          S1trein, S2trein, S3trein, S4trein, SCtrein, SDtrein, SFtrein, SGtrein,
          S1bezet, S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet,
          SAtrein, SBtrein, SAbezet, SBbezet

----
vars == <<W01state, W02state, W03state, W04state, W05state, W06state, W07state, W08state, W09state, W10state, W11state, W12state,
          LAWkleur, LBWkleur, LCWkleur, LDWkleur, L1Ekleur, L2Ekleur, L3Ekleur, L4Ekleur, L1Wkleur, L2Wkleur, L3Wkleur, L4Wkleur, LFEkleur, LGEkleur,
          W01bezet, W02bezet, W03bezet, W04bezet, W05bezet, W06bezet, W07bezet, W08bezet, W09bezet, W10bezet, W11bezet, W12bezet,
          S1trein, S2trein, S3trein, S4trein, SCtrein, SDtrein, SFtrein, SGtrein, SAtrein, SBtrein,
          S1bezet, S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, SAbezet, SBbezet>>
varState == << W01state, W02state, W03state, W04state, W05state, W06state, W07state, W08state, W09state, W10state, W11state, W12state>>
varKleur == << LAWkleur, LBWkleur, LCWkleur, LDWkleur, L1Ekleur, L2Ekleur, L3Ekleur, L4Ekleur, L1Wkleur, L2Wkleur, L3Wkleur, L4Wkleur, LFEkleur, LGEkleur>>
varWBezet == << W01bezet, W02bezet, W03bezet, W04bezet, W05bezet, W06bezet, W07bezet, W08bezet, W09bezet, W10bezet, W11bezet, W12bezet >>
varSTrein == << S1trein, S2trein, S3trein, S4trein, SCtrein, SDtrein, SFtrein, SGtrein >>
varSBezet == << S1bezet, S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet>>
varSvol == << SAtrein, SBtrein, SAbezet, SBbezet>>

W01 == INSTANCE Wissel WITH state <- W01state, bezet <- W01bezet
W02 == INSTANCE Wissel WITH state <- W02state, bezet <- W02bezet
W03 == INSTANCE Wissel WITH state <- W03state, bezet <- W03bezet
W04 == INSTANCE Wissel WITH state <- W04state, bezet <- W04bezet
W05 == INSTANCE Wissel WITH state <- W05state, bezet <- W05bezet
W06 == INSTANCE Wissel WITH state <- W06state, bezet <- W06bezet
W07 == INSTANCE Wissel WITH state <- W07state, bezet <- W07bezet
W08 == INSTANCE Wissel WITH state <- W08state, bezet <- W08bezet
W09 == INSTANCE Wissel WITH state <- W09state, bezet <- W09bezet
W10 == INSTANCE Wissel WITH state <- W10state, bezet <- W10bezet
W11 == INSTANCE Wissel WITH state <- W11state, bezet <- W11bezet
W12 == INSTANCE Wissel WITH state <- W12state, bezet <- W12bezet

LAW == INSTANCE Lichtsein WITH kleur <- LAWkleur
LBW == INSTANCE Lichtsein WITH kleur <- LBWkleur
LCW == INSTANCE Lichtsein WITH kleur <- LCWkleur
LDW == INSTANCE Lichtsein WITH kleur <- LDWkleur
L1E == INSTANCE Lichtsein WITH kleur <- L1Ekleur
L2E == INSTANCE Lichtsein WITH kleur <- L2Ekleur
L3E == INSTANCE Lichtsein WITH kleur <- L3Ekleur
L4E == INSTANCE Lichtsein WITH kleur <- L4Ekleur
L1W == INSTANCE Lichtsein WITH kleur <- L1Wkleur
L2W == INSTANCE Lichtsein WITH kleur <- L2Wkleur
L3W == INSTANCE Lichtsein WITH kleur <- L3Wkleur
L4W == INSTANCE Lichtsein WITH kleur <- L4Wkleur
LFE == INSTANCE Lichtsein WITH kleur <- LFEkleur
LGE == INSTANCE Lichtsein WITH kleur <- LGEkleur

S1 == INSTANCE Spoor WITH bezet <- S1bezet, trein <- S1trein
S2 == INSTANCE Spoor WITH bezet <- S2bezet, trein <- S2trein
S3 == INSTANCE Spoor WITH bezet <- S3bezet, trein <- S3trein
S4 == INSTANCE Spoor WITH bezet <- S4bezet, trein <- S4trein
SA == INSTANCE Spoor WITH bezet <- SAbezet, trein <- SAtrein
SB == INSTANCE Spoor WITH bezet <- SBbezet, trein <- SBtrein
SC == INSTANCE Spoor WITH bezet <- SCbezet, trein <- SCtrein
SD == INSTANCE Spoor WITH bezet <- SDbezet, trein <- SDtrein
SF == INSTANCE Spoor WITH bezet <- SFbezet, trein <- SFtrein
SG == INSTANCE Spoor WITH bezet <- SGbezet, trein <- SGtrein
----


InitWissel == /\ W01!Init
              /\ W02!Init
              /\ W03!Init
              /\ W04!Init
              /\ W05!Init
              /\ W06!Init
              /\ W07!Init
              /\ W08!Init
              /\ W09!Init
              /\ W10!Init
              /\ W11!Init
              /\ W12!Init
               
InitLicht == /\ LAW!Init
             /\ LBW!Init
             /\ LCW!Init
             /\ LDW!Init
             /\ L1E!Init
             /\ L2E!Init
             /\ L3E!Init
             /\ L4E!Init
             /\ L1W!Init
             /\ L2W!Init
             /\ L3W!Init
             /\ L4W!Init
             /\ LFE!Init
             /\ LGE!Init
   
InitSpoor ==  /\ SA!Init
              /\ SB!Init
              /\ SC!Init
              /\ SD!Init
              /\ SF!Init
              /\ SG!Init
              /\ S1!Init
              /\ S2!Init
              /\ S3!Init
              /\ S4!Init


Init == /\ InitWissel
        /\ InitLicht
        /\ InitSpoor



(*********************************RESERVEER+VRIJ*********************************)

Reserveer4(a, b, c, d) == /\ IF a = 1 \/ b = 1 \/ c = 1 \/ d = 1 THEN W01!reserveer ELSE TRUE
                          /\ IF a = 2 \/ b = 2 \/ c = 2 \/ d = 2 THEN W02!reserveer ELSE TRUE
                          /\ IF a = 3 \/ b = 3 \/ c = 3 \/ d = 3 THEN W03!reserveer ELSE TRUE
                          /\ IF a = 4 \/ b = 4 \/ c = 4 \/ d = 4 THEN W04!reserveer ELSE TRUE
                          /\ IF a = 5 \/ b = 5 \/ c = 5 \/ d = 5 THEN W05!reserveer ELSE TRUE
                          /\ IF a = 6 \/ b = 6 \/ c = 6 \/ d = 6 THEN W06!reserveer ELSE TRUE
                          /\ IF a = 7 \/ b = 7 \/ c = 7 \/ d = 7 THEN W07!reserveer ELSE TRUE
                          /\ IF a = 8 \/ b = 8 \/ c = 8 \/ d = 8 THEN W08!reserveer ELSE TRUE
                          /\ IF a = 9 \/ b = 9 \/ c = 9 \/ d = 9 THEN W09!reserveer ELSE TRUE
                          /\ IF a = 10 \/ b = 10 \/ c = 10 \/ d = 10 THEN W10!reserveer ELSE TRUE
                          /\ IF a = 11 \/ b = 11 \/ c = 11 \/ d = 11 THEN W11!reserveer ELSE TRUE
                          /\ IF a = 12 \/ b = 12 \/ c = 12 \/ d = 12 THEN W12!reserveer ELSE TRUE                      
                      
Reserveer3(a, b, c) == /\ IF a = 1 \/ b = 1 \/ c = 1 THEN W01!reserveer ELSE TRUE
                       /\ IF a = 2 \/ b = 2 \/ c = 2 THEN W02!reserveer ELSE TRUE
                       /\ IF a = 3 \/ b = 3 \/ c = 3 THEN W03!reserveer ELSE TRUE
                       /\ IF a = 4 \/ b = 4 \/ c = 4 THEN W04!reserveer ELSE TRUE
                       /\ IF a = 5 \/ b = 5 \/ c = 5 THEN W05!reserveer ELSE TRUE
                       /\ IF a = 6 \/ b = 6 \/ c = 6 THEN W06!reserveer ELSE TRUE
                       /\ IF a = 7 \/ b = 7 \/ c = 7 THEN W07!reserveer ELSE TRUE
                       /\ IF a = 8 \/ b = 8 \/ c = 8 THEN W08!reserveer ELSE TRUE
                       /\ IF a = 9 \/ b = 9 \/ c = 9 THEN W09!reserveer ELSE TRUE
                       /\ IF a = 10 \/ b = 10 \/ c = 10 THEN W10!reserveer ELSE TRUE
                       /\ IF a = 11 \/ b = 11 \/ c = 11 THEN W11!reserveer ELSE TRUE
                       /\ IF a = 12 \/ b = 12 \/ c = 12 THEN W12!reserveer ELSE TRUE                      
                      
Reserveer2(a, b) == /\ IF a = 1 \/ b = 1 THEN W01!reserveer ELSE TRUE
                    /\ IF a = 2 \/ b = 2 THEN W02!reserveer ELSE TRUE
                    /\ IF a = 3 \/ b = 3 THEN W03!reserveer ELSE TRUE
                    /\ IF a = 4 \/ b = 4 THEN W04!reserveer ELSE TRUE
                    /\ IF a = 5 \/ b = 5 THEN W05!reserveer ELSE TRUE
                    /\ IF a = 6 \/ b = 6 THEN W06!reserveer ELSE TRUE
                    /\ IF a = 7 \/ b = 7 THEN W07!reserveer ELSE TRUE
                    /\ IF a = 8 \/ b = 8 THEN W08!reserveer ELSE TRUE
                    /\ IF a = 9 \/ b = 9 THEN W09!reserveer ELSE TRUE
                    /\ IF a = 10 \/ b = 10 THEN W10!reserveer ELSE TRUE
                    /\ IF a = 11 \/ b = 11 THEN W11!reserveer ELSE TRUE
                    /\ IF a = 12 \/ b = 12 THEN W12!reserveer ELSE TRUE
                    
Reserveer1(a) == /\ IF a = 1 THEN W01!reserveer ELSE TRUE
                 /\ IF a = 2 THEN W02!reserveer ELSE TRUE
                 /\ IF a = 3 THEN W03!reserveer ELSE TRUE
                 /\ IF a = 4 THEN W04!reserveer ELSE TRUE
                 /\ IF a = 5 THEN W05!reserveer ELSE TRUE
                 /\ IF a = 6 THEN W06!reserveer ELSE TRUE
                 /\ IF a = 7 THEN W07!reserveer ELSE TRUE
                 /\ IF a = 8 THEN W08!reserveer ELSE TRUE
                 /\ IF a = 9 THEN W09!reserveer ELSE TRUE
                 /\ IF a = 10 THEN W10!reserveer ELSE TRUE
                 /\ IF a = 11 THEN W11!reserveer ELSE TRUE
                 /\ IF a = 12 THEN W12!reserveer ELSE TRUE
                 
Vrij4(a, b, c, d) == /\ IF a = 1 \/ b = 1 \/ c = 1 \/ d = 1 THEN W01!vrij ELSE TRUE
                     /\ IF a = 2 \/ b = 2 \/ c = 2 \/ d = 2 THEN W02!vrij ELSE TRUE
                     /\ IF a = 3 \/ b = 3 \/ c = 3 \/ d = 3 THEN W03!vrij ELSE TRUE
                     /\ IF a = 4 \/ b = 4 \/ c = 4 \/ d = 4 THEN W04!vrij ELSE TRUE
                     /\ IF a = 5 \/ b = 5 \/ c = 5 \/ d = 5 THEN W05!vrij ELSE TRUE
                     /\ IF a = 6 \/ b = 6 \/ c = 6 \/ d = 6 THEN W06!vrij ELSE TRUE
                     /\ IF a = 7 \/ b = 7 \/ c = 7 \/ d = 7 THEN W07!vrij ELSE TRUE
                     /\ IF a = 8 \/ b = 8 \/ c = 8 \/ d = 8 THEN W08!vrij ELSE TRUE
                     /\ IF a = 9 \/ b = 9 \/ c = 9 \/ d = 9 THEN W09!vrij ELSE TRUE
                     /\ IF a = 10 \/ b = 10 \/ c = 10 \/ d = 10 THEN W10!vrij ELSE TRUE
                     /\ IF a = 11 \/ b = 11 \/ c = 11 \/ d = 11 THEN W11!vrij ELSE TRUE
                     /\ IF a = 12 \/ b = 12 \/ c = 12 \/ d = 12 THEN W12!vrij ELSE TRUE                      
                      
Vrij3(a, b, c) == /\ IF a = 1 \/ b = 1 \/ c = 1 THEN W01!vrij ELSE TRUE
                  /\ IF a = 2 \/ b = 2 \/ c = 2 THEN W02!vrij ELSE TRUE
                  /\ IF a = 3 \/ b = 3 \/ c = 3 THEN W03!vrij ELSE TRUE
                  /\ IF a = 4 \/ b = 4 \/ c = 4 THEN W04!vrij ELSE TRUE
                  /\ IF a = 5 \/ b = 5 \/ c = 5 THEN W05!vrij ELSE TRUE
                  /\ IF a = 6 \/ b = 6 \/ c = 6 THEN W06!vrij ELSE TRUE
                  /\ IF a = 7 \/ b = 7 \/ c = 7 THEN W07!vrij ELSE TRUE
                  /\ IF a = 8 \/ b = 8 \/ c = 8 THEN W08!vrij ELSE TRUE
                  /\ IF a = 9 \/ b = 9 \/ c = 9 THEN W09!vrij ELSE TRUE
                  /\ IF a = 10 \/ b = 10 \/ c = 10 THEN W10!vrij ELSE TRUE
                  /\ IF a = 11 \/ b = 11 \/ c = 11 THEN W11!vrij ELSE TRUE
                  /\ IF a = 12 \/ b = 12 \/ c = 12 THEN W12!vrij ELSE TRUE
                 
                      
Vrij2(a, b) == /\ IF a = 1 \/ b = 1 THEN W01!vrij ELSE TRUE
               /\ IF a = 2 \/ b = 2 THEN W02!vrij ELSE TRUE
               /\ IF a = 3 \/ b = 3 THEN W03!vrij ELSE TRUE
               /\ IF a = 4 \/ b = 4 THEN W04!vrij ELSE TRUE
               /\ IF a = 5 \/ b = 5 THEN W05!vrij ELSE TRUE
               /\ IF a = 6 \/ b = 6 THEN W06!vrij ELSE TRUE
               /\ IF a = 7 \/ b = 7 THEN W07!vrij ELSE TRUE
               /\ IF a = 8 \/ b = 8 THEN W08!vrij ELSE TRUE
               /\ IF a = 9 \/ b = 9 THEN W09!vrij ELSE TRUE
               /\ IF a = 10 \/ b = 10 THEN W10!vrij ELSE TRUE
               /\ IF a = 11 \/ b = 11 THEN W11!vrij ELSE TRUE
               /\ IF a = 12 \/ b = 12 THEN W12!vrij ELSE TRUE
                    
Vrij1(a) == /\ IF a = 1 THEN W01!vrij ELSE TRUE
            /\ IF a = 2 THEN W02!vrij ELSE TRUE
            /\ IF a = 3 THEN W03!vrij ELSE TRUE
            /\ IF a = 4 THEN W04!vrij ELSE TRUE
            /\ IF a = 5 THEN W05!vrij ELSE TRUE
            /\ IF a = 6 THEN W06!vrij ELSE TRUE
            /\ IF a = 7 THEN W07!vrij ELSE TRUE
            /\ IF a = 8 THEN W08!vrij ELSE TRUE
            /\ IF a = 9 THEN W09!vrij ELSE TRUE
            /\ IF a = 10 THEN W10!vrij ELSE TRUE
            /\ IF a = 11 THEN W11!vrij ELSE TRUE
            /\ IF a = 12 THEN W12!vrij ELSE TRUE


(*********************************WISSELS*********************************)

change_W01 == /\ W01bezet = 0
              /\ \/ W01!ToStraight
                 \/ W01!ToChange
              /\ UNCHANGED <<varSvol, varKleur, varWBezet, varSTrein, varSBezet, W02state, W03state, W04state, W05state, W06state, W07state, W08state, W09state, W10state, W11state, W12state>>

change_W02 == /\ W02bezet = 0
              /\ \/ W02!ToStraight
                 \/ W02!ToChange
              /\ UNCHANGED <<varSvol, varKleur, varWBezet, varSTrein, varSBezet, W01state, W03state, W04state, W05state, W06state, W07state, W08state, W09state, W10state, W11state, W12state>>

change_W03 == /\ W03bezet = 0
              /\ \/ W03!ToStraight
                 \/ W03!ToChange
              /\ UNCHANGED <<varSvol, varKleur, varWBezet, varSTrein, varSBezet, W01state, W02state, W04state, W05state, W06state, W07state, W08state, W09state, W10state, W11state, W12state>>

change_W04 == /\ W04bezet = 0
              /\ \/ W04!ToStraight
                 \/ W04!ToChange
              /\ UNCHANGED <<varSvol, varKleur, varWBezet, varSTrein, varSBezet, W01state, W06state, W03state, W02state, W05state, W07state, W08state, W09state, W10state, W11state, W12state>>

change_W05 == /\ W05bezet = 0
              /\ \/ W05!ToStraight
                 \/ W05!ToChange
              /\ UNCHANGED <<varSvol, varKleur, varWBezet, varSTrein, varSBezet, W01state, W06state, W03state, W02state, W04state, W07state, W08state, W09state, W10state, W11state, W12state>>

change_W06 == /\ W06bezet = 0
              /\ \/ W06!ToStraight
                 \/ W06!ToChange
              /\ UNCHANGED <<varSvol, varKleur, varWBezet, varSTrein, varSBezet, W01state, W02state, W03state, W04state, W05state, W07state, W08state, W09state, W10state, W11state, W12state>>

change_W07 == /\ W07bezet = 0
              /\ \/ W07!ToStraight
                 \/ W07!ToChange
              /\ UNCHANGED <<varSvol, varKleur, varWBezet, varSTrein, varSBezet, W01state, W02state, W03state, W04state, W05state, W06state, W08state, W09state, W10state, W11state, W12state>>

change_W08 == /\ W08bezet = 0
              /\ \/ W08!ToStraight
                 \/ W08!ToChange
              /\ UNCHANGED <<varSvol, varKleur, varWBezet, varSTrein, varSBezet, W01state, W02state, W03state, W04state, W05state, W07state, W06state, W09state, W10state, W11state, W12state>>
              
change_W09 == /\ W09bezet = 0
              /\ \/ W09!ToStraight
                 \/ W09!ToChange
              /\ UNCHANGED <<varSvol, varKleur, varWBezet, varSTrein, varSBezet, W01state, W02state, W03state, W04state, W05state, W07state, W06state, W08state, W10state, W11state, W12state>>
              

change_W10 == /\ W10bezet = 0
              /\ \/ W10!ToStraight
                 \/ W10!ToChange
              /\ UNCHANGED <<varSvol, varKleur, varWBezet, varSTrein, varSBezet, W01state, W02state, W03state, W04state, W05state, W06state, W07state, W08state, W09state, W11state, W12state>>


change_W11 == /\ W11bezet = 0
              /\ \/ W11!ToStraight
                 \/ W11!ToChange
              /\ UNCHANGED <<varSvol, varKleur, varWBezet, varSTrein, varSBezet, W01state, W02state, W03state, W04state, W05state, W06state, W07state, W08state, W09state, W10state, W12state>>

change_W12 == /\ W12bezet = 0
              /\ \/ W12!ToStraight
                 \/ W12!ToChange
              /\ UNCHANGED <<varSvol, varKleur, varWBezet, varSTrein, varSBezet, W01state, W02state, W03state, W04state, W05state, W06state, W07state, W08state, W09state, W10state, W11state>>      
                



(*********************************ARRIVALS*********************************)

arrive_A == /\ SAtrein = "N"
            /\ SA!zetTrein("W")
            /\ SA!treinOp
            /\ UNCHANGED << varState, varKleur, varWBezet, S1bezet, S2bezet, S3bezet, S4bezet, SBbezet, SCbezet, SDbezet, SFbezet, SGbezet, S1trein, S2trein, S3trein, S4trein, SBtrein, SCtrein, SDtrein, SFtrein, SGtrein>>

arrive_B == /\ SBtrein = "N"
            /\ SB!zetTrein("W")
            /\ SB!treinOp
            /\ UNCHANGED << varState, varKleur, varWBezet, S1bezet, S2bezet, S3bezet, S4bezet, SAbezet, SCbezet, SDbezet, SFbezet, SGbezet, S1trein, S2trein, S3trein, S4trein, SAtrein, SCtrein, SDtrein, SFtrein, SGtrein>>

arrive_C == /\ SCtrein = "N"
            /\ SC!zetTrein("W")
            /\ SC!treinOp
            /\ UNCHANGED <<varSvol, varState, varKleur, varWBezet, S1bezet, S2bezet, S3bezet, S4bezet, SDbezet, SFbezet, SGbezet, S1trein, S2trein, S3trein, S4trein, SDtrein, SFtrein, SGtrein>>

arrive_D == /\ SDtrein = "N"
            /\ SD!zetTrein("W")
            /\ SD!treinOp
            /\ UNCHANGED <<varSvol, varState, varKleur, varWBezet, S1bezet, S2bezet, S3bezet, S4bezet, SCbezet, SFbezet, SGbezet, S1trein, S2trein, S3trein, S4trein, SCtrein, SFtrein, SGtrein>>

arrive_F == /\ SFtrein = "N"
            /\ SF!zetTrein("E")
            /\ SF!treinOp
            /\ UNCHANGED <<varSvol, varState, varKleur, varWBezet, S1bezet, S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SGbezet, S1trein, S2trein, S3trein, S4trein, SCtrein, SDtrein, SGtrein>>

arrive_G == /\ SGtrein = "N"
            /\ SG!zetTrein("E")
            /\ SG!treinOp
            /\ UNCHANGED <<varSvol, varState, varKleur, varWBezet, S1bezet, S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, S1trein, S2trein, S3trein, S4trein, SCtrein, SDtrein, SFtrein>>



(*****************************************EAST TO WEST*****************************************)

(*********************************ROUTES*********************************)

(*************************RIGHT SIDE*************************)


route_G1 == /\ W11state = "change"
            /\ W11bezet = 0
            /\ W12state = "change" 
            /\ W12bezet = 0
            /\ S4bezet = 0
            
route_G2 == /\ W11state = "change"
            /\ W11bezet = 0
            /\ W12state = "straight"
            /\ W12bezet = 0
            /\ S3bezet = 0

route_G3 == /\ W11state = "straight"
            /\ W11bezet = 0
            /\ S2bezet = 0
            
reserveer_G1 == /\ Reserveer2(11, 12)
                /\ S4!treinOp
                /\ UNCHANGED << S1bezet, S2bezet, S3bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet, W04bezet, W05bezet, W06bezet, W07bezet, W08bezet, W09bezet, W10bezet>>

reserveer_G2 == /\ Reserveer2(11, 12)
                /\ S3!treinOp
                /\ UNCHANGED << S1bezet, S2bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet, W04bezet, W05bezet, W06bezet, W07bezet, W08bezet, W09bezet, W10bezet>>

reserveer_G3 == /\ Reserveer1(11)
                /\ S2!treinOp
                /\ UNCHANGED << S1bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet, W04bezet, W05bezet, W06bezet, W07bezet, W08bezet, W09bezet, W10bezet, W12bezet>>

vrij_G1 == /\ Vrij2(11, 12)
           /\ UNCHANGED << W01bezet, W02bezet, W03bezet, W04bezet, W05bezet, W06bezet, W07bezet, W08bezet, W09bezet, W10bezet>>

vrij_G2 == /\ Vrij2(11, 12)
           /\ UNCHANGED << W01bezet, W02bezet, W03bezet, W04bezet, W05bezet, W06bezet, W07bezet, W08bezet, W09bezet, W10bezet>>

vrij_G3 == /\ Vrij1(11)
           /\ UNCHANGED << W01bezet, W02bezet, W03bezet, W04bezet, W05bezet, W06bezet, W07bezet, W08bezet, W09bezet, W10bezet, W12bezet>>
           
route_F1 == /\ W10state = "straight"
            /\ W10bezet = 0
            /\ S1bezet = 0
            
route_F2 == /\ W10state = "change"
            /\ W10bezet = 0
            /\ W11state = "change"
            /\ W11bezet = 0
            /\ S2bezet = 0

route_F3 == /\ W10state = "change"
            /\ W10bezet = 0
            /\ W11state = "straight"
            /\ W11bezet = 0
            /\ W12state = "straight"
            /\ W12bezet = 0
            /\ S3bezet = 0
            
route_F4 == /\ W10state = "change"
            /\ W10bezet = 0
            /\ W11state = "straight"
            /\ W11bezet = 0
            /\ W12state = "change"
            /\ W12bezet = 0
            /\ S4bezet = 0
            
reserveer_F1 == /\ Reserveer1(10)
                /\ S1!treinOp
                /\ UNCHANGED << S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet, W04bezet, W05bezet, W06bezet, W07bezet, W08bezet, W09bezet, W11bezet, W12bezet>>

reserveer_F2 == /\ Reserveer2(10, 11)
                /\ S2!treinOp
                /\ UNCHANGED << S1bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet, W04bezet, W05bezet, W06bezet, W07bezet, W08bezet, W09bezet, W12bezet>>

reserveer_F3 == /\ Reserveer3(10, 11, 12)
                /\ S3!treinOp
                /\ UNCHANGED << S1bezet, S2bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet, W04bezet, W05bezet, W06bezet, W07bezet, W08bezet, W09bezet>>
                
reserveer_F4 == /\ Reserveer3(10, 11, 12)
                /\ S4!treinOp
                /\ UNCHANGED << S1bezet, S2bezet, S3bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet, W04bezet, W05bezet, W06bezet, W07bezet, W08bezet, W09bezet>>


vrij_F1 == /\ Vrij1(10)
           /\ UNCHANGED << W01bezet, W02bezet, W03bezet, W04bezet, W05bezet, W06bezet, W07bezet, W08bezet, W09bezet, W11bezet, W12bezet>>

vrij_F2 == /\ Vrij2(10, 11)
           /\ UNCHANGED << W01bezet, W02bezet, W03bezet, W04bezet, W05bezet, W06bezet, W07bezet, W08bezet, W09bezet, W12bezet>>

vrij_F3 == /\ Vrij3(10, 11, 12)
           /\ UNCHANGED << W01bezet, W02bezet, W03bezet, W04bezet, W05bezet, W06bezet, W07bezet, W08bezet, W09bezet>>
           
vrij_F4 == /\ Vrij3(10, 11, 12)
           /\ UNCHANGED << W01bezet, W02bezet, W03bezet, W04bezet, W05bezet, W06bezet, W07bezet, W08bezet, W09bezet>>

   
(*************************LEFT SIDE*************************)
   
route_1A == /\ W01state = "straight"
            /\ W01bezet = 0
            /\ W02state = "straight"
            /\ W02bezet = 0
               

route_2A == /\ W01state = "change"
            /\ W01bezet = 0
            /\ W04state = "straight"
            /\ W04bezet = 0
            /\ W03state = "change"
            /\ W03bezet = 0

route_3A == /\ W01state = "change"
            /\ W01bezet = 0
            /\ W03state = "straight"
            /\ W03bezet = 0
            /\ W05state = "change"
            /\ W05bezet = 0
            /\ W06state = "straight"
            /\ W06bezet = 0
            /\ W07state = "straight"
            /\ W07bezet = 0
            
route_4A == /\ W01state = "change"
            /\ W01bezet = 0
            /\ W03state = "straight"
            /\ W03bezet = 0
            /\ W05state = "change"
            /\ W05bezet = 0
            /\ W06state = "straight"
            /\ W06bezet = 0
            /\ W07state = "change"
            /\ W07bezet = 0
            /\ W09state = "change"
            /\ W09bezet = 0
            



route_1B == /\ W02state = "change"
            /\ W02bezet = 0
            /\ W04state = "change"
            /\ W04bezet = 0
            /\ W03state = "straight"
            /\ W03bezet = 0
                

route_2B == /\ W04state = "straight"
            /\ W04bezet = 0
            /\ W03state = "straight"
            /\ W03bezet = 0

route_3B == /\ W03state = "change"
            /\ W03bezet = 0
            /\ W05state = "change"
            /\ W05bezet = 0
            /\ W06state = "straight"
            /\ W06bezet = 0
            /\ W07state = "straight"
            /\ W07bezet = 0
                

route_4B == /\ W03state = "change"
            /\ W03bezet = 0
            /\ W05state = "change"
            /\ W05bezet = 0
            /\ W06state = "straight"
            /\ W06bezet = 0
            /\ W07state = "change"
            /\ W07bezet = 0
            /\ W09state = "change"
            /\ W09bezet = 0
                

route_1D == /\ W02state = "change"
            /\ W02bezet = 0
            /\ W04state = "change"
            /\ W04bezet = 0
            /\ W06state = "straight"
            /\ W06bezet = 0
            /\ W08state = "change"
            /\ W08bezet = 0
            
route_2D == /\ W04state = "straight"
            /\ W04bezet = 0
            /\ W06state = "straight"
            /\ W06bezet = 0
            /\ W08state = "change"
            /\ W08bezet = 0    

route_3D == /\ W07state = "straight"
            /\ W07bezet = 0
            /\ W06state = "change"
            /\ W06bezet = 0
            /\ W08state = "change"
            /\ W08bezet = 0
            
route_4D == /\ W09state = "straight"
            /\ W09bezet = 0
            /\ W08state = "straight"
            /\ W08bezet = 0
            

reserveer_1A == /\ Reserveer2(1, 2)
                /\ UNCHANGED << S1bezet, S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W03bezet, W04bezet, W05bezet, W06bezet, W07bezet, W08bezet, W09bezet, W10bezet, W11bezet, W12bezet >>

reserveer_2A == /\ Reserveer3(1, 3, 4)
                /\ UNCHANGED << S1bezet, S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W02bezet, W05bezet, W06bezet, W07bezet, W08bezet, W09bezet, W10bezet, W11bezet, W12bezet >>

reserveer_3A == /\ Reserveer4(1, 3, 5, 6)
                /\ W07!reserveer
                /\ UNCHANGED << S1bezet, S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W02bezet, W04bezet, W08bezet, W09bezet, W10bezet, W11bezet, W12bezet >>

reserveer_4A == /\ Reserveer4(1, 3, 5, 6)
                /\ W07!reserveer
                /\ W09!reserveer
                /\ UNCHANGED << S1bezet, S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W02bezet, W04bezet, W08bezet, W10bezet, W11bezet, W12bezet >>

reserveer_1B == /\ Reserveer3(2, 3, 4)
                /\ UNCHANGED << S1bezet, S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W05bezet, W06bezet, W07bezet, W08bezet, W09bezet, W10bezet, W11bezet, W12bezet >>
                
reserveer_2B == /\ Reserveer2(3, 4)
                /\ UNCHANGED << S1bezet, S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W02bezet, W01bezet, W05bezet, W06bezet, W07bezet, W08bezet, W09bezet, W10bezet, W11bezet, W12bezet >>

reserveer_3B == /\ Reserveer4(3, 5, 6, 7)
                /\ UNCHANGED << S1bezet, S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W02bezet, W01bezet, W04bezet, W08bezet, W09bezet, W10bezet, W11bezet, W12bezet >>

reserveer_4B == /\ Reserveer4(3, 5, 6, 7)
                /\ W09!reserveer
                /\ UNCHANGED << S1bezet, S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W02bezet, W01bezet, W04bezet, W08bezet, W10bezet, W11bezet, W12bezet >>

reserveer_1D == /\ Reserveer4(2, 4, 6, 8)
                /\ UNCHANGED << S1bezet, S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W03bezet, W05bezet, W07bezet, W09bezet, W10bezet, W11bezet, W12bezet >>
         
reserveer_2D == /\ Reserveer3(4, 6, 8)
                /\ UNCHANGED << S1bezet, S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet, W05bezet, W07bezet, W09bezet, W10bezet, W11bezet, W12bezet >>
     
reserveer_3D == /\ Reserveer3(6, 7, 8)
                /\ UNCHANGED << S1bezet, S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet,W04bezet, W05bezet, W09bezet, W10bezet, W11bezet, W12bezet >>

reserveer_4D == /\ Reserveer2(8, 9)
                /\ UNCHANGED << S1bezet, S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet,W04bezet, W05bezet, W06bezet, W07bezet, W10bezet, W11bezet, W12bezet >>

vrij_1A == /\ Vrij2(1, 2)
           /\ S1!treinWeg
           /\ UNCHANGED << S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W03bezet, W04bezet, W05bezet, W06bezet, W07bezet, W08bezet, W09bezet, W10bezet, W11bezet, W12bezet>>

vrij_2A == /\ Vrij3(1, 3, 4)
           /\ S2!treinWeg
           /\ UNCHANGED << S1bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W02bezet, W05bezet, W06bezet, W07bezet, W08bezet, W09bezet, W10bezet, W11bezet, W12bezet>>

vrij_3A == /\ Vrij4(1, 3, 5, 6)
           /\ W07!vrij
           /\ S3!treinWeg
           /\ UNCHANGED << S1bezet, S2bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W02bezet, W04bezet, W08bezet, W09bezet, W10bezet, W11bezet, W12bezet>>

vrij_4A == /\ Vrij4(1, 3, 5, 6)
           /\ W07!vrij
           /\ W09!vrij
           /\ S4!treinWeg
           /\ UNCHANGED << S1bezet, S2bezet, S3bezet, SCbezet, SDbezet, SFbezet, SGbezet, W02bezet, W04bezet, W08bezet, W10bezet, W11bezet, W12bezet>>

vrij_1B == /\ Vrij3(2, 3, 4)
           /\ S1!treinWeg
           /\ UNCHANGED << S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W06bezet, W08bezet, W05bezet, W07bezet, W09bezet, W10bezet, W11bezet, W12bezet >>

vrij_2B == /\ Vrij2(3, 4)
           /\ S2!treinWeg
           /\ UNCHANGED << S1bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W06bezet, W08bezet, W05bezet, W07bezet, W09bezet, W10bezet, W11bezet, W12bezet >>

vrij_3B == /\ Vrij4(3, 5, 6, 7)
           /\ S3!treinWeg
           /\ UNCHANGED << S1bezet, S2bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W02bezet, W01bezet, W04bezet, W08bezet, W09bezet, W10bezet, W11bezet, W12bezet >>

vrij_4B == /\ Vrij4(3, 5, 6, 7)
           /\ W09!vrij
           /\ S4!treinWeg
           /\ UNCHANGED << S1bezet, S2bezet, S3bezet, SCbezet, SDbezet, SFbezet, SGbezet, W02bezet, W01bezet, W04bezet, W08bezet, W10bezet, W11bezet, W12bezet >>

vrij_1D == /\ Vrij4(2, 4, 6, 8)
           /\ S1!treinWeg
           /\ UNCHANGED << S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W03bezet, W05bezet, W07bezet, W09bezet, W10bezet, W11bezet, W12bezet >>

vrij_2D == /\ Vrij3(4, 6, 8)
           /\ S2!treinWeg
           /\ UNCHANGED << S1bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet, W05bezet, W07bezet, W09bezet, W10bezet, W11bezet, W12bezet >>

vrij_3D == /\ Vrij3(6, 7, 8)
           /\ S3!treinWeg
           /\ UNCHANGED << S1bezet, S2bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet,W04bezet, W05bezet, W09bezet, W10bezet, W11bezet, W12bezet >>

vrij_4D == /\ Vrij2(8, 9)
           /\ S4!treinWeg
           /\ UNCHANGED << S1bezet, S2bezet, S3bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet,W04bezet, W05bezet, W06bezet, W07bezet, W10bezet, W11bezet, W12bezet >>
       
route_1C == /\ W02state = "change"
            /\ W02bezet = 0
            /\ W04state = "change"
            /\ W04bezet = 0
            /\ W05state = "straight"
            /\ W05bezet = 0
            /\ W06state = "change"
            /\ W06bezet = 0
            
route_2C == /\ W04state = "straight"
            /\ W04bezet = 0
            /\ W05state = "straight"
            /\ W05bezet = 0
            /\ W06state = "change"
            /\ W06bezet = 0
            
route_3C == /\ W07state = "straight"
            /\ W07bezet = 0
            /\ W05state = "straight"
            /\ W05bezet = 0
            /\ W06state = "straight"
            /\ W06bezet = 0
            
route_4C == /\ W09state = "change"
            /\ W09bezet = 0
            /\ W07state = "change"
            /\ W07bezet = 0
            /\ W06state = "straight"
            /\ W06bezet = 0
            /\ W05state = "straight"
            /\ W05bezet = 0
            


reserveer_1C == /\ Reserveer4(2, 4, 5, 6)
                /\ UNCHANGED << S1bezet, S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W03bezet,W11bezet, W12bezet, W07bezet, W09bezet, W08bezet, W10bezet >>

reserveer_2C == /\ Reserveer3(4, 5, 6)
                /\ UNCHANGED << S1bezet, S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet,W11bezet, W12bezet, W07bezet, W09bezet, W08bezet, W10bezet >>

reserveer_3C == /\ Reserveer3(5, 6, 7)
                /\ UNCHANGED << S1bezet, S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet,W04bezet, W11bezet, W09bezet, W08bezet, W10bezet, W12bezet >>
  
reserveer_4C == /\ Reserveer4(5, 6, 7, 9)
                /\ UNCHANGED << S1bezet, S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet,W04bezet, W11bezet, W08bezet, W10bezet, W12bezet >>
  
vrij_1C == /\ Vrij4(2, 4, 5, 6)
           /\ S1!treinWeg
           /\ UNCHANGED << S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W03bezet,W11bezet, W12bezet, W07bezet, W09bezet, W08bezet, W10bezet >>

vrij_2C == /\ Vrij3(4, 5, 6)
           /\ S2!treinWeg
           /\ UNCHANGED << S1bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet,W11bezet, W12bezet, W07bezet, W09bezet, W08bezet, W10bezet >>

vrij_3C == /\ Vrij3(5, 6, 7)
           /\ S3!treinWeg
           /\ UNCHANGED << S1bezet, S2bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet,W04bezet, W11bezet, W09bezet, W08bezet, W10bezet, W12bezet >>
           
vrij_4C == /\ Vrij4(5, 6, 7, 9)
           /\ S4!treinWeg
           /\ UNCHANGED << S1bezet, S2bezet, S3bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet,W04bezet, W11bezet, W08bezet, W10bezet, W12bezet >>
           
                      



(*********************************LICHTEN*********************************)

(****************************RIGHT SIDE****************************)

LGE_groen == /\ SGtrein = "E"
             /\ \/ /\ route_G1
                   /\ reserveer_G1
                   /\ SG!zetTrein("4")
                \/ /\ route_G2
                   /\ reserveer_G2
                   /\ SG!zetTrein("3")
                \/ /\ route_G3
                   /\ reserveer_G3
                   /\ SG!zetTrein("2")
             /\ LGE!lichtGroen
             /\ UNCHANGED <<varSvol, LAWkleur, LBWkleur, LCWkleur, LDWkleur, L1Ekleur, L2Ekleur, L3Ekleur, L4Ekleur, L1Wkleur, L2Wkleur, L3Wkleur, L4Wkleur, LFEkleur, varState, S1trein, S2trein, S3trein, S4trein,SCtrein, SDtrein, SFtrein>>

             
LGE_vertrek == /\ LGEkleur # "rood"
               /\ \/ /\ SGtrein = "4"
                     /\ vrij_G1
                     /\ S4!zetTrein("E")
                     /\ UNCHANGED <<S1trein, S2trein, S3trein, SCtrein, SDtrein, SFtrein>>
                  \/ /\ SGtrein = "3"
                     /\ vrij_G2
                     /\ S3!zetTrein("E")
                     /\ UNCHANGED <<S1trein, S2trein, S4trein, SCtrein, SDtrein, SFtrein>>
                  \/ /\ SGtrein = "2"
                     /\ vrij_G3
                     /\ S2!zetTrein("E")
                     /\ UNCHANGED <<S1trein, S3trein, S4trein, SCtrein, SDtrein, SFtrein>>
               /\ LGE!lichtRood
               /\ SG!zetTrein("N")
               /\ SG!treinWeg
               /\ UNCHANGED << varSvol, LAWkleur, LBWkleur, LCWkleur, LDWkleur, L1Ekleur, L2Ekleur, L3Ekleur, L4Ekleur, L1Wkleur, L2Wkleur, L3Wkleur, L4Wkleur, LFEkleur, S1bezet, S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, varState>>

LFE_groen == /\ SFtrein = "E"
             /\ \/ /\ route_F1
                   /\ reserveer_F1
                   /\ SF!zetTrein("1")
                \/ /\ route_F2
                   /\ reserveer_F2
                   /\ SF!zetTrein("2")
                \/ /\ route_F3
                   /\ reserveer_F3
                   /\ SF!zetTrein("3")
                \/ /\ route_F4
                   /\ reserveer_F4
                   /\ SF!zetTrein("4")
             /\ LFE!lichtGroen
             /\ UNCHANGED << varSvol, LAWkleur, LBWkleur, LCWkleur, LDWkleur, L1Ekleur, L2Ekleur, L3Ekleur, L4Ekleur, L1Wkleur, L2Wkleur, L3Wkleur, L4Wkleur, LGEkleur, varState, S1trein, S2trein, S3trein, S4trein,SCtrein, SDtrein, SGtrein>>

             
LFE_vertrek == /\ LFEkleur # "rood"
               /\ \/ /\ SFtrein = "1"
                     /\ vrij_F1
                     /\ S1!zetTrein("E")
                     /\ UNCHANGED <<S2trein, S3trein, S4trein, SCtrein, SDtrein, SGtrein>>
                  \/ /\ SFtrein = "2"
                     /\ vrij_F2
                     /\ S2!zetTrein("E")
                     /\ UNCHANGED <<S1trein, S3trein, S4trein, SCtrein, SDtrein, SGtrein>>
                  \/ /\ SFtrein = "3"
                     /\ vrij_F3
                     /\ S3!zetTrein("E")
                     /\ UNCHANGED <<S1trein, S2trein, S4trein, SCtrein, SDtrein, SGtrein>>
                  \/ /\ SFtrein = "4"
                     /\ vrij_F4
                     /\ S4!zetTrein("E")
                     /\ UNCHANGED <<S1trein, S2trein, S3trein, SCtrein, SDtrein, SGtrein>>
               /\ LFE!lichtRood
               /\ SF!zetTrein("N")
               /\ SF!treinWeg
               /\ UNCHANGED << varSvol, LAWkleur, LBWkleur, LCWkleur, LDWkleur, L1Ekleur, L2Ekleur, L3Ekleur, L4Ekleur, L1Wkleur, L2Wkleur, L3Wkleur, L4Wkleur, LGEkleur, S1bezet, S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SGbezet, varState>>



(****************************LEFT SIDE****************************)
 
L4E_groen == /\ S4trein = "E"
             /\ \/ /\ route_4D
                   /\ reserveer_4D
                   /\ S4!zetTrein("D")
                \/ /\ route_4C
                   /\ reserveer_4C
                   /\ S4!zetTrein("C")
                \/ /\ route_4B
                   /\ reserveer_4B
                   /\ S4!zetTrein("B")
                \/ /\ route_4A
                   /\ reserveer_4A
                   /\ S4!zetTrein("A")
             /\ L4E!lichtGroen
             /\ UNCHANGED << varSvol, LAWkleur, LBWkleur, LCWkleur, LDWkleur, L1Ekleur, L2Ekleur, L3Ekleur, L1Wkleur, L2Wkleur, L3Wkleur, L4Wkleur, LFEkleur, LGEkleur, varState, S1trein, S2trein, S3trein, SCtrein, SDtrein, SFtrein, SGtrein>>

L4E_vertrek == /\ L4Ekleur # "rood"
               /\ \/ /\ S4trein = "D"
                     /\ vrij_4D
                  \/ /\ S4trein = "C"
                     /\ vrij_4C
                  \/ /\ S4trein = "B"
                     /\ vrij_4B
                  \/ /\ S4trein = "A"
                     /\ vrij_4A
               /\ S4!zetTrein("N")
               /\ L4E!lichtRood
               /\ UNCHANGED << varSvol, varState, LAWkleur, LBWkleur, LCWkleur, LDWkleur, L1Ekleur, L2Ekleur, L3Ekleur, L1Wkleur, L2Wkleur, L3Wkleur, L4Wkleur, LFEkleur, LGEkleur, S2trein, S3trein, S1trein, SCtrein, SDtrein, SFtrein, SGtrein >>

L3E_groen == /\ S3trein = "E"
             /\ \/ /\ route_3D
                   /\ reserveer_3D
                   /\ S3!zetTrein("D")
                \/ /\ route_3C
                   /\ reserveer_3C
                   /\ S3!zetTrein("C")
                \/ /\ route_3B
                   /\ reserveer_3B
                   /\ S3!zetTrein("B")
                \/ /\ route_3A
                   /\ reserveer_3A
                   /\ S3!zetTrein("A")
             /\ L3E!lichtGroen
             /\ UNCHANGED << varSvol, LAWkleur, LBWkleur, LCWkleur, LDWkleur, L1Ekleur, L2Ekleur, L2Wkleur, L4Ekleur, L1Wkleur, L3Wkleur, L4Wkleur, LFEkleur, LGEkleur, varState, S1trein, S2trein, S4trein, SCtrein, SDtrein, SFtrein, SGtrein>>

L3E_vertrek == /\ L3Ekleur # "rood"
               /\ \/ /\ S3trein = "D"
                     /\ vrij_3D
                  \/ /\ S3trein = "C"
                     /\ vrij_3C
                  \/ /\ S3trein = "B"
                     /\ vrij_3B
                  \/ /\ S3trein = "A"
                     /\ vrij_3A
               /\ S3!zetTrein("N")
               /\ L3E!lichtRood
               /\ UNCHANGED << varSvol, varState, LAWkleur, LBWkleur, LCWkleur, LDWkleur, L1Ekleur, L2Ekleur, L2Wkleur, L4Ekleur, L1Wkleur, L3Wkleur, L4Wkleur, LFEkleur, LGEkleur, S1trein, S2trein, S4trein, SCtrein, SDtrein, SFtrein, SGtrein >>

L2E_groen == /\ S2trein = "E"
             /\ \/ /\ route_2D
                   /\ reserveer_2D
                   /\ S2!zetTrein("D")
                \/ /\ route_2C
                   /\ reserveer_2C
                   /\ S2!zetTrein("C")
                \/ /\ route_2B
                   /\ reserveer_2B
                   /\ S2!zetTrein("B")
                \/ /\ route_2A
                   /\ reserveer_2A
                   /\ S2!zetTrein("A")
             /\ L2E!lichtGroen
             /\ UNCHANGED << varSvol, LAWkleur, LBWkleur, LCWkleur, LDWkleur, L1Ekleur, L3Wkleur, L3Ekleur, L4Ekleur, L1Wkleur, L2Wkleur, L4Wkleur, LFEkleur, LGEkleur, varState, S1trein, S3trein, S4trein, SCtrein, SDtrein, SFtrein, SGtrein>>

L2E_vertrek == /\ L2Ekleur # "rood"
               /\ \/ /\ S2trein = "D"
                     /\ vrij_2D
                  \/ /\ S2trein = "C"
                     /\ vrij_2C
                  \/ /\ S2trein = "B"
                     /\ vrij_2B
                  \/ /\ S2trein = "A"
                     /\ vrij_2A
               /\ S2!zetTrein("N")
               /\ L2E!lichtRood
               /\ UNCHANGED << varSvol, varState, LAWkleur, LBWkleur, LCWkleur, LDWkleur, L1Ekleur, L3Wkleur, L3Ekleur, L4Ekleur, L1Wkleur, L2Wkleur, L4Wkleur, LFEkleur, LGEkleur, S1trein, S3trein, S4trein, SCtrein, SDtrein, SFtrein, SGtrein >>

L1E_groen == /\ S1trein = "E"
             /\ \/ /\ route_1D
                   /\ reserveer_1D
                   /\ S1!zetTrein("D")
                \/ /\ route_1C
                   /\ reserveer_1C
                   /\ S1!zetTrein("C")
                \/ /\ route_1B
                   /\ reserveer_1B
                   /\ S1!zetTrein("B")
                \/ /\ route_1A
                   /\ reserveer_1A
                   /\ S1!zetTrein("A")
             /\ L1E!lichtGroen
             /\ UNCHANGED << varSvol, LAWkleur, LBWkleur, LCWkleur, LDWkleur, L4Wkleur, L2Ekleur, L3Ekleur, L4Ekleur, L1Wkleur, L2Wkleur, L3Wkleur, LFEkleur, LGEkleur, varState, S4trein, S2trein, S3trein, SCtrein, SDtrein, SFtrein, SGtrein>>

L1E_vertrek == /\ L1Ekleur # "rood"
               /\ \/ /\ S1trein = "D"
                     /\ vrij_1D
                  \/ /\ S1trein = "C"
                     /\ vrij_1C
                  \/ /\ S1trein = "B"
                     /\ vrij_1B
                  \/ /\ S1trein = "A"
                     /\ vrij_1A
               /\ S1!zetTrein("N")
               /\ L1E!lichtRood
               /\ UNCHANGED << varSvol, varState, LAWkleur, LBWkleur, LCWkleur, LDWkleur, L4Wkleur, L2Ekleur, L3Ekleur, L4Ekleur, L1Wkleur, L2Wkleur, L3Wkleur, LFEkleur, LGEkleur, S4trein, S2trein, S3trein, SCtrein, SDtrein, SFtrein, SGtrein >>


(*****************************************WEST TO EAST*****************************************)

(*********************************LEFT SIDE*********************************)

(*************************ROUTES*************************)

route_A1 == /\ W01state = "straight"
            /\ W01bezet = 0
            /\ W02state = "straight"
            /\ W02bezet = 0
            /\ S1bezet = 0

reserveer_A1 == /\ W01!reserveer
                /\ W02!reserveer
                /\ S1!treinOp
                /\ UNCHANGED << S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W04bezet, W06bezet, W03bezet, W05bezet, W07bezet, W08bezet, W09bezet, W10bezet, W11bezet, W12bezet >>

vrij_A1 == /\ W01!vrij
           /\ W02!vrij
           /\ UNCHANGED << W04bezet, W06bezet, W03bezet, W05bezet, W07bezet, W08bezet, W09bezet, W10bezet, W11bezet, W12bezet >>

route_A2 == /\ W01state = "change"
            /\ W01bezet = 0
            /\ W04state = "straight"
            /\ W04bezet = 0
            /\ W03state = "change"
            /\ W03bezet = 0
            /\ S2bezet = 0

reserveer_A2 == /\ Reserveer3(1, 3, 4)
                /\ S2!treinOp
                /\ UNCHANGED << S1bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W02bezet, W05bezet, W06bezet, W07bezet, W08bezet, W09bezet, W10bezet, W11bezet, W12bezet >>

vrij_A2 == /\ Vrij3(1, 3, 4)
           /\ UNCHANGED << W02bezet, W05bezet, W06bezet, W07bezet, W08bezet, W09bezet, W10bezet, W11bezet, W12bezet>>

route_A3 == /\ W01state = "change"
            /\ W01bezet = 0
            /\ W03state = "straight"
            /\ W03bezet = 0
            /\ W05state = "change"
            /\ W05bezet = 0
            /\ W06state = "straight"
            /\ W06bezet = 0
            /\ W07state = "straight"
            /\ W07bezet = 0
            /\ S3bezet = 0
            

reserveer_A3 == /\ Reserveer4(1, 3, 5, 6)
                /\ W07!reserveer
                /\ S3!treinOp
                /\ UNCHANGED << S1bezet, S2bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W02bezet, W04bezet, W08bezet, W09bezet, W10bezet, W11bezet, W12bezet >>

vrij_A3 == /\ Vrij4(1, 3, 5, 6)
           /\ W07!vrij
           /\ UNCHANGED << W02bezet, W04bezet, W08bezet, W09bezet, W10bezet, W11bezet, W12bezet>>

route_A4 == /\ W01state = "change"
            /\ W01bezet = 0
            /\ W03state = "straight"
            /\ W03bezet = 0
            /\ W05state = "change"
            /\ W05bezet = 0
            /\ W06state = "straight"
            /\ W06bezet = 0
            /\ W07state = "change"
            /\ W07bezet = 0
            /\ W09state = "change"
            /\ W09bezet = 0
            /\ S4bezet = 0
            

reserveer_A4 == /\ Reserveer4(1, 3, 5, 6)
                /\ W07!reserveer
                /\ W09!reserveer
                /\ S4!treinOp
                /\ UNCHANGED << S1bezet, S2bezet, S3bezet, SCbezet, SDbezet, SFbezet, SGbezet, W02bezet, W04bezet, W08bezet, W10bezet, W11bezet, W12bezet >>

vrij_A4 == /\ Vrij4(1, 3, 5, 6)
           /\ W07!vrij
           /\ W09!vrij
           /\ UNCHANGED << W02bezet, W04bezet, W08bezet, W10bezet, W11bezet, W12bezet>>

route_B1 == /\ W02state = "change"
            /\ W02bezet = 0
            /\ W04state = "change"
            /\ W04bezet = 0
            /\ W03state = "straight"
            /\ W03bezet = 0
            /\ S1bezet = 0

reserveer_B1 == /\ W04!reserveer
                /\ W02!reserveer
                /\ W03!reserveer
                /\ S1!treinOp
                /\ UNCHANGED << S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W06bezet, W05bezet, W07bezet, W08bezet, W09bezet, W10bezet, W11bezet, W12bezet >>

vrij_B1 == /\ W04!vrij
           /\ W02!vrij
           /\ W03!vrij
           /\ UNCHANGED << W01bezet, W06bezet, W05bezet, W07bezet, W08bezet, W09bezet, W10bezet, W11bezet, W12bezet >>

route_B2 == /\ W04state = "straight"
            /\ W04bezet = 0
            /\ W03state = "straight"
            /\ W03bezet = 0
            /\ S2bezet = 0

reserveer_B2 == /\ W04!reserveer
                /\ W03!reserveer
                /\ S2!treinOp
                /\ UNCHANGED << S1bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W06bezet, W05bezet, W07bezet, W08bezet, W09bezet, W10bezet, W11bezet, W12bezet >>

vrij_B2 == /\ W04!vrij
           /\ W03!vrij
           /\ UNCHANGED << W01bezet, W02bezet, W06bezet, W05bezet, W07bezet, W08bezet, W09bezet, W10bezet, W11bezet, W12bezet >>

route_B3 == /\ W03state = "change"
            /\ W03bezet = 0
            /\ W05state = "change"
            /\ W05bezet = 0
            /\ W06state = "straight"
            /\ W06bezet = 0
            /\ W07state = "straight"
            /\ W07bezet = 0
            /\ S3bezet = 0

reserveer_B3 == /\ Reserveer4(3, 5, 6, 7)
                /\ S3!treinOp
                /\ UNCHANGED << S1bezet, S2bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W02bezet, W01bezet, W04bezet, W08bezet, W09bezet, W10bezet, W11bezet, W12bezet >>

vrij_B3 == /\ Vrij4(3, 5, 6, 7)
           /\ UNCHANGED <<W02bezet, W01bezet, W04bezet, W08bezet, W09bezet, W10bezet, W11bezet, W12bezet >>

route_B4 == /\ W03state = "change"
            /\ W03bezet = 0
            /\ W05state = "change"
            /\ W05bezet = 0
            /\ W06state = "straight"
            /\ W06bezet = 0
            /\ W07state = "change"
            /\ W07bezet = 0
            /\ W09state = "change"
            /\ W09bezet = 0
            /\ S4bezet = 0
                

reserveer_B4 == /\ Reserveer4(3, 5, 6, 7)
                /\ W09!reserveer
                /\ S4!treinOp
                /\ UNCHANGED << S1bezet, S2bezet, S3bezet, SCbezet, SDbezet, SFbezet, SGbezet, W02bezet, W01bezet, W04bezet, W08bezet, W10bezet, W11bezet, W12bezet >>

vrij_B4 == /\ Vrij4(3, 5, 6, 7)
           /\ W09!vrij
           /\ UNCHANGED << W02bezet, W01bezet, W04bezet, W08bezet, W10bezet, W11bezet, W12bezet >>

route_C1 == /\ W06state = "change"
            /\ W06bezet = 0
            /\ W05state = "straight"
            /\ W05bezet = 0
            /\ W04state = "change" 
            /\ W04bezet = 0
            /\ W02state = "change" 
            /\ W02bezet = 0
            /\ S1bezet = 0

reserveer_C1 == /\ W06!reserveer
                /\ W05!reserveer
                /\ W04!reserveer
                /\ W02!reserveer
                /\ S1!treinOp
                /\ UNCHANGED << S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W03bezet, W07bezet, W08bezet, W09bezet, W10bezet, W11bezet, W12bezet >>

vrij_C1 == /\ W06!vrij
           /\ W05!vrij
           /\ W04!vrij
           /\ W02!vrij
           /\ UNCHANGED << W01bezet, W03bezet, W07bezet, W08bezet, W09bezet, W10bezet, W11bezet, W12bezet >>

route_C2 == /\ W06state = "change"
            /\ W06bezet = 0
            /\ W05state = "straight"
            /\ W05bezet = 0
            /\ W04state = "straight"
            /\ W04bezet = 0
            /\ S2bezet = 0
            
reserveer_C2 == /\ W06!reserveer
                /\ W05!reserveer
                /\ W04!reserveer
                /\ S2!treinOp
                /\ UNCHANGED << S1bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet, W07bezet, W08bezet, W09bezet, W10bezet, W11bezet, W12bezet >>

vrij_C2 == /\ W06!vrij
           /\ W05!vrij
           /\ W04!vrij
           /\ UNCHANGED << W01bezet, W02bezet, W03bezet, W07bezet, W08bezet, W09bezet, W10bezet, W11bezet, W12bezet >>


route_C3 == /\ W05state = "straight"
            /\ W05bezet = 0
            /\ W06state = "straight"
            /\ W06bezet = 0
            /\ W07state = "straight"
            /\ W07bezet = 0
            /\ S3bezet = 0
            
reserveer_C3 == /\ W05!reserveer
                /\ W06!reserveer
                /\ W07!reserveer
                /\ S3!treinOp
                /\ UNCHANGED << S1bezet, S2bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet, W04bezet, W08bezet, W09bezet, W10bezet, W11bezet, W12bezet >>
                
vrij_C3 == /\ W05!vrij
           /\ W06!vrij
           /\ W07!vrij
           /\ UNCHANGED << W01bezet, W02bezet, W03bezet, W04bezet, W08bezet, W09bezet, W10bezet, W11bezet, W12bezet >>

route_C4 == /\ W05state = "straight"
            /\ W05bezet = 0
            /\ W06state = "straight"
            /\ W06bezet = 0
            /\ W07state = "change"
            /\ W07bezet = 0
            /\ W09state = "change"
            /\ W09bezet = 0
            /\ S3bezet = 0
            
reserveer_C4 == /\ W05!reserveer
                /\ W06!reserveer
                /\ W07!reserveer
                /\ W09!reserveer
                /\ S3!treinOp
                /\ UNCHANGED << S1bezet, S2bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet, W04bezet, W08bezet, W10bezet, W11bezet, W12bezet >>
                
vrij_C4 == /\ W05!vrij
           /\ W06!vrij
           /\ W07!vrij
           /\ W09!vrij
           /\ UNCHANGED << W01bezet, W02bezet, W03bezet, W04bezet, W08bezet, W10bezet, W11bezet, W12bezet >>

route_D1 == /\ W08state = "change"
            /\ W08bezet = 0
            /\ W06state = "straight"
            /\ W06bezet = 0
            /\ W04state = "change"
            /\ W04bezet = 0
            /\ W02state = "change"
            /\ W02bezet = 0
            /\ S1bezet = 0

reserveer_D1 == /\ W08!reserveer
                /\ W06!reserveer
                /\ W04!reserveer
                /\ W02!reserveer
                /\ S1!treinOp
                /\ UNCHANGED << S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W03bezet, W05bezet, W07bezet, W09bezet, W10bezet, W11bezet, W12bezet >>

vrij_D1 == /\ W08!vrij
           /\ W06!vrij
           /\ W04!vrij
           /\ W02!vrij
           /\ UNCHANGED << S1bezet, S2bezet, S3bezet, S4bezet, SCbezet, SFbezet, SGbezet, W01bezet, W03bezet, W05bezet, W07bezet, W09bezet, W10bezet, W11bezet, W12bezet >>

route_D2 == /\ W08state = "change"
            /\ W08bezet = 0
            /\ W06state = "straight"
            /\ W06bezet = 0
            /\ W04state = "straight"
            /\ W04bezet = 0
            /\ S2bezet = 0

reserveer_D2 == /\ W08!reserveer
                /\ W06!reserveer
                /\ W04!reserveer
                /\ S2!treinOp
                /\ UNCHANGED << S1bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet, W05bezet, W07bezet, W09bezet, W10bezet, W11bezet, W12bezet >>

vrij_D2 == /\ W08!vrij
           /\ W06!vrij
           /\ W04!vrij
           /\ UNCHANGED << S1bezet, S2bezet, S3bezet, S4bezet, SCbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet, W05bezet, W07bezet, W09bezet, W10bezet, W11bezet, W12bezet >>

route_D3 == /\ W08state = "change"
            /\ W08bezet = 0
            /\ W06state = "change"
            /\ W06bezet = 0
            /\ W07state = "straight"
            /\ W07bezet = 0
            /\ S3bezet = 0
   
reserveer_D3 == /\ W08!reserveer
                /\ W06!reserveer
                /\ W07!reserveer
                /\ S3!treinOp
                /\ UNCHANGED << S1bezet, S2bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet,W04bezet, W05bezet, W09bezet, W10bezet, W11bezet, W12bezet >>

vrij_D3 == /\ W08!vrij
           /\ W06!vrij
           /\ W07!vrij
           /\ UNCHANGED << S1bezet, S2bezet, S3bezet, S4bezet, SCbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet, W04bezet, W05bezet, W09bezet, W10bezet, W11bezet, W12bezet >>
           
route_D4 == /\ W09state = "straight"
            /\ W09bezet = 0
            /\ W08state = "straight"
            /\ W08bezet = 0
            /\ S4bezet = 0

reserveer_D4 == /\ W09!reserveer
                /\ W08!reserveer
                /\ S4!treinOp
                /\ UNCHANGED << S1bezet, S2bezet, S3bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet,W04bezet, W05bezet, W06bezet, W07bezet, W10bezet, W11bezet, W12bezet >>

vrij_D4 == /\ W09!vrij
           /\ W08!vrij
           /\ UNCHANGED << S1bezet, S2bezet, S3bezet, S4bezet, SCbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet, W04bezet, W05bezet, W06bezet, W07bezet, W10bezet, W11bezet, W12bezet >>

   
(*************************RIGHT SIDE*************************)   

LAW_groen == /\ SAtrein = "W"
             /\ \/ /\ route_A1
                   /\ reserveer_A1
                   /\ SA!zetTrein("1")
                \/ /\ route_A2
                   /\ reserveer_A2
                   /\ SA!zetTrein("2")
                \/ /\ route_A3
                   /\ reserveer_A3
                   /\ SA!zetTrein("3")
                \/ /\ route_A4
                   /\ reserveer_A4
                   /\ SA!zetTrein("4")
             /\ LAW!lichtGroen
             /\ UNCHANGED << SBbezet, SBtrein, SAbezet, SCtrein, LCWkleur, LBWkleur, LDWkleur, L1Ekleur, L2Ekleur, L3Ekleur, L4Ekleur, L1Wkleur, L2Wkleur, L3Wkleur, L4Wkleur, LFEkleur, LGEkleur, varState, S1trein, S2trein, S3trein, S4trein, SDtrein, SFtrein, SGtrein>>

LAW_vertrek == /\ LAWkleur # "rood"
               /\ \/ /\ SAtrein = "1"
                     /\ vrij_A1
                     /\ S1!zetTrein("W") (*trein komt van westen*)
                     /\ UNCHANGED <<S2trein, S3trein, S4trein, SCtrein, SDtrein, SFtrein, SGtrein>>
                  \/ /\ SAtrein = "2"
                     /\ vrij_A2
                     /\ S2!zetTrein("W") (*trein komt van westen*)
                     /\ UNCHANGED <<S1trein, S3trein, S4trein, SCtrein, SDtrein, SFtrein, SGtrein>>
                  \/ /\ SAtrein = "3"
                     /\ vrij_A3
                     /\ S3!zetTrein("W") (*trein komt van westen*)
                     /\ UNCHANGED <<S2trein, S1trein, S4trein, SCtrein, SDtrein, SFtrein, SGtrein>>
                  \/ /\ SAtrein = "4"
                     /\ vrij_A4
                     /\ S4!zetTrein("W") (*trein komt van westen*)
                     /\ UNCHANGED <<S2trein, S3trein, S1trein, SCtrein, SDtrein, SFtrein, SGtrein>>
               /\ LAW!lichtRood
               /\ SAtrein' = "N"
               /\ SA!treinWeg
               /\ UNCHANGED << SBbezet, SBtrein, SCbezet, LCWkleur, LBWkleur, LDWkleur, L1Ekleur, L2Ekleur, L3Ekleur, L4Ekleur, L1Wkleur, L2Wkleur, L3Wkleur, L4Wkleur, LFEkleur, LGEkleur, S1bezet, S2bezet, S3bezet, S4bezet, SDbezet, SFbezet, SGbezet, varState>>

LBW_groen == /\ SBtrein = "W"
             /\ \/ /\ route_B1
                   /\ reserveer_B1
                   /\ SB!zetTrein("1")
                \/ /\ route_B2
                   /\ reserveer_B2
                   /\ SB!zetTrein("2")
                \/ /\ route_B3
                   /\ reserveer_B3
                   /\ SB!zetTrein("3")
                \/ /\ route_B4
                   /\ reserveer_B4
                   /\ SB!zetTrein("4")
             /\ LBW!lichtGroen
             /\ UNCHANGED << SBbezet, SAtrein, SAbezet, SCtrein, LCWkleur, LAWkleur, LDWkleur, L1Ekleur, L2Ekleur, L3Ekleur, L4Ekleur, L1Wkleur, L2Wkleur, L3Wkleur, L4Wkleur, LFEkleur, LGEkleur, varState, S1trein, S2trein, S3trein, S4trein, SDtrein, SFtrein, SGtrein>>

LBW_vertrek == /\ LBWkleur # "rood"
               /\ \/ /\ SBtrein = "1"
                     /\ vrij_B1
                     /\ S1!zetTrein("W") (*trein komt van westen*)
                     /\ UNCHANGED <<S2trein, S3trein, S4trein, SCtrein, SDtrein, SFtrein, SGtrein>>
                  \/ /\ SBtrein = "2"
                     /\ vrij_B2
                     /\ S2!zetTrein("W") (*trein komt van westen*)
                     /\ UNCHANGED <<S1trein, S3trein, S4trein, SCtrein, SDtrein, SFtrein, SGtrein>>
                  \/ /\ SBtrein = "3"
                     /\ vrij_B3
                     /\ S3!zetTrein("W") (*trein komt van westen*)
                     /\ UNCHANGED <<S1trein, S2trein, S4trein, SCtrein, SDtrein, SFtrein, SGtrein>>
                  \/ /\ SBtrein = "4"
                     /\ vrij_B4
                     /\ S4!zetTrein("W") (*trein komt van westen*)
                     /\ UNCHANGED <<S1trein, S2trein, S3trein, SCtrein, SDtrein, SFtrein, SGtrein>>
               /\ LBW!lichtRood
               /\ SBtrein' = "N"
               /\ SB!treinWeg
               /\ UNCHANGED <<SAbezet, SAtrein, SCbezet, LCWkleur, LAWkleur, LDWkleur, L1Ekleur, L2Ekleur, L3Ekleur, L4Ekleur, L1Wkleur, L2Wkleur, L3Wkleur, L4Wkleur, LFEkleur, LGEkleur, S1bezet, S2bezet, S3bezet, S4bezet, SDbezet, SFbezet, SGbezet, varState>>

   
LCW_groen == /\ SCtrein = "W"
             /\ \/ /\ route_C1
                   /\ reserveer_C1
                   /\ SC!zetTrein("1") (*trein gaat naar 1*)
                \/ /\ route_C2
                   /\ reserveer_C2
                   /\ SC!zetTrein("2")
                \/ /\ route_C3
                   /\ reserveer_C3
                   /\ SC!zetTrein("3")
                \/ /\ route_C4
                   /\ reserveer_C4
                   /\ SC!zetTrein("4")
             /\ LCW!lichtGroen
             /\ UNCHANGED << varSvol, LAWkleur, LBWkleur, LDWkleur, L1Ekleur, L2Ekleur, L3Ekleur, L4Ekleur, L1Wkleur, L2Wkleur, L3Wkleur, L4Wkleur, LFEkleur, LGEkleur, varState, S1trein, S2trein, S3trein, S4trein, SDtrein, SFtrein, SGtrein>>

             
LCW_vertrek == /\ LCWkleur # "rood"
               /\ \/ /\ SCtrein = "1"
                     /\ vrij_C1
                     /\ S1!zetTrein("W") (*trein komt van westen*)
                     /\ UNCHANGED <<S2trein, S3trein, S4trein, SDtrein, SFtrein, SGtrein>>
                  \/ /\ SCtrein = "2"
                     /\ vrij_C2
                     /\ S2!zetTrein("W")
                     /\ UNCHANGED <<S1trein, S3trein, S4trein, SDtrein, SFtrein, SGtrein>>
                  \/ /\ SCtrein = "3"
                     /\ vrij_C3
                     /\ S3!zetTrein("W")
                     /\ UNCHANGED <<S1trein, S2trein, S4trein, SDtrein, SFtrein, SGtrein>>
                  \/ /\ SCtrein = "4"
                     /\ vrij_C4
                     /\ S3!zetTrein("W")
                     /\ UNCHANGED <<S1trein, S2trein, S4trein, SDtrein, SFtrein, SGtrein>>
               /\ LCW!lichtRood
               /\ SCtrein' = "N"
               /\ SC!treinWeg
               /\ UNCHANGED << varSvol, LAWkleur, LBWkleur, LDWkleur, L1Ekleur, L2Ekleur, L3Ekleur, L4Ekleur, L1Wkleur, L2Wkleur, L3Wkleur, L4Wkleur, LFEkleur, LGEkleur, S1bezet, S2bezet, S3bezet, S4bezet, SDbezet, SFbezet, SGbezet, varState>>

LDW_groen == /\ SDtrein = "W"
             /\ \/ /\ route_D1
                   /\ reserveer_D1
                   /\ SD!zetTrein("1")
                \/ /\ route_D2
                   /\ reserveer_D2
                   /\ SD!zetTrein("2")
                \/ /\ route_D3
                   /\ reserveer_D3
                   /\ SD!zetTrein("3")
                \/ /\ route_D4
                   /\ reserveer_D4
                   /\ SD!zetTrein("4")
             /\ LDW!lichtGroen
             /\ UNCHANGED << varSvol, LAWkleur, LBWkleur, LCWkleur, L1Ekleur, L2Ekleur, L3Ekleur, L4Ekleur, L1Wkleur, L2Wkleur, L3Wkleur, L4Wkleur, LFEkleur, LGEkleur, varState, S1trein, S2trein, S3trein, S4trein, SCtrein, SFtrein, SGtrein>>
 
LDW_vertrek == /\ LDWkleur # "rood"
               /\ \/ /\ SDtrein = "1"
                     /\ vrij_D1
                     /\ S1!zetTrein("W")
                     /\ UNCHANGED <<S2trein, S3trein, S4trein, SCtrein, SFtrein, SGtrein>>
                  \/ /\ SDtrein = "2"
                     /\ vrij_D2
                     /\ S2!zetTrein("W")
                     /\ UNCHANGED <<S1trein, S3trein, S4trein, SCtrein, SFtrein, SGtrein>>
                  \/ /\ SDtrein = "3"
                     /\ vrij_D3
                     /\ S3!zetTrein("W")
                     /\ UNCHANGED <<S2trein, S1trein, S4trein, SCtrein, SFtrein, SGtrein>>
                  \/ /\ SDtrein = "4"
                     /\ vrij_D4
                     /\ S4!zetTrein("W")
                     /\ UNCHANGED <<S2trein, S3trein, S1trein, SCtrein, SFtrein, SGtrein>>
               /\ LDW!lichtRood
               /\ SDtrein' = "N"
               /\ SD!treinWeg
               /\ UNCHANGED << varSvol, LAWkleur, LBWkleur, LCWkleur, L1Ekleur, L2Ekleur, L3Ekleur, L4Ekleur, L1Wkleur, L2Wkleur, L3Wkleur, L4Wkleur, LFEkleur, LGEkleur, S1bezet, S2bezet, S3bezet, S4bezet, SCbezet, SFbezet, SGbezet, varState>>


(*********************************RIGHT SIDE*********************************)

(*************************ROUTES*************************)

route_1F == /\ W10state = "straight"
            /\ W10bezet = 0

reserveer_1F == /\ W10!reserveer
                /\ UNCHANGED << S1bezet, S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet,W04bezet, W05bezet, W06bezet, W07bezet, W09bezet, W08bezet, W11bezet, W12bezet >>

vrij_1F == /\ W10!vrij
           /\ S1!treinWeg
           /\ UNCHANGED << S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet,W04bezet, W05bezet, W06bezet, W07bezet, W09bezet, W08bezet, W11bezet, W12bezet >>

route_2F == /\ W11state = "change"
            /\ W11bezet = 0
            /\ W10state = "change"
            /\ W10bezet = 0

reserveer_2F == /\ W11!reserveer
                /\ W10!reserveer
                /\ UNCHANGED << S1bezet, S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet,W04bezet, W05bezet, W06bezet, W07bezet, W09bezet, W08bezet, W12bezet >>

vrij_2F == /\ W10!vrij
           /\ W11!vrij
           /\ S2!treinWeg
           /\ UNCHANGED << S1bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet,W04bezet, W05bezet, W06bezet, W07bezet, W09bezet, W08bezet, W12bezet >>

route_2G == /\ W11state = "straight"
            /\ W11bezet = 0

reserveer_2G == /\ W11!reserveer
                /\ UNCHANGED << S1bezet, S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet,W04bezet, W05bezet, W06bezet, W07bezet, W09bezet, W08bezet, W10bezet, W12bezet >>

vrij_2G == /\ W11!vrij
           /\ S2!treinWeg
           /\ UNCHANGED << S1bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet,W04bezet, W05bezet, W06bezet, W07bezet, W09bezet, W08bezet, W10bezet, W12bezet >>

route_3F == /\ W12state = "straight"
            /\ W12bezet = 0
            /\ W11state = "straight"
            /\ W11bezet = 0
            /\ W10state = "change"
            /\ W10bezet = 0
            
reserveer_3F == /\ W12!reserveer
                /\ W11!reserveer
                /\ W10!reserveer
                /\ UNCHANGED << S1bezet, S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet,W04bezet, W05bezet, W06bezet, W07bezet, W09bezet, W08bezet >>

vrij_3F == /\ W12!vrij
           /\ W11!vrij
           /\ W10!vrij
           /\ S3!treinWeg
           /\ UNCHANGED << S1bezet, S2bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet,W04bezet, W05bezet, W06bezet, W07bezet, W09bezet, W08bezet >>

route_3G == /\ W12state = "straight"
            /\ W12bezet = 0
            /\ W11state = "change"
            /\ W11bezet = 0
            
reserveer_3G == /\ W12!reserveer
                /\ W11!reserveer
                /\ UNCHANGED << S1bezet, S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet,W04bezet, W05bezet, W06bezet, W07bezet, W09bezet, W08bezet, W10bezet >>

vrij_3G == /\ W12!vrij
           /\ W11!vrij
           /\ S3!treinWeg
           /\ UNCHANGED << S1bezet, S2bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet,W04bezet, W05bezet, W06bezet, W07bezet, W09bezet, W08bezet, W10bezet >>

route_4F == /\ W12state = "change"
            /\ W12bezet = 0
            /\ W11state = "straight"
            /\ W11bezet = 0
            /\ W10state = "change"
            /\ W10bezet = 0
            
reserveer_4F == /\ W12!reserveer
                /\ W11!reserveer
                /\ W10!reserveer
                /\ UNCHANGED << S1bezet, S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet,W04bezet, W05bezet, W06bezet, W07bezet, W09bezet, W08bezet >>

vrij_4F == /\ W12!vrij
           /\ W11!vrij
           /\ W10!vrij
           /\ S4!treinWeg
           /\ UNCHANGED << S1bezet, S2bezet, S3bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet,W04bezet, W05bezet, W06bezet, W07bezet, W09bezet, W08bezet >>

route_4G == /\ W12state = "change"
            /\ W12bezet = 0
            /\ W11state = "change"
            /\ W11bezet = 0

reserveer_4G == /\ W12!reserveer
                /\ W11!reserveer
                /\ UNCHANGED << S1bezet, S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet,W04bezet, W05bezet, W06bezet, W07bezet, W09bezet, W08bezet, W10bezet >>

vrij_4G == /\ W12!vrij
           /\ W11!vrij
           /\ S4!treinWeg
           /\ UNCHANGED << S1bezet, S2bezet, S3bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet,W04bezet, W05bezet, W06bezet, W07bezet, W09bezet, W08bezet, W10bezet >>

(*************************LICHTEN*************************)
        
L1W_groen == /\ S1trein = "W"
             /\ route_1F
             /\ reserveer_1F
             /\ L1W!lichtGroen
             /\ UNCHANGED << varSvol, LAWkleur, LBWkleur, LCWkleur, LDWkleur, L1Ekleur, L2Ekleur, L3Ekleur, L4Ekleur, L2Wkleur, L3Wkleur, L4Wkleur, LFEkleur, LGEkleur, varState, S1trein, S2trein, S3trein, S4trein, SCtrein, SDtrein, SFtrein, SGtrein>>

L1W_vertrek == /\ L1Wkleur # "rood"
               /\ S1trein = "W"
               /\ vrij_1F
               /\ S1!zetTrein("N")
               /\ L1W!lichtRood
               /\ UNCHANGED << varSvol, varState, LAWkleur, LBWkleur, LCWkleur, LDWkleur, L1Ekleur, L2Ekleur, L3Ekleur, L4Ekleur, L2Wkleur, L3Wkleur, L4Wkleur, LFEkleur, LGEkleur, S2trein, S3trein, S4trein, SCtrein, SDtrein, SFtrein, SGtrein >>

L2W_groen == /\ S2trein = "W" 
             /\ \/ /\ route_2F
                   /\ reserveer_2F
                   /\ S2!zetTrein("F")
                \/ /\ route_2G
                   /\ reserveer_2G
                   /\ S2!zetTrein("G")
             /\ L2W!lichtGroen
             /\ UNCHANGED << varSvol, LAWkleur, LBWkleur, LCWkleur, LDWkleur, L1Ekleur, L2Ekleur, L3Ekleur, L4Ekleur, L1Wkleur, L3Wkleur, L4Wkleur, LFEkleur, LGEkleur, varState, S1trein, S3trein, S4trein, SCtrein, SDtrein, SFtrein, SGtrein>>

L2W_vertrek == /\ L2Wkleur # "rood"
               /\ \/ /\ S2trein = "F"
                     /\ vrij_2F
                  \/ /\ S2trein = "G"
                     /\ vrij_2G
               /\ L2W!lichtRood
               /\ S2!zetTrein("N")
               /\ UNCHANGED << varSvol, varState, LAWkleur, LBWkleur, LCWkleur, LDWkleur, L1Ekleur, L2Ekleur, L3Ekleur, L4Ekleur, L1Wkleur, L3Wkleur, L4Wkleur, LFEkleur, LGEkleur, S1trein, S3trein, S4trein, SCtrein, SDtrein, SFtrein, SGtrein >>
 
L3W_groen == /\ S3trein = "W"
             /\ \/ /\ route_3F
                   /\ reserveer_3F
                   /\ S3!zetTrein("F")
                \/ /\ route_3G
                   /\ reserveer_3G
                   /\ S3!zetTrein("G")
             /\ L3W!lichtGroen 
             /\ UNCHANGED << varSvol, LAWkleur, LBWkleur, LCWkleur, LDWkleur, L1Ekleur, L2Ekleur, L3Ekleur, L4Ekleur, L1Wkleur, L2Wkleur, L4Wkleur, LFEkleur, LGEkleur, varState, S1trein, S2trein, S4trein, SCtrein, SDtrein, SFtrein, SGtrein>>

L3W_vertrek == /\ L3Wkleur # "rood"
               /\ \/ /\ S3trein = "F"
                     /\ vrij_3F
                  \/ /\ S3trein = "G"
                     /\ vrij_3G
               /\ L3W!lichtRood
               /\ S3!zetTrein("N")
               /\ UNCHANGED << varSvol, varState, LAWkleur, LBWkleur, LCWkleur, LDWkleur, L1Ekleur, L2Ekleur, L3Ekleur, L4Ekleur, L1Wkleur, L2Wkleur, L4Wkleur, LFEkleur, LGEkleur, S1trein, S2trein, S4trein, SCtrein, SDtrein, SFtrein, SGtrein >>

L4W_groen == /\ S4trein = "W"
             /\ \/ /\ route_4F
                   /\ reserveer_4F
                   /\ S4!zetTrein("F")
                \/ /\ route_4G
                   /\ reserveer_4G
                   /\ S4!zetTrein("G")
             /\ L4W!lichtGroen
             /\ UNCHANGED << varSvol, LAWkleur, LBWkleur, LCWkleur, LDWkleur, L1Ekleur, L2Ekleur, L3Ekleur, L4Ekleur, L1Wkleur, L2Wkleur, L3Wkleur, LFEkleur, LGEkleur, varState, S1trein, S2trein, S3trein, SCtrein, SDtrein, SFtrein, SGtrein>>
   
L4W_vertrek == /\ L4Wkleur # "rood"
               /\ \/ /\ S4trein = "F"
                     /\ vrij_4F
                  \/ /\ S4trein = "G"
                     /\ vrij_4G
               /\ L4W!lichtRood
               /\ S4!zetTrein("N")
               /\ UNCHANGED << varSvol, varState, LAWkleur, LBWkleur, LCWkleur, LDWkleur, L1Ekleur, L2Ekleur, L3Ekleur, L4Ekleur, L1Wkleur, L2Wkleur, L3Wkleur, LFEkleur, LGEkleur, S1trein, S2trein, S3trein, SCtrein, SDtrein, SFtrein, SGtrein >>
             


(*******************************NEXT*******************************)


                   
Wissels == \/ change_W01 
           \/ change_W02 
           \/ change_W03
           \/ change_W04
           \/ change_W05
           \/ change_W06
           \/ change_W07
           \/ change_W08
           \/ change_W09
           \/ change_W10   
           \/ change_W11
           \/ change_W12        
              

LichtenGroen == \/ LAW_groen
                \/ LBW_groen
                \/ LCW_groen
                \/ LDW_groen
                \/ L1W_groen
                \/ L2W_groen
                \/ L3W_groen
                \/ L4W_groen
                \/ LFE_groen
                \/ LGE_groen
                \/ L1E_groen
                \/ L2E_groen
                \/ L3E_groen
                \/ L4E_groen

Vertrek == \/ LAW_vertrek
           \/ LBW_vertrek
           \/ LCW_vertrek
           \/ LDW_vertrek
           \/ L1W_vertrek
           \/ L2W_vertrek
           \/ L3W_vertrek
           \/ L4W_vertrek
           \/ LFE_vertrek
           \/ LGE_vertrek
           \/ L1E_vertrek
           \/ L2E_vertrek
           \/ L3E_vertrek
           \/ L4E_vertrek

Arrival == \/ arrive_A
           \/ arrive_B
           \/ arrive_C
           \/ arrive_D
           \/ arrive_F
           \/ arrive_G
           
LichtLive == SF_vars(LCW_groen) /\ SF_vars(LDW_groen) /\ SF_vars(L1W_groen) /\ SF_vars(L2W_groen) /\ SF_vars(L3W_groen) /\ SF_vars(L4W_groen) /\ SF_vars(LFE_groen) /\ SF_vars(LGE_groen) /\ SF_vars(L1E_groen) /\ SF_vars(L2E_groen) /\ SF_vars(L3E_groen) /\ SF_vars(L4E_groen)

WisselLive == WF_vars(change_W04) /\ WF_vars(change_W06) /\ WF_vars(change_W08) /\ WF_vars(change_W10) /\ WF_vars(change_W11) /\ WF_vars(change_W12)

VertrekLive == SF_vars(LCW_vertrek) /\ SF_vars(LDW_vertrek) /\ SF_vars(L1W_vertrek) /\ SF_vars(L2W_vertrek) /\ SF_vars(L3W_vertrek) /\ SF_vars(L4W_vertrek) /\ SF_vars(LFE_vertrek) /\ SF_vars(LGE_vertrek) /\ SF_vars(L1E_vertrek) /\ SF_vars(L2E_vertrek) /\ SF_vars(L3E_vertrek) /\ SF_vars(L4E_vertrek)

        
Live == /\ WisselLive
        /\ LichtLive
        /\ VertrekLive
		

Next == \/ Vertrek
        \/ LichtenGroen
        \/ Wissels
        \/ Arrival      


TypeInvariant == /\ W01!TypeInvariant
                 /\ W02!TypeInvariant
                 /\ W03!TypeInvariant
                 /\ W04!TypeInvariant
                 /\ W05!TypeInvariant
                 /\ W06!TypeInvariant
                 /\ W07!TypeInvariant
                 /\ W08!TypeInvariant
                 /\ W09!TypeInvariant
                 /\ W10!TypeInvariant
                 /\ W11!TypeInvariant
                 /\ W12!TypeInvariant
                 /\ S1!TypeInvariant
                 /\ S2!TypeInvariant
                 /\ S3!TypeInvariant
                 /\ S4!TypeInvariant
                 /\ SA!TypeInvariant
                 /\ SB!TypeInvariant
                 /\ SC!TypeInvariant
                 /\ SD!TypeInvariant
                 /\ SF!TypeInvariant
                 /\ SG!TypeInvariant



Spec == Init /\ [][Next]_vars /\ Live

DetectieGroenLAW == ((SAtrein = "W" /\ LAWkleur = "rood") ~> (LAWkleur = "groen"))
DetectieGroenLBW == ((SBtrein = "W" /\ LBWkleur = "rood") ~> (LBWkleur = "groen"))
DetectieGroenLCW == ((SCtrein = "W" /\ LCWkleur = "rood") ~> (LCWkleur = "groen"))
DetectieGroenLDW == ((SDtrein = "W" /\ LDWkleur = "rood") ~> (LDWkleur = "groen"))
DetectieGroenL1W == ((S1trein = "W" /\ L1Wkleur = "rood") ~> (L1Wkleur = "groen"))
DetectieGroenL2W == ((S2trein = "W" /\ L2Wkleur = "rood") ~> (L2Wkleur = "groen"))
DetectieGroenL3W == ((S3trein = "W" /\ L3Wkleur = "rood") ~> (L3Wkleur = "groen"))
DetectieGroenL4W == ((S4trein = "W" /\ L4Wkleur = "rood") ~> (L4Wkleur = "groen"))
DetectieGroenLFE == ((SFtrein = "E" /\ LFEkleur = "rood") ~> (LFEkleur = "groen"))
DetectieGroenLGE == ((SGtrein = "E" /\ LGEkleur = "rood") ~> (LGEkleur = "groen"))
DetectieGroenL1E == ((S1trein = "E" /\ L1Ekleur = "rood") ~> (L1Ekleur = "groen"))
DetectieGroenL2E == ((S2trein = "E" /\ L2Ekleur = "rood") ~> (L2Ekleur = "groen"))
DetectieGroenL3E == ((S3trein = "E" /\ L3Ekleur = "rood") ~> (L3Ekleur = "groen"))
DetectieGroenL4E == ((S4trein = "E" /\ L4Ekleur = "rood") ~> (L4Ekleur = "groen"))

DetectieNodigLAW == ENABLED <<LAW_groen>>_vars => SAtrein = "W"
DetectieNodigLBW == ENABLED <<LBW_groen>>_vars => SBtrein = "W"
DetectieNodigLCW == ENABLED <<LCW_groen>>_vars => SCtrein = "W"
DetectieNodigLDW == ENABLED <<LDW_groen>>_vars => SDtrein = "W"
DetectieNodigL1W == ENABLED <<L1W_groen>>_vars => S1trein = "W"
DetectieNodigL2W == ENABLED <<L2W_groen>>_vars => S2trein = "W"
DetectieNodigL3W == ENABLED <<L3W_groen>>_vars => S3trein = "W"
DetectieNodigL4W == ENABLED <<L4W_groen>>_vars => S4trein = "W"
DetectieNodigLFE == ENABLED <<LFE_groen>>_vars => SFtrein = "E"
DetectieNodigLGE == ENABLED <<LGE_groen>>_vars => SGtrein = "E"
DetectieNodigL1E == ENABLED <<L1E_groen>>_vars => S1trein = "E"
DetectieNodigL2E == ENABLED <<L2E_groen>>_vars => S2trein = "E"
DetectieNodigL3E == ENABLED <<L3E_groen>>_vars => S3trein = "E"
DetectieNodigL4E == ENABLED <<L4E_groen>>_vars => S4trein = "E"

----
THEOREM Spec => []TypeInvariant

THEOREM Spec => DetectieGroenLAW
THEOREM Spec => DetectieGroenLBW
THEOREM Spec => DetectieGroenLCW
THEOREM Spec => DetectieGroenLDW
THEOREM Spec => DetectieGroenL1W
THEOREM Spec => DetectieGroenL2W
THEOREM Spec => DetectieGroenL3W
THEOREM Spec => DetectieGroenL4W
THEOREM Spec => DetectieGroenLFE
THEOREM Spec => DetectieGroenLGE
THEOREM Spec => DetectieGroenL1E
THEOREM Spec => DetectieGroenL2E
THEOREM Spec => DetectieGroenL3E
THEOREM Spec => DetectieGroenL4E

THEOREM Spec => []DetectieNodigLAW
THEOREM Spec => []DetectieNodigLBW
THEOREM Spec => []DetectieNodigLCW
THEOREM Spec => []DetectieNodigLDW
THEOREM Spec => []DetectieNodigL1W
THEOREM Spec => []DetectieNodigL2W
THEOREM Spec => []DetectieNodigL3W
THEOREM Spec => []DetectieNodigL4W
THEOREM Spec => []DetectieNodigLFE
THEOREM Spec => []DetectieNodigLGE
THEOREM Spec => []DetectieNodigL1E
THEOREM Spec => []DetectieNodigL2E
THEOREM Spec => []DetectieNodigL3E
THEOREM Spec => []DetectieNodigL4E       
====