---- MODULE Station ----
EXTENDS Naturals 

VARIABLES LAWkleur, LBWkleur, LCWkleur, LDWkleur, L1Ekleur, L2Ekleur, L3Ekleur, L4Ekleur, L1Wkleur, L2Wkleur, L3Wkleur, L4Wkleur, LFEkleur, LGEkleur,
          W01bezet, W02bezet, W03bezet, W04bezet, W05bezet, W06bezet, W07bezet, W08bezet, W09bezet, W10bezet, W11bezet, W12bezet,
          S1trein, S2trein, S3trein, S4trein, SCtrein, SDtrein, SFtrein, SGtrein,
          S1bezet, S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet 

----
vars == <<LAWkleur, LBWkleur, LCWkleur, LDWkleur, L1Ekleur, L2Ekleur, L3Ekleur, L4Ekleur, L1Wkleur, L2Wkleur, L3Wkleur, L4Wkleur, LFEkleur, LGEkleur,
          W01bezet, W02bezet, W03bezet, W04bezet, W05bezet, W06bezet, W07bezet, W08bezet, W09bezet, W10bezet, W11bezet, W12bezet,
          S1trein, S2trein, S3trein, S4trein, SCtrein, SDtrein, SFtrein, SGtrein,
          S1bezet, S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet>> 
varKleur == << LAWkleur, LBWkleur, LCWkleur, LDWkleur, L1Ekleur, L2Ekleur, L3Ekleur, L4Ekleur, L1Wkleur, L2Wkleur, L3Wkleur, L4Wkleur, LFEkleur, LGEkleur>>
varWBezet == << W01bezet, W02bezet, W03bezet, W04bezet, W05bezet, W06bezet, W07bezet, W08bezet, W09bezet, W10bezet, W11bezet, W12bezet >>
varSTrein == << S1trein, S2trein, S3trein, S4trein, SCtrein, SDtrein, SFtrein, SGtrein >>
varSBezet == << S1bezet, S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet>>

W01 == INSTANCE Wissel WITH bezet <- W01bezet
W02 == INSTANCE Wissel WITH bezet <- W02bezet
W03 == INSTANCE Wissel WITH bezet <- W03bezet
W04 == INSTANCE Wissel WITH bezet <- W04bezet
W05 == INSTANCE Wissel WITH bezet <- W05bezet
W06 == INSTANCE Wissel WITH bezet <- W06bezet
W07 == INSTANCE Wissel WITH bezet <- W07bezet
W08 == INSTANCE Wissel WITH bezet <- W08bezet
W09 == INSTANCE Wissel WITH bezet <- W09bezet
W10 == INSTANCE Wissel WITH bezet <- W10bezet
W11 == INSTANCE Wissel WITH bezet <- W11bezet
W12 == INSTANCE Wissel WITH bezet <- W12bezet

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
   
InitSpoor ==  /\ SC!Init
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

(*********************************ARRIVALS*********************************)

arrive_C == /\ SCtrein = "N"
            /\ SC!zetTrein("W")
            /\ SC!treinOp
            /\ UNCHANGED << varKleur, varWBezet, S1bezet, S2bezet, S3bezet, S4bezet, SDbezet, SFbezet, SGbezet, S1trein, S2trein, S3trein, S4trein, SDtrein, SFtrein, SGtrein>>

arrive_D == /\ SDtrein = "N"
            /\ SD!zetTrein("W")
            /\ SD!treinOp
            /\ UNCHANGED << varKleur, varWBezet, S1bezet, S2bezet, S3bezet, S4bezet, SCbezet, SFbezet, SGbezet, S1trein, S2trein, S3trein, S4trein, SCtrein, SFtrein, SGtrein>>

arrive_F == /\ SFtrein = "N"
            /\ SF!zetTrein("E")
            /\ SF!treinOp
            /\ UNCHANGED << varKleur, varWBezet, S1bezet, S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SGbezet, S1trein, S2trein, S3trein, S4trein, SCtrein, SDtrein, SGtrein>>

arrive_G == /\ SGtrein = "N"
            /\ SG!zetTrein("E")
            /\ SG!treinOp
            /\ UNCHANGED << varKleur, varWBezet, S1bezet, S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, S1trein, S2trein, S3trein, S4trein, SCtrein, SDtrein, SFtrein>>



(*****************************************EAST TO WEST*****************************************)

(*********************************ROUTES*********************************)

