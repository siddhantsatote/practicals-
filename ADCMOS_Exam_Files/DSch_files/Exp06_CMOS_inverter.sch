DSCH 3.5
VERSION 22/09/2009 11:19:20
BB(11,0,134,60)
SYM  #nmos
BB(50,30,70,50)
TITLE 65 35  #nmos
MODEL 901
PROP   0.3u 0.05u MN                                                                                                                               
REC(51,35,19,15,r)
VIS 0
PIN(70,50,0.000,0.000)s
PIN(50,40,0.000,0.000)g
PIN(70,30,0.003,0.002)d
LIG(60,40,50,40)
LIG(60,46,60,34)
LIG(62,46,62,34)
LIG(70,34,62,34)
LIG(70,30,70,34)
LIG(70,46,62,46)
LIG(70,50,70,46)
VLG nmos nmos(drain,source,gate);
FSYM
SYM  #pmos
BB(50,10,70,30)
TITLE 65 15  #pmos
MODEL 902
PROP   0.5u 0.05u MP                                                                                                                               
REC(51,15,19,15,r)
VIS 0
PIN(70,10,0.000,0.000)s
PIN(50,20,0.000,0.000)g
PIN(70,30,0.003,0.002)d
LIG(50,20,56,20)
LIG(58,20,58,20)
LIG(60,26,60,14)
LIG(62,26,62,14)
LIG(70,14,62,14)
LIG(70,10,70,14)
LIG(70,26,62,26)
LIG(70,30,70,26)
VLG pmos pmos(drain,source,gate);
FSYM
SYM  #vdd
BB(65,0,75,10)
TITLE 68 6  #vdd
MODEL 1
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 0
PIN(70,10,0.000,0.000)vdd
LIG(70,10,70,5)
LIG(70,5,65,5)
LIG(65,5,70,0)
LIG(70,0,75,5)
LIG(75,5,70,5)
FSYM
SYM  #vss
BB(65,52,75,60)
TITLE 69 57  #vss
MODEL 0
PROP                                                                                                                                    
REC(65,50,0,0,b)
VIS 0
PIN(70,50,0.000,0.000)vss
LIG(70,50,70,55)
LIG(65,55,75,55)
LIG(65,58,67,55)
LIG(67,58,69,55)
LIG(69,58,71,55)
LIG(71,58,73,55)
FSYM
SYM  #button
BB(11,26,20,34)
TITLE 15 30  #button1
MODEL 59
PROP                                                                                                                                    
REC(12,27,6,6,r)
VIS 1
PIN(20,30,0.000,0.000)in1
LIG(19,30,20,30)
LIG(11,34,11,26)
LIG(19,34,11,34)
LIG(19,26,19,34)
LIG(11,26,19,26)
LIG(12,33,12,27)
LIG(18,33,12,33)
LIG(18,27,18,33)
LIG(12,27,18,27)
FSYM
SYM  #light
BB(128,15,134,29)
TITLE 130 29  #light2
MODEL 49
PROP                                                                                                                                    
REC(129,16,4,4,r)
VIS 1
PIN(130,30,0.000,0.000)out2
LIG(133,21,133,16)
LIG(133,16,132,15)
LIG(129,16,129,21)
LIG(132,26,132,23)
LIG(131,26,134,26)
LIG(131,28,133,26)
LIG(132,28,134,26)
LIG(128,23,134,23)
LIG(130,23,130,30)
LIG(128,21,128,23)
LIG(134,21,128,21)
LIG(134,23,134,21)
LIG(130,15,129,16)
LIG(132,15,130,15)
FSYM
SYM  #Res
BB(85,25,105,35)
TITLE 95 30  #R1
MODEL 920
PROP   50                                                                                                                                 
REC(-20,0,0,0, )
VIS 6
PIN(85,30,0.000,0.000)r1
PIN(105,30,0.000,0.000)r2
LIG(85,30,89,30)
LIG(91,28,89,30)
LIG(93,32,91,28)
LIG(96,28,93,32)
LIG(98,32,96,28)
LIG(101,28,98,32)
LIG(102,30,101,28)
LIG(105,30,102,30)
FSYM
SYM  #Capa
BB(105,30,115,50)
TITLE 115 35  #C1
MODEL 900
PROP   1pF                                                                                                                                 
REC(0,0,0,0, )
VIS 6
PIN(110,30,0.000,0.000)c1
PIN(110,50,0.000,0.000)c2
LIG(110,39,110,30)
LIG(105,39,115,39)
LIG(105,41,115,41)
LIG(110,50,110,41)
FSYM
SYM  #vss
BB(105,52,115,60)
TITLE 109 57  #vss
MODEL 0
PROP                                                                                                                                    
REC(105,50,0,0,b)
VIS 0
PIN(110,50,0.000,0.000)vss
LIG(110,50,110,55)
LIG(105,55,115,55)
LIG(105,58,107,55)
LIG(107,58,109,55)
LIG(109,58,111,55)
LIG(111,58,113,55)
FSYM
CNC(50 30)
LIG(50,20,50,30)
LIG(20,30,50,30)
LIG(50,30,50,40)
LIG(70,30,85,30)
LIG(105,30,130,30)
FFIG D:\Documents and Settings\sicard\Mes documents\software\Dsch\Dsch35\dsch35 full\examples\spice\spiceinv.sch
