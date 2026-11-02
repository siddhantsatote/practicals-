DSCH 3.5
VERSION 22/09/2009 10:58:59
BB(15,-10,134,80)
SYM  #nmos
BB(50,20,70,40)
TITLE 65 25  #nmos
MODEL 901
PROP   0.3u 0.05u MN                                                                                                                               
REC(51,25,19,15,r)
VIS 0
PIN(70,40,0.000,0.000)s
PIN(50,30,0.000,0.000)g
PIN(70,20,0.003,0.005)d
LIG(60,30,50,30)
LIG(60,36,60,24)
LIG(62,36,62,24)
LIG(70,24,62,24)
LIG(70,20,70,24)
LIG(70,36,62,36)
LIG(70,40,70,36)
VLG nmos nmos(drain,source,gate);
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
SYM  #VSource
BB(15,30,25,55)
TITLE 20 42  #Vin
MODEL 965
PROP   0.5 0.01 0 1.0 0.1 0.1 1.0 2.0 0                                                                                                                        
REC(0,0,0,0, )
VIS 5
PIN(20,30,0.000,0.000)Vp
PIN(20,55,0.000,0.000)Vm
LIG(20,55,20,50)
LIG(20,30,20,35)
LIG(15,40,15,45)
LIG(25,40,25,45)
LIG(15,45,20,50)
LIG(25,45,20,50)
LIG(25,40,20,35)
LIG(15,40,20,35)
LIG(18,40,22,40)
LIG(20,38,20,42)
LIG(18,45,22,45)
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
SYM  #vss
BB(15,57,25,65)
TITLE 19 62  #vss
MODEL 0
PROP                                                                                                                                    
REC(15,55,0,0,b)
VIS 0
PIN(20,55,0.000,0.000)vss
LIG(20,55,20,60)
LIG(15,60,25,60)
LIG(15,63,17,60)
LIG(17,63,19,60)
LIG(19,63,21,60)
LIG(21,63,23,60)
FSYM
SYM  #light
BB(128,5,134,19)
TITLE 130 19  #Out
MODEL 49
PROP                                                                                                                                    
REC(129,6,4,4,r)
VIS 1
PIN(130,20,0.000,0.000)Out
LIG(133,11,133,6)
LIG(133,6,132,5)
LIG(129,6,129,11)
LIG(132,16,132,13)
LIG(131,16,134,16)
LIG(131,18,133,16)
LIG(132,18,134,16)
LIG(128,13,134,13)
LIG(130,13,130,20)
LIG(128,11,128,13)
LIG(134,11,128,11)
LIG(134,13,134,11)
LIG(130,5,129,6)
LIG(132,5,130,5)
FSYM
SYM  #vdd
BB(65,-10,75,0)
TITLE 68 -4  #vdd
MODEL 1
PROP                                                                                                                                   
REC(0,0,0,0, )
VIS 0
PIN(70,0,0.000,0.000)vdd
LIG(70,0,70,-5)
LIG(70,-5,65,-5)
LIG(65,-5,70,-10)
LIG(70,-10,75,-5)
LIG(75,-5,70,-5)
FSYM
SYM  #Capa
BB(105,30,115,50)
TITLE 115 35  #Cload
MODEL 900
PROP   0.01pF                                                                                                                                 
REC(0,0,0,0, )
VIS 6
PIN(110,30,0.000,0.000)c1
PIN(110,50,0.000,0.000)c2
LIG(110,39,110,30)
LIG(105,39,115,39)
LIG(105,41,115,41)
LIG(110,50,110,41)
FSYM
SYM  #Res
BB(65,0,75,20)
TITLE 70 10  #Rload
MODEL 920
PROP   20K                                                                                                                                
REC(85,-90,0,0, )
VIS 6
PIN(70,0,0.000,0.000)r1
PIN(70,20,0.000,0.000)r2
LIG(70,0,70,4)
LIG(72,6,70,4)
LIG(68,8,72,6)
LIG(72,11,68,8)
LIG(68,13,72,11)
LIG(72,16,68,13)
LIG(70,17,72,16)
LIG(70,20,70,17)
FSYM
CNC(110 20)
CNC(110 20)
LIG(70,20,110,20)
LIG(20,30,50,30)
LIG(110,20,130,20)
LIG(70,40,70,50)
LIG(110,20,110,30)
TEXT 38 70  #.DC Vin 0 1 0.01
FFIG D:\Documents and Settings\sicard\Mes documents\software\Dsch\Dsch35\bugs\spiceamplidc.sch