(*************************RIGHT SIDE*************************)


route_G4 == /\ W11bezet = 0
            /\ W12bezet = 0
            /\ S4bezet = 0
            
route_G3 == /\ W11bezet = 0
            /\ W12bezet = 0
            /\ S3bezet = 0

route_G2 == /\ W11bezet = 0
            /\ S2bezet = 0
            
reserveer_G4 == /\ Reserveer2(11, 12)
                /\ S4!treinOp
                /\ UNCHANGED << S1bezet, S2bezet, S3bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet, W04bezet, W05bezet, W06bezet, W07bezet, W08bezet, W09bezet, W10bezet>>

reserveer_G3 == /\ Reserveer2(11, 12)
                /\ S3!treinOp
                /\ UNCHANGED << S1bezet, S2bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet, W04bezet, W05bezet, W06bezet, W07bezet, W08bezet, W09bezet, W10bezet>>

reserveer_G2 == /\ Reserveer1(11)
                /\ S2!treinOp
                /\ UNCHANGED << S1bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet, W04bezet, W05bezet, W06bezet, W07bezet, W08bezet, W09bezet, W10bezet, W12bezet>>

vrij_G4 == /\ Vrij2(11, 12)
           /\ UNCHANGED << W01bezet, W02bezet, W03bezet, W04bezet, W05bezet, W06bezet, W07bezet, W08bezet, W09bezet, W10bezet>>

vrij_G3 == /\ Vrij2(11, 12)
           /\ UNCHANGED << W01bezet, W02bezet, W03bezet, W04bezet, W05bezet, W06bezet, W07bezet, W08bezet, W09bezet, W10bezet>>

vrij_G2 == /\ Vrij1(11)
           /\ UNCHANGED << W01bezet, W02bezet, W03bezet, W04bezet, W05bezet, W06bezet, W07bezet, W08bezet, W09bezet, W10bezet, W12bezet>>
           
route_F1 == /\ W10bezet = 0
            /\ S1bezet = 0
            
route_F2 == /\ W10bezet = 0
            /\ W11bezet = 0
            /\ S2bezet = 0

route_F3 == /\ W10bezet = 0
            /\ W11bezet = 0
            /\ W12bezet = 0
            /\ S3bezet = 0
            
route_F4 == /\ W10bezet = 0
            /\ W11bezet = 0
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
   
route_1D == /\ W04bezet = 0
            /\ W06bezet = 0
            /\ W08bezet = 0
            
route_2D == /\ W04bezet = 0
            /\ W06bezet = 0
            /\ W08bezet = 0    

route_3D == /\ W06bezet = 0
            /\ W08bezet = 0
            
route_4D == /\ W08bezet = 0
            
reserveer_1D == /\ Reserveer3(4, 6, 8)
                /\ UNCHANGED << S1bezet, S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet, W05bezet, W07bezet, W09bezet, W10bezet, W11bezet, W12bezet >>
         
reserveer_2D == /\ Reserveer3(4, 6, 8)
                /\ UNCHANGED << S1bezet, S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet, W05bezet, W07bezet, W09bezet, W10bezet, W11bezet, W12bezet >>
     
reserveer_3D == /\ Reserveer2(6, 8)
                /\ UNCHANGED << S1bezet, S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet,W04bezet, W05bezet, W07bezet, W09bezet, W10bezet, W11bezet, W12bezet >>

reserveer_4D == /\ Reserveer1(8)
                /\ UNCHANGED << S1bezet, S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet,W04bezet, W05bezet, W06bezet, W07bezet, W09bezet, W10bezet, W11bezet, W12bezet >>

vrij_1D == /\ Vrij3(4, 6, 8)
           /\ S1!treinWeg
           /\ UNCHANGED << S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet, W05bezet, W07bezet, W09bezet, W10bezet, W11bezet, W12bezet >>

vrij_2D == /\ Vrij3(4, 6, 8)
           /\ S2!treinWeg
           /\ UNCHANGED << S1bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet, W05bezet, W07bezet, W09bezet, W10bezet, W11bezet, W12bezet >>

vrij_3D == /\ Vrij2(6, 8)
           /\ S3!treinWeg
           /\ UNCHANGED << S1bezet, S2bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet,W04bezet, W05bezet, W07bezet, W09bezet, W10bezet, W11bezet, W12bezet >>

