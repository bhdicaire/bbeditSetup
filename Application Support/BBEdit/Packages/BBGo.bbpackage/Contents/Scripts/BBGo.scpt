FasdUAS 1.101.10   ��   ��    k             l     ��������  ��  ��        l     �� 	 
��   	 @ : BBGo - Develop Go libraries and applications with BBEdit.    
 �   t   B B G o   -   D e v e l o p   G o   l i b r a r i e s   a n d   a p p l i c a t i o n s   w i t h   B B E d i t .      l     ��������  ��  ��        l     ��  ��    * $ Frank Mueller / Oldenburg / Germany     �   H   F r a n k   M u e l l e r   /   O l d e n b u r g   /   G e r m a n y      l     ��������  ��  ��        l     ��������  ��  ��        l     ����  r         I     �������� 0 makebbgo makeBBGo��  ��    o      ���� 0 bbgo bbGo��  ��        l    ����  O        I    �������� 0 displaymenu displayMenu��  ��     o    	���� 0 bbgo bbGo��  ��     ! " ! l     ��������  ��  ��   "  # $ # l     ��������  ��  ��   $  % & % l     �� ' (��   '   BBGo Tool.    ( � ) )    B B G o   T o o l . &  * + * l     ��������  ��  ��   +  , - , l     ��������  ��  ��   -  . / . i      0 1 0 I      �������� 0 makebbgo makeBBGo��  ��   1 k     
 2 2  3 4 3 h     �� 5�� 0 bbgo bbGo 5 k       6 6  7 8 7 l     �� 9 :��   9   Properties.    : � ; ;    P r o p e r t i e s . 8  < = < j     �� >�� 0 goroot goRoot > I    �� ?��
�� .fndrgstl****    ��� **** ? m      @ @ � A A  G O R O O T��   =  B C B j    �� D�� 0 gopath goPath D I   �� E��
�� .fndrgstl****    ��� **** E m     F F � G G  G O P A T H��   C  H I H j    �� J�� 0 
sourcepath 
sourcePath J m     K K � L L   I  M N M j    �� O�� 0 	directory   O m     P P � Q Q   N  R S R j    �� T�� 0 filename fileName T m     U U � V V   S  W X W j    �� Y�� 0 package   Y m     Z Z � [ [   X  \ ] \ j    �� ^�� 
0 binary   ^ m     _ _ � ` `   ]  a b a j    �� c�� 0 
identifier   c m     d d � e e   b  f g f j     $�� h�� 0 testfunction testFunction h m     # i i � j j   g  k l k j   % )�� m�� &0 benchmarkfunction benchmarkFunction m m   % ( n n � o o   l  p q p l     ��������  ��  ��   q  r s r l     �� t u��   t - ' Initialize the properties of the tool.    u � v v N   I n i t i a l i z e   t h e   p r o p e r t i e s   o f   t h e   t o o l . s  w x w i   * - y z y I      �������� 0 init  ��  ��   z k     { {  | } | l     �� ~ ��   ~   Check GOROOT.     � � �    C h e c k   G O R O O T . }  � � � Z     P � ����� � =     � � � o     ���� 0 goroot goRoot � m     � � � � �   � O   
 L � � � Z    K � � ��� � I   �� ���
�� .coredoexnull���     obj  � c     � � � m     � � � � � " / u s r / l o c a l / g o / b i n � m    ��
�� 
psxf��   � r     � � � m     � � � � �  / u s r / l o c a l / g o � o      ���� 0 goroot goRoot �  � � � I  " )�� ���
�� .coredoexnull���     obj  � c   " % � � � m   " # � � � � �  / o p t / g o / b i n � m   # $��
�� 
psxf��   �  � � � r   , 3 � � � m   , - � � � � �  / o p t / g o � o      ���� 0 goroot goRoot �  � � � I  6 =�� ���
�� .coredoexnull���     obj  � c   6 9 � � � m   6 7 � � � � � * / u s r / l o c a l / g o / c u r r e n t � m   7 8��
�� 
psxf��   �  ��� � r   @ G � � � m   @ A � � � � � * / u s r / l o c a l / g o / c u r r e n t � o      ���� 0 goroot goRoot��  ��   � m   
  � ��                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   �  � � � l  Q Q�� � ���   � "  Get directories and binary.    � � � � 8   G e t   d i r e c t o r i e s   a n d   b i n a r y . �  � � � O  Q ^ � � � r   U ] � � � n   U [ � � � m   Y [��
�� 
file � 4   U Y�� �
�� 
docu � m   W X����  � o      ���� 0 documentfile documentFile � m   Q R � ��                                                                                  R*ch  alis    "  Macintosh HD                   BD ����
BBEdit.app                                                     ����            ����  
 cu             Applications  /:Applications:BBEdit.app/   
 B B E d i t . a p p    M a c i n t o s h   H D  Applications/BBEdit.app   / ��   �  � � � O   _ { � � � k   c z � �  � � � r   c m � � � c   c k � � � l  c i ����� � n   c i � � � m   g i��
�� 
ctnr � 4   c g�� �
�� 
file � o   e f���� 0 documentfile documentFile��  ��   � m   i j��
�� 
alis � o      ���� 0 
filefolder 
fileFolder �  ��� � r   n z � � � n  n t � � � 1   r t��
�� 
pnam � 4   n r�� �
�� 
file � o   p q���� 0 documentfile documentFile � o      ���� 0 filename fileName��   � m   _ ` � ��                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   �  � � � r   | � � � � n   | � � � � 1   } ���
�� 
psxp � o   | }���� 0 
filefolder 
fileFolder � o      ���� 0 	directory   �  � � � r   � � � � � n   � � � � � 4   � ��� �
�� 
cobj � m   � ������� � I   � ��� ����� 0 tokenize   �  � � � o   � ����� 0 	directory   �  ��� � m   � � � � � � �  /��  ��   � o      ���� 
0 binary   �  � � � l  � ��� � ���   � ' ! Get GOPATH, package, and binary,    � � � � B   G e t   G O P A T H ,   p a c k a g e ,   a n d   b i n a r y , �  � � � r   � � � � � I   � ��� ����� 0 tokenize   �  � � � o   � ����� 0 	directory   �  ��� � m   � � � � � � � 
 / s r c /��  ��   � o      ���� 0 sourceparts sourceParts �  � � � Z   � � � ����� � =  � � � � � o   � ����� 0 gopath goPath � m   � � � � � � �   � r   � �   n   � � 4   � ���
�� 
cobj m   � �����  o   � ����� 0 sourceparts sourceParts o      ���� 0 gopath goPath��  ��   �  r   � � b   � �	
	 o   � ����� 0 gopath goPath
 m   � � � 
 / s r c / o      ���� 0 
sourcepath 
sourcePath  r   � � n   � � 4   � ���
�� 
cobj m   � �����  o   � ��� 0 sourceparts sourceParts o      �~�~ 0 package    l  � ��}�}     Code internals.    �     C o d e   i n t e r n a l s .  r   � � I   � ��|�{�z�| 0 getidentifier getIdentifier�{  �z   o      �y�y 0 
identifier    r   �  I   ��x!�w�x 0 getfunction getFunction! "�v" m   � �## �$$  T e s t�v  �w    o      �u�u 0 testfunction testFunction %�t% r  &'& I  �s(�r�s 0 getfunction getFunction( )�q) m  	** �++  B e n c h m a r k�q  �r  ' o      �p�p &0 benchmarkfunction benchmarkFunction�t   x ,-, l     �o�n�m�o  �n  �m  - ./. l     �l01�l  0    Display the menu of BBGo.   1 �22 4   D i s p l a y   t h e   m e n u   o f   B B G o ./ 343 i   . 1565 I      �k�j�i�k 0 displaymenu displayMenu�j  �i  6 k    �77 898 I     �h�g�f�h 0 init  �g  �f  9 :;: I    �e�d�c�e *0 checkgoinstallation checkGoInstallation�d  �c  ; <=< r    6>?> J    4@@ ABA m    CC �DD  F o r m a tB EFE m    GG �HH 
 B u i l dF IJI m    KK �LL  T e s tJ MNM m    OO �PP J T e s t   w i t h   c o v e r a g e   a n d   r a c e   d e t e c t i o nN QRQ m    SS �TT  B e n c h m a r kR UVU m    WW �XX  I n s t a l lV YZY m    [[ �\\  R u n   . . .Z ]^] m    __ �`` 
 C l e a n^ aba m    cc �dd  M o d   i n i tb efe m    gg �hh  M o d   t i d yf iji m    kk �ll  M o d   d o w n l o a dj mnm m    oo �pp  M o d   v e r i f yn qrq m    ss �tt  F i xr uvu m    ww �xx  V e tv yzy m    {{ �||  L i s tz }~} m      ���  E n v i r o n m e n t~ ��� m     #�� ���   D o c u m e n t   p a c k a g e� ��b� b   # 0��� b   # ,��� m   # &�� ��� F F i n d   d e f i n i t i o n   o f   f u n c t i o n   n a m e d   '� o   & +�a�a 0 
identifier  � m   , /�� ���  '�b  ? o      �`�` 0 rawmenu rawMenu= ��� r   7 ;��� J   7 9�_�_  � o      �^�^ 0 gomenu goMenu� ��� X   < ���]�� k   P ��� ��� r   P U��� b   P S��� o   P Q�\�\ 0 gomenu goMenu� o   Q R�[�[ 0 	menuentry 	menuEntry� o      �Z�Z 0 gomenu goMenu� ��� Z   V ����Y�X� F   V o��� l  V _��W�V� >  V _��� o   V [�U�U 0 testfunction testFunction� m   [ ^�� ���  �W  �V  � l  b k��T�S� =  b k��� n   b g��� 1   c g�R
�R 
pcnt� o   b c�Q�Q 0 	menuentry 	menuEntry� m   g j�� ���  T e s t�T  �S  � r   r ���� b   r ���� o   r s�P�P 0 gomenu goMenu� l  s ���O�N� b   s ���� b   s |��� m   s v�� ���  T e s t   f u n c t i o n   '� o   v {�M�M 0 testfunction testFunction� m   | �� ���  '�O  �N  � o      �L�L 0 gomenu goMenu�Y  �X  � ��K� Z   � ����J�I� F   � ���� l  � ���H�G� >  � ���� o   � ��F�F &0 benchmarkfunction benchmarkFunction� m   � ��� ���  �H  �G  � l  � ���E�D� =  � ���� n   � ���� 1   � ��C
�C 
pcnt� o   � ��B�B 0 	menuentry 	menuEntry� m   � ��� ���  B e n c h m a r k�E  �D  � r   � ���� b   � ���� o   � ��A�A 0 gomenu goMenu� l  � ���@�?� b   � ���� b   � ���� m   � ��� ��� ( B e n c h m a r k   f u n c t i o n   '� o   � ��>�> &0 benchmarkfunction benchmarkFunction� m   � ��� ���  '�@  �?  � o      �=�= 0 gomenu goMenu�J  �I  �K  �] 0 	menuentry 	menuEntry� o   ? @�<�< 0 rawmenu rawMenu� ��� I  � ��;��
�; .gtqpchltns    @   @ ns  � o   � ��:�: 0 gomenu goMenu� �9��
�9 
appr� m   � ��� ���  B B G o   v 0 . 1 0 . 0� �8��
�8 
prmp� m   � ��� ��� ( C h o o s e   y o u r   c o m m a n d :� �7��6
�7 
inSL� J   � ��� ��5� m   � ��� ��� 
 B u i l d�5  �6  � ��4� Z   �����3�2� >  � ���� l  � ���1�0� 1   � ��/
�/ 
rslt�1  �0  � m   � ��.
�. boovfals� k   ���� ��� r   � ���� n   � ���� 4   � ��-�
�- 
cobj� m   � ��,�, � 1   � ��+
�+ 
rslt� o      �*�* 0 menuselected menuSelected� ��)� Z   ������� =  � ���� o   � ��(�( 0 menuselected menuSelected� m   � �   �  F o r m a t� I   � ��'�&�'  0 performcommand performCommand  m   � � �  g o   f m t �% m   � ��$
�$ boovfals�%  �&  � 	 = 

 o  �#�# 0 menuselected menuSelected m   � 
 B u i l d	  I  
�"�!�"  0 performcommand performCommand  m   �  g o   b u i l d �  m  �
� boovfals�   �!    =  o  �� 0 menuselected menuSelected m   �  T e s t  I  '���  0 performcommand performCommand   m  "!! �"" : g o   t e s t   - v   - t i m e o u t   3 0 s   . / . . .  #�# m  "#�
� boovfals�  �   $%$ C  */&'& o  *+�� 0 menuselected menuSelected' m  +.(( �))  T e s t   f u n c t i o n% *+* I  2E�,��  0 performcommand performCommand, -.- b  3@/0/ b  3<121 m  3633 �44 @ g o   t e s t   - v   - t i m e o u t   3 0 s   - r u n   ^ \ (2 o  6;�� 0 testfunction testFunction0 m  <?55 �66  \ ) $. 7�7 m  @A�
� boovfals�  �  + 898 = HM:;: o  HI�� 0 menuselected menuSelected; m  IL<< �== J T e s t   w i t h   c o v e r a g e   a n d   r a c e   d e t e c t i o n9 >?> I  PY�@��  0 performcommand performCommand@ ABA m  QTCC �DD : g o   t e s t   - v   - c o v e r   - r a c e   . / . . .B E�E m  TU�
� boovtrue�  �  ? FGF = \aHIH o  \]�� 0 menuselected menuSelectedI m  ]`JJ �KK  B e n c h m a r kG LML I  dm�N��  0 performcommand performCommandN OPO m  ehQQ �RR ( g o   t e s t   - b e n c h   . / . . .P S�S m  hi�

�
 boovtrue�  �  M TUT C  puVWV o  pq�	�	 0 menuselected menuSelectedW m  qtXX �YY $ B e n c h m a r k   f u n c t i o nU Z[Z I  x��\��  0 performcommand performCommand\ ]^] b  y�_`_ m  y|aa �bb $ g o   t e s t   - v   - b e n c h  ` o  |��� &0 benchmarkfunction benchmarkFunction^ c�c m  ���
� boovtrue�  �  [ ded = ��fgf o  ���� 0 menuselected menuSelectedg m  ��hh �ii  I n s t a l le jkj I  ���l��  0 performcommand performCommandl mnm m  ��oo �pp  g o   i n s t a l ln q� q m  ����
�� boovfals�   �  k rsr = ��tut o  ������ 0 menuselected menuSelectedu m  ��vv �ww  R u n   . . .s xyx k  ��zz {|{ r  ��}~} l ������ n  ����� 1  ����
�� 
ttxt� l �������� I ������
�� .sysodlogaskr        TEXT� l �������� b  ����� b  ����� m  ���� ��� . A r g u m e n t s   f o r   r u n n i n g   '� o  ������ 
0 binary  � m  ���� ���  ' :��  ��  � �����
�� 
dtxt� m  ���� ���  ��  ��  ��  ��  ��  ~ o      ���� 0 	arguments  | ���� I  ���������  0 performcommand performCommand� ��� l �������� b  ����� m  ���� ��� ( g o   r u n   * [ ^ _ t e s t ] . g o  � o  ������ 0 	arguments  ��  ��  � ���� m  ����
�� boovtrue��  ��  ��  y ��� = ����� o  ������ 0 menuselected menuSelected� m  ���� ��� 
 C l e a n� ��� I  ���������  0 performcommand performCommand� ��� m  ���� ���  g o   c l e a n� ���� m  ����
�� boovfals��  ��  � ��� = ����� o  ������ 0 menuselected menuSelected� m  ���� ���  M o d   i n i t� ��� I  ���������  0 performcommand performCommand� ��� m  ���� ���  g o   m o d   i n i t� ���� m  ����
�� boovfals��  ��  � ��� = ����� o  ������ 0 menuselected menuSelected� m  ���� ���  M o d   t i d y� ��� I  �������  0 performcommand performCommand� ��� m  �� ���  g o   m o d   t i d y� ���� m  ��
�� boovfals��  ��  � ��� = ��� o  ���� 0 menuselected menuSelected� m  �� ���  M o d   d o w n l o a d� ��� I  �������  0 performcommand performCommand� ��� m  �� ���  g o   m o d   d o w n l o a d� ���� m  ��
�� boovfals��  ��  � ��� = "'��� o  "#���� 0 menuselected menuSelected� m  #&�� ���  M o d   v e r i f y� ��� I  *3�������  0 performcommand performCommand� ��� m  +.�� ���  g o   m o d   v e r i f y� ���� m  ./��
�� boovfals��  ��  � ��� = 6;��� o  67���� 0 menuselected menuSelected� m  7:�� ���  F i x� ��� I  >G�������  0 performcommand performCommand� ��� m  ?B�� ���  g o   f i x� ���� m  BC��
�� boovfals��  ��  � ��� = JO��� o  JK���� 0 menuselected menuSelected� m  KN�� ���  V e t� ��� I  R[�������  0 performcommand performCommand� ��� m  SV�� ���   g o   t o o l   v e t   - v   .� ���� m  VW��
�� boovfals��  ��  � ��� = ^c� � o  ^_���� 0 menuselected menuSelected  m  _b �  L i s t�  I  fo������  0 performcommand performCommand  m  gj �		  g o   l i s t 
��
 m  jk��
�� boovtrue��  ��    = rw o  rs���� 0 menuselected menuSelected m  sv �  E n v i r o n m e n t  I  z�������  0 performcommand performCommand  m  {~ �  g o   e n v �� m  ~��
�� boovtrue��  ��    = �� o  ������ 0 menuselected menuSelected m  �� �   D o c u m e n t   p a c k a g e   I  ����!����  0 performcommand performCommand! "#" b  ��$%$ m  ��&& �''  g o d o c  % o  ������ 0 
thepackage 
thePackage# (��( m  ����
�� boovtrue��  ��    )*) C  ��+,+ o  ������ 0 menuselected menuSelected, m  ��-- �..  F i n d   d e f i n i t i o n* /��/ I  ����0����  0 finddefinition findDefinition0 1��1 o  ������ 0 
identifier  ��  ��  ��  � I ����2��
�� .sysodlogaskr        TEXT2 b  ��343 b  ��565 m  ��77 �88  '6 o  ������ 0 menuselected menuSelected4 m  ��99 �::  '   n o t   e v a l u a t e d��  �)  �3  �2  �4  4 ;<; l     ��������  ��  ��  < =>= l     ��?@��  ? 1 + Check if a Go installation has been found.   @ �AA V   C h e c k   i f   a   G o   i n s t a l l a t i o n   h a s   b e e n   f o u n d .> BCB i   2 5DED I      �������� *0 checkgoinstallation checkGoInstallation��  ��  E Z     FG����F =    HIH o     ���� 0 goroot goRootI m    JJ �KK  G R   
 ��L��
�� .ascrerr ****      � ****L m    MM �NN 2 N o   G o   i n s t a l l a t i o n   f o u n d !��  ��  ��  C OPO l     ��������  ��  ��  P QRQ l     ��ST��  S * $ Check if current file is a Go file.   T �UU H   C h e c k   i f   c u r r e n t   f i l e   i s   a   G o   f i l e .R VWV i   6 9XYX I      �������� 0 isgofile isGoFile��  ��  Y k     ZZ [\[ Z     ]^����] D     _`_ o     ���� 0 filename fileName` m    aa �bb  . g o^ L   
 cc m   
 ��
�� boovtrue��  ��  \ d��d L    ee m    ��
�� boovfals��  W fgf l     ��������  ��  ��  g hih l     ��jk��  j A ; Show the output of a command in the Unix Worksheet Window.   k �ll v   S h o w   t h e   o u t p u t   o f   a   c o m m a n d   i n   t h e   U n i x   W o r k s h e e t   W i n d o w .i mnm i   : =opo I      ��q���� 0 
showoutput 
showOutputq r��r o      ���� 0 anoutput anOutput��  ��  p O     .sts k    -uu vwv I   ����x
�� .corecrel****      � null��  x ��yz
�� 
kocly m    ��
�� 
cwinz ��{��
�� 
prdt{ K    || ��}~
�� 
pnam} m   	 
 ���  O u t p u t~ �����
�� 
pbnd� J    �� ��� m    ���� d� ��� m    ���� 2� ��� m    ������ ���� m    �����  ��  ��  w ��� I   %�~��}
�~ .miscslctnull��� ��� obj � n    !��� n    !��� 9    !�|
�| 
cins� 4   �{�
�{ 
cha � m    �z�z��� 4    �y�
�y 
TxtW� m    �x�x �}  � ��w� r   & -��� o   & '�v�v 0 anoutput anOutput� 1   ' ,�u
�u 
pusl�w  t m     ���                                                                                  R*ch  alis    "  Macintosh HD                   BD ����
BBEdit.app                                                     ����            ����  
 cu             Applications  /:Applications:BBEdit.app/   
 B B E d i t . a p p    M a c i n t o s h   H D  Applications/BBEdit.app   / ��  n ��� l     �t�s�r�t  �s  �r  � ��� l     �q���q  �   Show a notification.   � ��� *   S h o w   a   n o t i f i c a t i o n .� ��� i   > A��� I      �p��o�p $0 shownotification showNotification� ��n� o      �m�m 0 anotification aNotification�n  �o  � O     
��� I   	�l��k
�l .sysonotfnull��� ��� TEXT� o    �j�j 0 anotification aNotification�k  � m     ���                                                                                  R*ch  alis    "  Macintosh HD                   BD ����
BBEdit.app                                                     ����            ����  
 cu             Applications  /:Applications:BBEdit.app/   
 B B E d i t . a p p    M a c i n t o s h   H D  Applications/BBEdit.app   / ��  � ��� l     �i�h�g�i  �h  �g  � ��� l     �f���f  � B < Analyse the results of a build command and show them in the   � ��� x   A n a l y s e   t h e   r e s u l t s   o f   a   b u i l d   c o m m a n d   a n d   s h o w   t h e m   i n   t h e� ��� l     �e���e  �   results browser.   � ��� "   r e s u l t s   b r o w s e r .� ��� i   B E��� I      �d��c�d 0 showresults showResults� ��� o      �b�b 0 aname aName� ��a� o      �`�` 0 aresult aResult�a  �c  � O     ��� k    �� ��� I   �_�^�
�_ .corecrel****      � null�^  � �]��
�] 
kocl� m    �\
�\ 
RslW� �[��
�[ 
data� o    	�Z�Z 0 aresult aResult� �Y��X
�Y 
prdt� K   
 �� �W��V
�W 
pnam� o    �U�U 0 aname aName�V  �X  � ��T� I   �S�R�Q
�S .miscactvnull��� ��� obj �R  �Q  �T  � m     ���                                                                                  R*ch  alis    "  Macintosh HD                   BD ����
BBEdit.app                                                     ����            ����  
 cu             Applications  /:Applications:BBEdit.app/   
 B B E d i t . a p p    M a c i n t o s h   H D  Applications/BBEdit.app   / ��  � ��� l     �P�O�N�P  �O  �N  � ��� l     �M���M  � + % Get the identifier below the cursor.   � ��� J   G e t   t h e   i d e n t i f i e r   b e l o w   t h e   c u r s o r .� ��� i   F I��� I      �L�K�J�L 0 getidentifier getIdentifier�K  �J  � O     9��� O    8��� k    7�� ��� r    ��� n    ��� 1    �I
�I 
Ofse� 1    �H
�H 
pusl� o      �G�G 0 selectoffset selectOffset� ��� I   $�F��E
�F .miscslctnull��� ��� obj � l    ��D�C� 6    ��� 4   �B�
�B 
cwor� m    �A�A��� B    ��� 1    �@
�@ 
Ofse� o    �?�? 0 selectoffset selectOffset�D  �C  �E  � ��� r   % 0��� n   % *��� m   ( *�>
�> 
ctxt� 1   % (�=
�= 
pusl� o      �<�< 0 
identifier  � ��;� L   1 7�� o   1 6�:�: 0 
identifier  �;  � 4    �9�
�9 
cwin� m    �8�8 � m     ���                                                                                  R*ch  alis    "  Macintosh HD                   BD ����
BBEdit.app                                                     ����            ����  
 cu             Applications  /:Applications:BBEdit.app/   
 B B E d i t . a p p    M a c i n t o s h   H D  Applications/BBEdit.app   / ��  � ��� l     �7�6�5�7  �6  �5  � ��� l     �4���4  � : 4 Get test or benchmark function for cursor position.   � ��� h   G e t   t e s t   o r   b e n c h m a r k   f u n c t i o n   f o r   c u r s o r   p o s i t i o n .� ��� i   J M��� I      �3��2�3 0 getfunction getFunction�  �1  o      �0�0 0 atype aType�1  �2  � k     A  O     > O    = k    < 	
	 r     b     b     m     � 
 f u n c   o    �/�/ 0 atype aType m     � " [ A - Z ] [ a - z A - Z 0 - 9 ] * o      �.�. 0 pattern  
  r    % I   #�-
�- .R*chFindMtch���     TEXT o    �,�, 0 pattern   �+�*
�+ 
Opts K     �)
�) 
SMod m    �(
�( SModGrep �' 
�' 
Rvrs m    �&
�& boovtrue  �%!"
�% 
Wrds! m    �$
�$ boovtrue" �##�"
�# 
Orsl# m    �!
�! boovfals�"  �*   o      � �  	0 match   $�$ Z   & <%&��% n   & *'(' 1   ' )�
� 
Fnd?( o   & '�� 	0 match  & k   - 8)) *+* r   - 5,-, n   - 3./. 4 0 3�0
� 
cwor0 m   1 2�� / n   - 0121 1   . 0�
� 
MTxt2 o   - .�� 	0 match  - o      �� 0 functionname functionName+ 3�3 L   6 844 o   6 7�� 0 functionname functionName�  �  �  �   4    �5
� 
TxtW5 m    ��  m     66�                                                                                  R*ch  alis    "  Macintosh HD                   BD ����
BBEdit.app                                                     ����            ����  
 cu             Applications  /:Applications:BBEdit.app/   
 B B E d i t . a p p    M a c i n t o s h   H D  Applications/BBEdit.app   / ��   7�7 L   ? A88 m   ? @99 �::  �  � ;<; l     ����  �  �  < =>= l     �?@�  ? 5 / Split a text into parts by a passed delimiter.   @ �AA ^   S p l i t   a   t e x t   i n t o   p a r t s   b y   a   p a s s e d   d e l i m i t e r .> BCB i   N QDED I      �F�� 0 tokenize  F GHG o      �
�
 0 atext aTextH I�	I o      �� 0 
adelimiter 
aDelimiter�	  �  E k     JJ KLK r     MNM n    OPO 1    �
� 
txdlP 1     �
� 
ascrN o      �� $0 theprevdelimiter thePrevDelimiterL QRQ r    STS o    �� 0 
adelimiter 
aDelimiterT n     UVU 1    
�
� 
txdlV 1    �
� 
ascrR WXW r    YZY n   [\[ 2   �
� 
citm\ o    � �  0 atext aTextZ o      ���� 0 	thetokens 	theTokensX ]^] r    _`_ o    ���� $0 theprevdelimiter thePrevDelimiter` n     aba 1    ��
�� 
txdlb 1    ��
�� 
ascr^ c��c L    dd o    ���� 0 	thetokens 	theTokens��  C efe l     ��������  ��  ��  f ghg l     ��ij��  i 9 3 Join a list into a text with the passed delimiter.   j �kk f   J o i n   a   l i s t   i n t o   a   t e x t   w i t h   t h e   p a s s e d   d e l i m i t e r .h lml i   R Unon I      ��p���� 0 join  p qrq o      ���� 0 alist aListr s��s o      ���� 0 
adelimiter 
aDelimiter��  ��  o k     tt uvu r     wxw m     yy �zz  x o      ���� 0 	theretval 	theRetValv {|{ r    	}~} n   � 1    ��
�� 
txdl� 1    ��
�� 
ascr~ o      ���� $0 theprevdelimiter thePrevDelimiter| ��� r   
 ��� o   
 ���� 0 
adelimiter 
aDelimiter� n     ��� 1    ��
�� 
txdl� 1    ��
�� 
ascr� ��� r    ��� c    ��� o    ���� 0 alist aList� m    ��
�� 
TEXT� o      ���� 0 	theretval 	theRetVal� ��� r    ��� o    ���� $0 theprevdelimiter thePrevDelimiter� n     ��� 1    ��
�� 
txdl� 1    ��
�� 
ascr� ���� L    �� o    ���� 0 	theretval 	theRetVal��  m ��� l     ��������  ��  ��  � ��� l     ������  � 9 3 Parse the results line by line and create the data   � ��� f   P a r s e   t h e   r e s u l t s   l i n e   b y   l i n e   a n d   c r e a t e   t h e   d a t a� ��� l     ������  �   for the result browser.   � ��� 0   f o r   t h e   r e s u l t   b r o w s e r .� ��� i   V Y��� I      ������� 0 parseresults parseResults� ���� o      ���� 0 anoutput anOutput��  ��  � k     ��� ��� O     ���� k    ��� ��� r    ��� J    ����  � o      ���� 0 results  � ��� r   	 ��� n   	 ��� 2  
 ��
�� 
cpar� o   	 
���� 0 anoutput anOutput� o      ���� 0 resultlines resultLines� ���� X    ������ k    ��� ��� r    (��� n   &��� I     &������� 0 tokenize  � ��� o     !���� 0 nextline nextLine� ���� m   ! "�� ���  :��  ��  �  f     � o      ���� 
0 tokens  � ���� Z   ) �������� ?  ) 0��� l  ) .������ I  ) .�����
�� .corecnte****       ****� o   ) *���� 
0 tokens  ��  ��  ��  � m   . /���� � Q   3 ����� k   6 ��� ��� r   6 I��� n  6 G��� I   7 G������� 0 join  � ��� J   7 B�� ��� o   7 <���� 0 	directory  � ���� n   < @��� 4   = @���
�� 
cobj� m   > ?���� � o   < =���� 
0 tokens  ��  � ���� m   B C�� ���  /��  ��  �  f   6 7� o      ����  0 resultfilename resultFileName� ��� Q   J e���� r   M Z��� n   M X��� 7  N X����
�� 
ctxt� m   R T������� m   U W������� o   M N����  0 resultfilename resultFileName� o      ���� *0 resultfileextension resultFileExtension� R      ������
�� .ascrerr ****      � ****��  ��  � r   b e��� m   b c�� ���  � o      ���� *0 resultfileextension resultFileExtension� ���� Z   f �������� =  f i��� o   f g���� *0 resultfileextension resultFileExtension� m   g h�� ���  . g o� k   l ��� ��� r   l t��� c   l r   l  l p���� n   l p 4   m p��
�� 
cobj m   n o����  o   l m���� 
0 tokens  ��  ��   m   p q��
�� 
nmbr� o      ���� 0 resultlineno resultLineNo�  r   u �	 n   u 

 7  v ��
�� 
cobj m   z |����   ;   } ~ o   u v���� 
0 tokens  	 o      ���� 0 messagetokens messageTokens  r   � � n  � � I   � ������� 0 join    o   � ����� 0 messagetokens messageTokens �� m   � � �  :��  ��    f   � � o      ���� 0 resultmessage resultMessage  r   � � K   � � �� 
�� 
Ersl m   � ���
�� ErslErr   ��!"
�� 
Efil! o   � �����  0 resultfilename resultFileName" ��#$
�� 
Elin# o   � ����� 0 resultlineno resultLineNo$ ��%��
�� 
Etxt% o   � ����� 0 resultmessage resultMessage��   o      ���� 0 
nextresult 
nextResult &��& s   � �'(' o   � ����� 0 
nextresult 
nextResult( n      )*)  ;   � �* o   � ����� 0 results  ��  ��  ��  ��  � R      ��+��
�� .ascrerr ****      � ****+ o      ���� 0 
parseerror 
parseError��  � I  � ���,��
�� .sysonotfnull��� ��� TEXT, c   � �-.- o   � ����� 0 
parseerror 
parseError. m   � ���
�� 
ctxt��  ��  ��  ��  �� 0 nextline nextLine� o    ���� 0 resultlines resultLines��  � m     //�                                                                                  R*ch  alis    "  Macintosh HD                   BD ����
BBEdit.app                                                     ����            ����  
 cu             Applications  /:Applications:BBEdit.app/   
 B B E d i t . a p p    M a c i n t o s h   H D  Applications/BBEdit.app   / ��  � 0��0 L   � �11 o   � ����� 0 results  ��  � 232 l     ��������  ��  ��  3 454 l     ��67��  6 A ; Perform a shell command in a safe way and show the output.   7 �88 v   P e r f o r m   a   s h e l l   c o m m a n d   i n   a   s a f e   w a y   a n d   s h o w   t h e   o u t p u t .5 9:9 i   Z ];<; I      ��=����  0 performcommand performCommand= >?> o      ���� 0 acommand aCommand? @�@ o      �~�~ 0 anoutputflag anOutputFlag�  ��  < k     �AA BCB r     DED b     FGF m     HH �II . e x p o r t   G O 1 1 1 M O D U L E = ' o n 'G m    JJ �KK    & &  E o      �}�} 0 envgomodule envGoModuleC LML r    NON b    PQP b    RSR m    TT �UU  e x p o r t   G O R O O T =S o    �|�| 0 goroot goRootQ m    VV �WW    & &  O o      �{�{ 0 	envgoroot 	envGoRootM XYX r    Z[Z b    \]\ b    ^_^ m    `` �aa  e x p o r t   G O P A T H =_ o    �z�z 0 gopath goPath] m    bb �cc    & &  [ o      �y�y 0 	envgopath 	envGoPathY ded r    !fgf m    hh �ii B e x p o r t   P A T H = $ P A T H : $ G O R O O T / b i n   & &  g o      �x�x 0 envpath envPathe jkj r   " -lml b   " +non b   " )pqp m   " #rr �ss  c d  q o   # (�w�w 0 	directory  o m   ) *tt �uu    & &  m o      �v�v 0 chdir chDirk vwv r   . 9xyx b   . 7z{z b   . 5|}| b   . 3~~ b   . 1��� o   . /�u�u 0 	envgoroot 	envGoRoot� o   / 0�t�t 0 	envgopath 	envGoPath o   1 2�s�s 0 envpath envPath} o   3 4�r�r 0 chdir chDir{ o   5 6�q�q 0 acommand aCommandy o      �p�p 0 command  w ��� r   : G��� b   : E��� b   : ?��� b   : =��� m   : ;�� ���  P e r f o r m e d  � o   ; <�o�o 0 acommand aCommand� m   = >�� ���    i n  � o   ? D�n�n 0 	directory  � o      �m�m 0 	performed  � ��l� Q   H ����� k   K j�� ��� r   K R��� I  K P�k��j
�k .sysoexecTEXT���     TEXT� o   K L�i�i 0 command  �j  � o      �h�h 0 commandoutput commandOutput� ��g� Z   S j���f�� o   S T�e�e 0 anoutputflag anOutputFlag� I   W ]�d��c�d 0 
showoutput 
showOutput� ��b� o   X Y�a�a 0 commandoutput commandOutput�b  �c  �f  � I   ` j�`��_�` $0 shownotification showNotification� ��^� b   a f��� b   a d��� m   a b�� ���  P e r f o r m e d  � o   b c�]�] 0 acommand aCommand� m   d e�� ��� 
 :   O K !�^  �_  �g  � R      �\��[
�\ .ascrerr ****      � ****� o      �Z�Z 0 errormessage errorMessage�[  � Q   r ����� k   u ��� ��� r   u }��� I   u {�Y��X�Y 0 parseresults parseResults� ��W� o   v w�V�V 0 errormessage errorMessage�W  �X  � o      �U�U 0 errorresults errorResults� ��T� Z   ~ ����S�� ?   ~ ���� l  ~ ���R�Q� I  ~ ��P��O
�P .corecnte****       ****� o   ~ �N�N 0 errorresults errorResults�O  �R  �Q  � m   � ��M�M  � I   � ��L��K�L 0 showresults showResults� ��� o   � ��J�J 0 	performed  � ��I� o   � ��H�H 0 errorresults errorResults�I  �K  �S  � I   � ��G��F�G 0 
showoutput 
showOutput� ��E� o   � ��D�D 0 errormessage errorMessage�E  �F  �T  � R      �C�B�A
�C .ascrerr ****      � ****�B  �A  � k   � ��� ��� l  � ��@���@  �   Save fallback.   � ���    S a v e   f a l l b a c k .� ��?� I   � ��>��=�> 0 
showoutput 
showOutput� ��<� o   � ��;�; 0 errormessage errorMessage�<  �=  �?  �l  : ��� l     �:�9�8�:  �9  �8  � ��� l     �7���7  � @ : Find the definition of a function based on a passed word.   � ��� t   F i n d   t h e   d e f i n i t i o n   o f   a   f u n c t i o n   b a s e d   o n   a   p a s s e d   w o r d .� ��� l     �6���6  � A ; TODO: Filter for Go and filter and w/o vendor directories.   � ��� v   T O D O :   F i l t e r   f o r   G o   a n d   f i l t e r   a n d   w / o   v e n d o r   d i r e c t o r i e s .� ��5� i   ^ a��� I      �4��3�4  0 finddefinition findDefinition� ��2� o      �1�1 0 aname aName�2  �3  � O     =��� O    <��� k    ;�� ��� r    ��� c    ��� o    �0�0 0 
sourcepath 
sourcePath� m    �/
�/ 
psxf� o      �.�.  0 searchlocation searchLocation� ��� r    #��� K    !�� �-��
�- 
SMod� m    �,
�, SModGrep� �+��
�+ 
Case� m    �*
�* boovtrue� �)��
�) 
Wrds� m    �(
�( boovtrue� �'��
�' 
Orsl� m    �&
�& boovtrue� �%��$
�% 
Rrsl� m    �#
�# boovtrue�$  � o      �"�" 0 searchoptions searchOptions� ��� r   $ +��� b   $ )��� b   $ '��� m   $ %�� ��� & f u n c \ s * ( \ ( . * \ ) ) ? \ s *� o   % &�!�! 0 aname aName� m   ' (   �  \ (� o      � �  0 searchpattern searchPattern� � I  , ;�
� .R*chFindMtch���     TEXT o   , -�� 0 searchpattern searchPattern �
� 
FnIn o   . /��  0 searchlocation searchLocation �
� 
Opts o   0 1�� 0 searchoptions searchOptions �	

� 
Recu	 m   2 3�
� boovtrue
 ��
� 
Cmp? m   4 5�
� boovfals�  �  � 4    �
� 
TxtW m    �� � m     �                                                                                  R*ch  alis    "  Macintosh HD                   BD ����
BBEdit.app                                                     ����            ����  
 cu             Applications  /:Applications:BBEdit.app/   
 B B E d i t . a p p    M a c i n t o s h   H D  Applications/BBEdit.app   / ��  �5   4  l   ����  �  �   � L    
 o    	�� 0 bbgo bbGo�   /  l     ���
�  �  �
    l     �	���	  �  �    l     ��   
  EOF    �    E O F  l     ����  �  �   � l     �� ���  �   ��  �       �� ��   ������ 0 makebbgo makeBBGo
�� .aevtoappnull  �   � **** �� 1����!"���� 0 makebbgo makeBBGo��  ��  ! ���� 0 bbgo bbGo" �� 5#�� 0 bbgo bbGo# ��$����%&��
�� .ascrinit****      � ****$ k     a''  <((  B))  H**  M++  R,,  W--  \..  a//  f00  k11  w22 333 B44 V55 m66 �77 �88 �99 �:: B;; l<< �== 9>> �����  ��  ��  % �������������������������������������������������� 0 goroot goRoot�� 0 gopath goPath�� 0 
sourcepath 
sourcePath�� 0 	directory  �� 0 filename fileName�� 0 package  �� 
0 binary  �� 0 
identifier  �� 0 testfunction testFunction�� &0 benchmarkfunction benchmarkFunction�� 0 init  �� 0 displaymenu displayMenu�� *0 checkgoinstallation checkGoInstallation�� 0 isgofile isGoFile�� 0 
showoutput 
showOutput�� $0 shownotification showNotification�� 0 showresults showResults�� 0 getidentifier getIdentifier�� 0 getfunction getFunction�� 0 tokenize  �� 0 join  �� 0 parseresults parseResults��  0 performcommand performCommand��  0 finddefinition findDefinition& # @���� F�� K�� P�� U�� Z�� _�� d�� i�� n��?@ABCDEFGHIJKL
�� .fndrgstl****    ��� ****�� 0 goroot goRoot�� 0 gopath goPath�� 0 
sourcepath 
sourcePath�� 0 	directory  �� 0 filename fileName�� 0 package  �� 
0 binary  �� 0 
identifier  �� 0 testfunction testFunction�� &0 benchmarkfunction benchmarkFunction? �� z����MN���� 0 init  ��  ��  M �������� 0 documentfile documentFile�� 0 
filefolder 
fileFolder�� 0 sourceparts sourcePartsN  � � ����� � � � � � ������������� ������� � ���#��*
�� 
psxf
�� .coredoexnull���     obj 
�� 
docu
�� 
file
�� 
ctnr
�� 
alis
�� 
pnam
�� 
psxp�� 0 tokenize  
�� 
cobj������ 0 getidentifier getIdentifier�� 0 getfunction getFunction��b   �  G� ?��&j  �Ec   Y +��&j  �Ec   Y ��&j  �Ec   Y hUY hO� 
*�k/�,E�UO� *�/�,�&E�O*�/�,Ec  UO�a ,Ec  O*b  a l+ a a /Ec  O*b  a l+ E�Ob  a   �a k/Ec  Y hOb  a %Ec  O�a l/Ec  O*j+ Ec  O*a k+ Ec  O*a k+ Ec  	@ ��6����OP���� 0 displaymenu displayMenu��  ��  O �������������� 0 rawmenu rawMenu�� 0 gomenu goMenu�� 0 	menuentry 	menuEntry�� 0 menuselected menuSelected�� 0 	arguments  �� 0 
thepackage 
thePackageP ^����CGKOSW[_cgkosw{�������������������������������������� ��!(35<CJQXahov������������������������&-��79�� 0 init  �� *0 checkgoinstallation checkGoInstallation�� 
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
pcnt
�� 
bool
�� 
appr
�� 
prmp
�� 
inSL�� 
�� .gtqpchltns    @   @ ns  
�� 
rslt��  0 performcommand performCommand
�� 
dtxt
�� .sysodlogaskr        TEXT
�� 
ttxt��  0 finddefinition findDefinition���*j+  O*j+ O��������������a a a a b  %a %a vE�OjvE�O ��[a a l kh ��%E�Ob  a 	 �a ,a  a & �a b  %a %%E�Y hOb  	a 	 �a ,a   a & �a !b  	%a "%%E�Y h[OY��O�a #a $a %a &a 'a (kva ) *O_ +f�_ +a k/E�O�a ,  *a -fl+ .Y��a /  *a 0fl+ .Y��a 1  *a 2fl+ .Y��a 3 *a 4b  %a 5%fl+ .Yx�a 6  *a 7el+ .Yd�a 8  *a 9el+ .YP�a : *a ;b  	%el+ .Y6�a <  *a =fl+ .Y"�a >  .a ?b  %a @%a Aa Bl Ca D,E�O*a E�%el+ .Y �a F  *a Gfl+ .Y ڣa H  *a Ifl+ .Y ƣa J  *a Kfl+ .Y ��a L  *a Mfl+ .Y ��a N  *a Ofl+ .Y ��a P  *a Qfl+ .Y v�a R  *a Sfl+ .Y b�a T  *a Uel+ .Y N�a V  *a Wel+ .Y :�a X  *a Y�%el+ .Y $�a Z *b  k+ [Y a \�%a ]%j CY hA ��E����QR���� *0 checkgoinstallation checkGoInstallation��  ��  Q  R JM�� b   �  	)j�Y hB ��Y����ST���� 0 isgofile isGoFile��  ��  S  T a�� b  � eY hOfC ��p����UV���� 0 
showoutput 
showOutput�� ��W�� W  ���� 0 anoutput anOutput��  U ���� 0 anoutput anOutputV �������������������������������~
�� 
kocl
�� 
cwin
�� 
prdt
�� 
pnam
�� 
pbnd�� d�� 2�������� 
�� .corecrel****      � null
�� 
TxtW
�� 
cha 
�� 
cins
� .miscslctnull��� ��� obj 
�~ 
pusl�� /� +*�����������v�� O*�k/�i/�4j O�*a ,FUD �}��|�{XY�z�} $0 shownotification showNotification�| �yZ�y Z  �x�x 0 anotification aNotification�{  X �w�w 0 anotification aNotificationY ��v
�v .sysonotfnull��� ��� TEXT�z � �j UE �u��t�s[\�r�u 0 showresults showResults�t �q]�q ]  �p�o�p 0 aname aName�o 0 aresult aResult�s  [ �n�m�n 0 aname aName�m 0 aresult aResult\ 	��l�k�j�i�h�g�f�e
�l 
kocl
�k 
RslW
�j 
data
�i 
prdt
�h 
pnam�g 
�f .corecrel****      � null
�e .miscactvnull��� ��� obj �r � *�����l� O*j UF �d��c�b^_�a�d 0 getidentifier getIdentifier�c  �b  ^ �`�` 0 selectoffset selectOffset_ ��_�^�]�\`�[�Z
�_ 
cwin
�^ 
pusl
�] 
Ofse
�\ 
cwor`  
�[ .miscslctnull��� ��� obj 
�Z 
ctxt�a :� 6*�k/ .*�,�,E�O*�i/�[�,\Z�=1j O*�,�-Ec  Ob  UUG �Y��X�Wab�V�Y 0 getfunction getFunction�X �Uc�U c  �T�T 0 atype aType�W  a �S�R�Q�P�S 0 atype aType�R 0 pattern  �Q 	0 match  �P 0 functionname functionNameb 6�O�N�M�L�K�J�I�H�G�F�E�D9
�O 
TxtW
�N 
Opts
�M 
SMod
�L SModGrep
�K 
Rvrs
�J 
Wrds
�I 
Orsl�H 
�G .R*chFindMtch���     TEXT
�F 
Fnd?
�E 
MTxt
�D 
cwor�V B� ;*�k/ 3�%�%E�O�����e�e�f�l E�O��,E ��,�l/E�O�Y hUUO�H �CE�B�Ade�@�C 0 tokenize  �B �?f�? f  �>�=�> 0 atext aText�= 0 
adelimiter 
aDelimiter�A  d �<�;�:�9�< 0 atext aText�; 0 
adelimiter 
aDelimiter�: $0 theprevdelimiter thePrevDelimiter�9 0 	thetokens 	theTokense �8�7�6
�8 
ascr
�7 
txdl
�6 
citm�@ ��,E�O���,FO��-E�O���,FO�I �5o�4�3gh�2�5 0 join  �4 �1i�1 i  �0�/�0 0 alist aList�/ 0 
adelimiter 
aDelimiter�3  g �.�-�,�+�. 0 alist aList�- 0 
adelimiter 
aDelimiter�, 0 	theretval 	theRetVal�+ $0 theprevdelimiter thePrevDelimiterh y�*�)�(
�* 
ascr
�) 
txdl
�( 
TEXT�2 �E�O��,E�O���,FO��&E�O���,FO�J �'��&�%jk�$�' 0 parseresults parseResults�& �#l�# l  �"�" 0 anoutput anOutput�%  j �!� �����������! 0 anoutput anOutput�  0 results  � 0 resultlines resultLines� 0 nextline nextLine� 
0 tokens  �  0 resultfilename resultFileName� *0 resultfileextension resultFileExtension� 0 resultlineno resultLineNo� 0 messagetokens messageTokens� 0 resultmessage resultMessage� 0 
nextresult 
nextResult� 0 
parseerror 
parseErrork /����������������
�	������
� 
cpar
� 
kocl
� 
cobj
� .corecnte****       ****� 0 tokenize  � 0 join  
� 
ctxt����  �  
� 
nmbr
�
 
Ersl
�	 ErslErr 
� 
Efil
� 
Elin
� 
Etxt� � 0 
parseerror 
parseError
� .sysonotfnull��� ��� TEXT�$ �� �jvE�O��-E�O ��[��l kh )��l+ E�O�j l � ~)b  ��k/lv�l+ E�O �[�\[Z�\Zi2E�W 
X  �E�O��  D��l/�&E�O�[�\[Zm\62E�O)�a l+ E�Oa a a �a �a �a E�O��6GY hW X  ��&j Y h[OY�WUO�K �<�� mn���  0 performcommand performCommand� ��o�� o  ������ 0 acommand aCommand�� 0 anoutputflag anOutputFlag�   m �������������������������� 0 acommand aCommand�� 0 anoutputflag anOutputFlag�� 0 envgomodule envGoModule�� 0 	envgoroot 	envGoRoot�� 0 	envgopath 	envGoPath�� 0 envpath envPath�� 0 chdir chDir�� 0 command  �� 0 	performed  �� 0 commandoutput commandOutput�� 0 errormessage errorMessage�� 0 errorresults errorResultsn HJTV`bhrt����������������������
�� .sysoexecTEXT���     TEXT�� 0 
showoutput 
showOutput�� $0 shownotification showNotification�� 0 errormessage errorMessage��  �� 0 parseresults parseResults
�� .corecnte****       ****�� 0 showresults showResults��  �� ���%E�O�b   %�%E�O�b  %�%E�O�E�O�b  %�%E�O��%�%�%�%E�O�%�%b  %E�O $�j E�O� *�k+ Y *��%�%k+ W ;X   (*�k+ E�O�j j *��l+ Y *�k+ W X  *�k+ L �������pq����  0 finddefinition findDefinition�� ��r�� r  ���� 0 aname aName��  p ���������� 0 aname aName��  0 searchlocation searchLocation�� 0 searchoptions searchOptions�� 0 searchpattern searchPatternq ������������������� ������������
�� 
TxtW
�� 
psxf
�� 
SMod
�� SModGrep
�� 
Case
�� 
Wrds
�� 
Orsl
�� 
Rrsl�� 

�� 
FnIn
�� 
Opts
�� 
Recu
�� 
Cmp?�� 
�� .R*chFindMtch���     TEXT�� >� :*�k/ 2b  �&E�O���e�e�e�e�E�O�%�%E�O�����e�fa  UU�� b�j �O�j �O�O�O�O�O��O�Oa �Oa �OL OL OL OL OL OL OL OL OL OL OL OL  OL !OL "�� ��K S�O�  ��s����tu��
�� .aevtoappnull  �   � ****s k     vv  ww  ����  ��  ��  t  u �������� 0 makebbgo makeBBGo�� 0 bbgo bbGo�� 0 displaymenu displayMenu�� *j+  E�O� *j+ U ascr  ��ޭ