vrij_4D == /\ Vrij1(8)
           /\ S4!treinWeg
           /\ UNCHANGED << S1bezet, S2bezet, S3bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet,W04bezet, W05bezet, W06bezet, W07bezet, W09bezet, W10bezet, W11bezet, W12bezet >>
       
route_1C == /\ W04bezet = 0
            /\ W06bezet = 0
            
route_2C == /\ W04bezet = 0
            /\ W06bezet = 0
            
route_3C == /\ W06bezet = 0
            
reserveer_1C == /\ Reserveer2(4, 6)
                /\ UNCHANGED << S1bezet, S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet,W11bezet, W05bezet, W12bezet, W07bezet, W09bezet, W08bezet, W10bezet >>

reserveer_2C == /\ Reserveer2(4, 6)
                /\ UNCHANGED << S1bezet, S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet,W11bezet, W05bezet, W12bezet, W07bezet, W09bezet, W08bezet, W10bezet >>

reserveer_3C == /\ Reserveer1(6)
                /\ UNCHANGED << S1bezet, S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet,W04bezet, W05bezet, W11bezet, W07bezet, W09bezet, W08bezet, W10bezet, W12bezet >>
            
vrij_1C == /\ Vrij2(4, 6)
           /\ S1!treinWeg
           /\ UNCHANGED << S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet,W11bezet, W05bezet, W12bezet, W07bezet, W09bezet, W08bezet, W10bezet >>

vrij_2C == /\ Vrij2(4, 6)
           /\ S2!treinWeg
           /\ UNCHANGED << S1bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet,W11bezet, W05bezet, W12bezet, W07bezet, W09bezet, W08bezet, W10bezet >>

vrij_3C == /\ Vrij1(6)
           /\ S3!treinWeg
           /\ UNCHANGED << S1bezet, S2bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet,W04bezet, W05bezet, W11bezet, W07bezet, W09bezet, W08bezet, W10bezet, W12bezet >>
           
           



(*********************************LICHTEN*********************************)

(****************************RIGHT SIDE****************************)

LGE_groen == /\ SGtrein # "N"
             /\ \/ /\ route_G2
                   /\ reserveer_G2
                   /\ SG!zetTrein("2")
                \/ /\ route_G4
                   /\ reserveer_G4
                   /\ SG!zetTrein("4")
                \/ /\ route_G3
                   /\ reserveer_G3
                   /\ SG!zetTrein("3")
             /\ LGE!lichtGroen
             /\ UNCHANGED << LAWkleur, LBWkleur, LCWkleur, LDWkleur, L1Ekleur, L2Ekleur, L3Ekleur, L4Ekleur, L1Wkleur, L2Wkleur, L3Wkleur, L4Wkleur, LFEkleur, S1trein, S2trein, S3trein, S4trein,SCtrein, SDtrein, SFtrein>>

             
LGE_vertrek == /\ LGEkleur # "rood"
               /\ \/ /\ SGtrein = "4"
                     /\ vrij_G4
                     /\ S4!zetTrein("E")
                     /\ UNCHANGED <<S1trein, S2trein, S3trein, SCtrein, SDtrein, SFtrein>>
                  \/ /\ SGtrein = "3"
                     /\ vrij_G3
                     /\ S3!zetTrein("E")
                     /\ UNCHANGED <<S1trein, S2trein, S4trein, SCtrein, SDtrein, SFtrein>>
                  \/ /\ SGtrein = "2"
                     /\ vrij_G2
                     /\ S2!zetTrein("E")
                     /\ UNCHANGED <<S1trein, S3trein, S4trein, SCtrein, SDtrein, SFtrein>>
               /\ LGE!lichtRood
               /\ SG!zetTrein("N")
               /\ SG!treinWeg
               /\ UNCHANGED << LAWkleur, LBWkleur, LCWkleur, LDWkleur, L1Ekleur, L2Ekleur, L3Ekleur, L4Ekleur, L1Wkleur, L2Wkleur, L3Wkleur, L4Wkleur, LFEkleur, S1bezet, S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet>>

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
             /\ UNCHANGED << LAWkleur, LBWkleur, LCWkleur, LDWkleur, L1Ekleur, L2Ekleur, L3Ekleur, L4Ekleur, L1Wkleur, L2Wkleur, L3Wkleur, L4Wkleur, LGEkleur, S1trein, S2trein, S3trein, S4trein,SCtrein, SDtrein, SGtrein>>

             
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
               /\ UNCHANGED << LAWkleur, LBWkleur, LCWkleur, LDWkleur, L1Ekleur, L2Ekleur, L3Ekleur, L4Ekleur, L1Wkleur, L2Wkleur, L3Wkleur, L4Wkleur, LGEkleur, S1bezet, S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SGbezet>>



(****************************LEFT SIDE****************************)
 
L4E_groen == /\ S4trein = "E"
             /\ route_4D
             /\ reserveer_4D
             /\ S4!zetTrein("D")
             /\ L4E!lichtGroen
             /\ UNCHANGED << LAWkleur, LBWkleur, LCWkleur, LDWkleur, L1Ekleur, L2Ekleur, L3Ekleur, L1Wkleur, L2Wkleur, L3Wkleur, L4Wkleur, LFEkleur, LGEkleur, S1trein, S2trein, S3trein, SCtrein, SDtrein, SFtrein, SGtrein>>

L4E_vertrek == /\ L4Ekleur # "rood"
               /\ S4trein = "D"
               /\ vrij_4D
               /\ S4!zetTrein("N")
               /\ L4E!lichtRood
               /\ UNCHANGED << LAWkleur, LBWkleur, LCWkleur, LDWkleur, L1Ekleur, L2Ekleur, L3Ekleur, L1Wkleur, L2Wkleur, L3Wkleur, L4Wkleur, LFEkleur, LGEkleur, S2trein, S3trein, S1trein, SCtrein, SDtrein, SFtrein, SGtrein >>

L3E_groen == /\ S3trein = "E"
             /\ \/ /\ route_3D
                   /\ reserveer_3D
                   /\ S3!zetTrein("D")
                \/ /\ route_3C
                   /\ reserveer_3C
                   /\ S3!zetTrein("C")
             /\ L3E!lichtGroen
             /\ UNCHANGED << LAWkleur, LBWkleur, LCWkleur, LDWkleur, L1Ekleur, L2Ekleur, L2Wkleur, L4Ekleur, L1Wkleur, L3Wkleur, L4Wkleur, LFEkleur, LGEkleur, S1trein, S2trein, S4trein, SCtrein, SDtrein, SFtrein, SGtrein>>

L3E_vertrek == /\ L3Ekleur # "rood"
               /\ \/ /\ S3trein = "D"
                     /\ vrij_3D
                  \/ /\ S3trein = "C"
                     /\ vrij_3C
               /\ S3!zetTrein("N")
               /\ L3E!lichtRood
               /\ UNCHANGED << LAWkleur, LBWkleur, LCWkleur, LDWkleur, L1Ekleur, L2Ekleur, L2Wkleur, L4Ekleur, L1Wkleur, L3Wkleur, L4Wkleur, LFEkleur, LGEkleur, S1trein, S2trein, S4trein, SCtrein, SDtrein, SFtrein, SGtrein >>

L2E_groen == /\ S2trein = "E"
             /\ \/ /\ route_2D
                   /\ reserveer_2D
                   /\ S2!zetTrein("D")
                \/ /\ route_2C
                   /\ reserveer_2C
                   /\ S2!zetTrein("C")
             /\ L2E!lichtGroen
             /\ UNCHANGED << LAWkleur, LBWkleur, LCWkleur, LDWkleur, L1Ekleur, L3Wkleur, L3Ekleur, L4Ekleur, L1Wkleur, L2Wkleur, L4Wkleur, LFEkleur, LGEkleur, S1trein, S3trein, S4trein, SCtrein, SDtrein, SFtrein, SGtrein>>

L2E_vertrek == /\ L2Ekleur # "rood"
               /\ \/ /\ S2trein = "D"
                     /\ vrij_2D
                  \/ /\ S2trein = "C"
                     /\ vrij_2C
               /\ S2!zetTrein("N")
               /\ L2E!lichtRood
               /\ UNCHANGED << LAWkleur, LBWkleur, LCWkleur, LDWkleur, L1Ekleur, L3Wkleur, L3Ekleur, L4Ekleur, L1Wkleur, L2Wkleur, L4Wkleur, LFEkleur, LGEkleur, S1trein, S3trein, S4trein, SCtrein, SDtrein, SFtrein, SGtrein >>

L1E_groen == /\ S1trein = "E"
             /\ \/ /\ route_1D
                   /\ reserveer_1D
                   /\ S1!zetTrein("D")
                \/ /\ route_1C
                   /\ reserveer_1C
                   /\ S1!zetTrein("C")
             /\ L1E!lichtGroen
             /\ UNCHANGED << LAWkleur, LBWkleur, LCWkleur, LDWkleur, L4Wkleur, L2Ekleur, L3Ekleur, L4Ekleur, L1Wkleur, L2Wkleur, L3Wkleur, LFEkleur, LGEkleur, S4trein, S2trein, S3trein, SCtrein, SDtrein, SFtrein, SGtrein>>

L1E_vertrek == /\ L1Ekleur # "rood"
               /\ \/ /\ S1trein = "D"
                     /\ vrij_1D
                  \/ /\ S1trein = "C"
                     /\ vrij_1C
               /\ S1!zetTrein("N")
               /\ L1E!lichtRood
               /\ UNCHANGED << LAWkleur, LBWkleur, LCWkleur, LDWkleur, L4Wkleur, L2Ekleur, L3Ekleur, L4Ekleur, L1Wkleur, L2Wkleur, L3Wkleur, LFEkleur, LGEkleur, S4trein, S2trein, S3trein, SCtrein, SDtrein, SFtrein, SGtrein >>


(*****************************************WEST TO EAST*****************************************)

(*********************************LEFT SIDE*********************************)

(*************************ROUTES*************************)

route_C1 == /\ W06bezet = 0
            /\ W04bezet = 0
            /\ S1bezet = 0

reserveer_C1 == /\ W06!reserveer
                /\ W04!reserveer
                /\ S1!treinOp
                /\ UNCHANGED << S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet, W05bezet, W07bezet, W08bezet, W09bezet, W10bezet, W11bezet, W12bezet >>

vrij_C1 == /\ W06!vrij
           /\ W04!vrij
           /\ UNCHANGED << W01bezet, W02bezet, W03bezet, W05bezet, W07bezet, W08bezet, W09bezet, W10bezet, W11bezet, W12bezet >>

route_C2 == /\ W06bezet = 0
            /\ W04bezet = 0
            /\ S2bezet = 0
            
reserveer_C2 == /\ W06!reserveer
                /\ W04!reserveer
                /\ S2!treinOp
                /\ UNCHANGED << S1bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet, W05bezet, W07bezet, W08bezet, W09bezet, W10bezet, W11bezet, W12bezet >>

vrij_C2 == /\ W06!vrij
           /\ W04!vrij
           /\ UNCHANGED << W01bezet, W02bezet, W03bezet, W05bezet, W07bezet, W08bezet, W09bezet, W10bezet, W11bezet, W12bezet >>


route_C3 == /\ W06bezet = 0
            /\ S3bezet = 0
            
reserveer_C3 == /\ W06!reserveer
                /\ S3!treinOp
                /\ UNCHANGED << S1bezet, S2bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet, W04bezet, W05bezet, W07bezet, W08bezet, W09bezet, W10bezet, W11bezet, W12bezet >>
                
vrij_C3 == /\ W06!vrij
           /\ UNCHANGED << W01bezet, W02bezet, W03bezet, W04bezet, W05bezet, W07bezet, W08bezet, W09bezet, W10bezet, W11bezet, W12bezet >>

route_D1 == /\ W08bezet = 0
            /\ W06bezet = 0
            /\ W04bezet = 0
            /\ S1bezet = 0

reserveer_D1 == /\ W08!reserveer
                /\ W06!reserveer
                /\ W04!reserveer
                /\ S1!treinOp
                /\ UNCHANGED << S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet, W05bezet, W07bezet, W09bezet, W10bezet, W11bezet, W12bezet >>

vrij_D1 == /\ W08!vrij
           /\ W06!vrij
           /\ W04!vrij
           /\ UNCHANGED << S1bezet, S2bezet, S3bezet, S4bezet, SCbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet, W05bezet, W07bezet, W09bezet, W10bezet, W11bezet, W12bezet >>

route_D2 == /\ W08bezet = 0
            /\ W06bezet = 0
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

route_D3 == /\ W08bezet = 0
            /\ W06bezet = 0
            /\ S3bezet = 0
   
reserveer_D3 == /\ W08!reserveer
                /\ W06!reserveer
                /\ S3!treinOp
                /\ UNCHANGED << S1bezet, S2bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet,W04bezet, W05bezet, W07bezet, W09bezet, W10bezet, W11bezet, W12bezet >>

vrij_D3 == /\ W08!vrij
           /\ W06!vrij
           /\ UNCHANGED << S1bezet, S2bezet, S3bezet, S4bezet, SCbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet, W04bezet, W05bezet, W07bezet, W09bezet, W10bezet, W11bezet, W12bezet >>
           
route_D4 == /\ W08bezet = 0
            /\ S4bezet = 0

reserveer_D4 == /\ W08!reserveer
                /\ S4!treinOp
                /\ UNCHANGED << S1bezet, S2bezet, S3bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet,W04bezet, W05bezet, W06bezet, W07bezet, W09bezet, W10bezet, W11bezet, W12bezet >>

vrij_D4 == /\ W08!vrij
           /\ UNCHANGED << S1bezet, S2bezet, S3bezet, S4bezet, SCbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet, W04bezet, W05bezet, W06bezet, W07bezet, W09bezet, W10bezet, W11bezet, W12bezet >>

   
(*************************RIGHT SIDE*************************)   
   
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
             /\ LCW!lichtGroen
             /\ UNCHANGED << LAWkleur, LBWkleur, LDWkleur, L1Ekleur, L2Ekleur, L3Ekleur, L4Ekleur, L1Wkleur, L2Wkleur, L3Wkleur, L4Wkleur, LFEkleur, LGEkleur, S1trein, S2trein, S3trein, S4trein, SDtrein, SFtrein, SGtrein>>

             
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
               /\ LCW!lichtRood
               /\ SCtrein' = "N"
               /\ SC!treinWeg
               /\ UNCHANGED << LAWkleur, LBWkleur, LDWkleur, L1Ekleur, L2Ekleur, L3Ekleur, L4Ekleur, L1Wkleur, L2Wkleur, L3Wkleur, L4Wkleur, LFEkleur, LGEkleur, S1bezet, S2bezet, S3bezet, S4bezet, SDbezet, SFbezet, SGbezet>>

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
             /\ UNCHANGED << LAWkleur, LBWkleur, LCWkleur, L1Ekleur, L2Ekleur, L3Ekleur, L4Ekleur, L1Wkleur, L2Wkleur, L3Wkleur, L4Wkleur, LFEkleur, LGEkleur, S1trein, S2trein, S3trein, S4trein, SCtrein, SFtrein, SGtrein>>
 
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
               /\ UNCHANGED << LAWkleur, LBWkleur, LCWkleur, L1Ekleur, L2Ekleur, L3Ekleur, L4Ekleur, L1Wkleur, L2Wkleur, L3Wkleur, L4Wkleur, LFEkleur, LGEkleur, S1bezet, S2bezet, S3bezet, S4bezet, SCbezet, SFbezet, SGbezet>>


(*********************************RIGHT SIDE*********************************)

(*************************ROUTES*************************)

route_1F == /\ W10bezet = 0

reserveer_1F == /\ W10!reserveer
                /\ UNCHANGED << S1bezet, S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet,W04bezet, W05bezet, W06bezet, W07bezet, W09bezet, W08bezet, W11bezet, W12bezet >>

vrij_1F == /\ W10!vrij
           /\ S1!treinWeg
           /\ UNCHANGED << S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet,W04bezet, W05bezet, W06bezet, W07bezet, W09bezet, W08bezet, W11bezet, W12bezet >>

route_2F == /\ W11bezet = 0
            /\ W10bezet = 0

reserveer_2F == /\ W11!reserveer
                /\ W10!reserveer
                /\ UNCHANGED << S1bezet, S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet,W04bezet, W05bezet, W06bezet, W07bezet, W09bezet, W08bezet, W12bezet >>

vrij_2F == /\ W10!vrij
           /\ W11!vrij
           /\ S2!treinWeg
           /\ UNCHANGED << S1bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet,W04bezet, W05bezet, W06bezet, W07bezet, W09bezet, W08bezet, W12bezet >>

route_2G == /\ W11bezet = 0

reserveer_2G == /\ W11!reserveer
                /\ UNCHANGED << S1bezet, S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet,W04bezet, W05bezet, W06bezet, W07bezet, W09bezet, W08bezet, W10bezet, W12bezet >>

vrij_2G == /\ W11!vrij
           /\ S2!treinWeg
           /\ UNCHANGED << S1bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet,W04bezet, W05bezet, W06bezet, W07bezet, W09bezet, W08bezet, W10bezet, W12bezet >>

route_3F == /\ W12bezet = 0
            /\ W11bezet = 0
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

route_3G == /\ W12bezet = 0
            /\ W11bezet = 0
            
reserveer_3G == /\ W12!reserveer
                /\ W11!reserveer
                /\ UNCHANGED << S1bezet, S2bezet, S3bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet,W04bezet, W05bezet, W06bezet, W07bezet, W09bezet, W08bezet, W10bezet >>

vrij_3G == /\ W12!vrij
           /\ W11!vrij
           /\ S3!treinWeg
           /\ UNCHANGED << S1bezet, S2bezet, S4bezet, SCbezet, SDbezet, SFbezet, SGbezet, W01bezet, W02bezet, W03bezet,W04bezet, W05bezet, W06bezet, W07bezet, W09bezet, W08bezet, W10bezet >>

route_4F == /\ W12bezet = 0
            /\ W11bezet = 0
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

route_4G == /\ W12bezet = 0
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
             /\ UNCHANGED << LAWkleur, LBWkleur, LCWkleur, LDWkleur, L1Ekleur, L2Ekleur, L3Ekleur, L4Ekleur, L2Wkleur, L3Wkleur, L4Wkleur, LFEkleur, LGEkleur, S1trein, S2trein, S3trein, S4trein, SCtrein, SDtrein, SFtrein, SGtrein>>

L1W_vertrek == /\ L1Wkleur # "rood"
               /\ S1trein = "W"
               /\ vrij_1F
               /\ S1!zetTrein("N")
               /\ L1W!lichtRood
               /\ UNCHANGED << LAWkleur, LBWkleur, LCWkleur, LDWkleur, L1Ekleur, L2Ekleur, L3Ekleur, L4Ekleur, L2Wkleur, L3Wkleur, L4Wkleur, LFEkleur, LGEkleur, S2trein, S3trein, S4trein, SCtrein, SDtrein, SFtrein, SGtrein >>

L2W_groen == /\ S2trein = "W" 
             /\ \/ /\ route_2F
                   /\ reserveer_2F
                   /\ S2!zetTrein("F")
                \/ /\ route_2G
                   /\ reserveer_2G
                   /\ S2!zetTrein("G")
             /\ L2W!lichtGroen
             /\ UNCHANGED << LAWkleur, LBWkleur, LCWkleur, LDWkleur, L1Ekleur, L2Ekleur, L3Ekleur, L4Ekleur, L1Wkleur, L3Wkleur, L4Wkleur, LFEkleur, LGEkleur, S1trein, S3trein, S4trein, SCtrein, SDtrein, SFtrein, SGtrein>>

L2W_vertrek == /\ L2Wkleur # "rood"
               /\ \/ /\ S2trein = "F"
                     /\ vrij_2F
                  \/ /\ S2trein = "G"
                     /\ vrij_2G
               /\ L2W!lichtRood
               /\ S2!zetTrein("N")
               /\ UNCHANGED << LAWkleur, LBWkleur, LCWkleur, LDWkleur, L1Ekleur, L2Ekleur, L3Ekleur, L4Ekleur, L1Wkleur, L3Wkleur, L4Wkleur, LFEkleur, LGEkleur, S1trein, S3trein, S4trein, SCtrein, SDtrein, SFtrein, SGtrein >>
 
L3W_groen == /\ S3trein = "W"
             /\ \/ /\ route_3F
                   /\ reserveer_3F
                   /\ S3!zetTrein("F")
                \/ /\ route_3G
                   /\ reserveer_3G
                   /\ S3!zetTrein("G")
             /\ L3W!lichtGroen 
             /\ UNCHANGED << LAWkleur, LBWkleur, LCWkleur, LDWkleur, L1Ekleur, L2Ekleur, L3Ekleur, L4Ekleur, L1Wkleur, L2Wkleur, L4Wkleur, LFEkleur, LGEkleur, S1trein, S2trein, S4trein, SCtrein, SDtrein, SFtrein, SGtrein>>

L3W_vertrek == /\ L3Wkleur # "rood"
               /\ \/ /\ S3trein = "F"
                     /\ vrij_3F
                  \/ /\ S3trein = "G"
                     /\ vrij_3G
               /\ L3W!lichtRood
               /\ S3!zetTrein("N")
               /\ UNCHANGED << LAWkleur, LBWkleur, LCWkleur, LDWkleur, L1Ekleur, L2Ekleur, L3Ekleur, L4Ekleur, L1Wkleur, L2Wkleur, L4Wkleur, LFEkleur, LGEkleur, S1trein, S2trein, S4trein, SCtrein, SDtrein, SFtrein, SGtrein >>

L4W_groen == /\ S4trein = "W"
             /\ \/ /\ route_4F
                   /\ reserveer_4F
                   /\ S4!zetTrein("F")
                \/ /\ route_4G
                   /\ reserveer_4G
                   /\ S4!zetTrein("G")
             /\ L4W!lichtGroen
             /\ UNCHANGED << LAWkleur, LBWkleur, LCWkleur, LDWkleur, L1Ekleur, L2Ekleur, L3Ekleur, L4Ekleur, L1Wkleur, L2Wkleur, L3Wkleur, LFEkleur, LGEkleur, S1trein, S2trein, S3trein, SCtrein, SDtrein, SFtrein, SGtrein>>
   
L4W_vertrek == /\ L4Wkleur # "rood"
               /\ \/ /\ S4trein = "F"
                     /\ vrij_4F
                  \/ /\ S4trein = "G"
                     /\ vrij_4G
               /\ L4W!lichtRood
               /\ S4!zetTrein("N")
               /\ UNCHANGED << LAWkleur, LBWkleur, LCWkleur, LDWkleur, L1Ekleur, L2Ekleur, L3Ekleur, L4Ekleur, L1Wkleur, L2Wkleur, L3Wkleur, LFEkleur, LGEkleur, S1trein, S2trein, S3trein, SCtrein, SDtrein, SFtrein, SGtrein >>
             


(*******************************NEXT*******************************)


LichtenGroen == \/ LCW_groen
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

Vertrek == \/ LCW_vertrek
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

Arrival == \/ arrive_C
           \/ arrive_D
           \/ arrive_F
           \/ arrive_G

LichtLive == SF_vars(LCW_groen) /\ SF_vars(LDW_groen) /\ SF_vars(L1W_groen) /\ SF_vars(L2W_groen) /\ SF_vars(L3W_groen) /\ SF_vars(L4W_groen) /\ SF_vars(LFE_groen) /\ SF_vars(LGE_groen) /\ SF_vars(L1E_groen) /\ SF_vars(L2E_groen) /\ SF_vars(L3E_groen) /\ SF_vars(L4E_groen)

VertrekLiveWeak == WF_vars(LCW_vertrek) /\ WF_vars(LDW_vertrek) /\ WF_vars(L1W_vertrek) /\ WF_vars(L2W_vertrek) /\ WF_vars(L3W_vertrek) /\ WF_vars(L4W_vertrek) /\ WF_vars(LFE_vertrek) /\ WF_vars(LGE_vertrek) /\ WF_vars(L1E_vertrek) /\ WF_vars(L2E_vertrek) /\ WF_vars(L3E_vertrek) /\ WF_vars(L4E_vertrek)

        
Live == /\ LichtLive
        /\ VertrekLiveWeak
         

Next == \/ Vertrek
        \/ LichtenGroen
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
                 /\ SC!TypeInvariant
                 /\ SD!TypeInvariant
                 /\ SF!TypeInvariant
                 /\ SG!TypeInvariant



Spec == Init /\ [][Next]_vars /\ Live

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

DetectieGroen == /\ DetectieGroenLCW
                 /\ DetectieGroenLDW
                 /\ DetectieGroenL1W
                 /\ DetectieGroenL2W
                 /\ DetectieGroenL3W
                 /\ DetectieGroenL4W
                 /\ DetectieGroenLFE
                 /\ DetectieGroenLGE
                 /\ DetectieGroenL1E
                 /\ DetectieGroenL2E
                 /\ DetectieGroenL3E
                 /\ DetectieGroenL4E


DetectieNodig == /\ DetectieNodigLCW				 
                 /\ DetectieNodigLDW				 
                 /\ DetectieNodigL1W				 
                 /\ DetectieNodigL2W				 
                 /\ DetectieNodigL3W				 
                 /\ DetectieNodigL4W				 
                 /\ DetectieNodigLFE				 
                 /\ DetectieNodigLGE				 
                 /\ DetectieNodigL1E				 
                 /\ DetectieNodigL2E				 
                 /\ DetectieNodigL3E				 
                 /\ DetectieNodigL4E				 
				 
				 
(* hulp unchanged*)
(* << varState, varKleur, varWBezet, varSTrein, varSBezet >>*)
----

====