FasdUAS 1.101.10   ��   ��    k             l     ��  ��    ) # set this to the location of chktex     � 	 	 F   s e t   t h i s   t o   t h e   l o c a t i o n   o f   c h k t e x   
  
 j     �� �� 
0 texbin    m        �    / u s r / t e x b i n /      l     ��������  ��  ��        l      ��  ��   pj
ChkTeX for BBEdit
Ram�n M. Figueroa-Centeno
http://www2.hawaii.edu/~ramonf

Version: 1.2
Date: October 12, 2007

This AppleScript is released under a Creative Commons Attribution-ShareAlike License:
<http://creativecommons.org/licenses/by-sa/2.0/>

Based on the CSS Syntax Check script for BBEdit by John Gruber:
http://daringfireball.net/projects/csschecker/

     �  � 
 C h k T e X   f o r   B B E d i t 
 R a m � n   M .   F i g u e r o a - C e n t e n o 
 h t t p : / / w w w 2 . h a w a i i . e d u / ~ r a m o n f 
 
 V e r s i o n :   1 . 2 
 D a t e :   O c t o b e r   1 2 ,   2 0 0 7 
 
 T h i s   A p p l e S c r i p t   i s   r e l e a s e d   u n d e r   a   C r e a t i v e   C o m m o n s   A t t r i b u t i o n - S h a r e A l i k e   L i c e n s e : 
 < h t t p : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - s a / 2 . 0 / > 
 
 B a s e d   o n   t h e   C S S   S y n t a x   C h e c k   s c r i p t   f o r   B B E d i t   b y   J o h n   G r u b e r : 
 h t t p : / / d a r i n g f i r e b a l l . n e t / p r o j e c t s / c s s c h e c k e r / 
 
      l     ��������  ��  ��        i        I     ������
�� .aevtoappnull  �   � ****��  ��    k            l     ��   ��    E ? The run handler is called when the script is invoked normally,      � ! ! ~   T h e   r u n   h a n d l e r   i s   c a l l e d   w h e n   t h e   s c r i p t   i s   i n v o k e d   n o r m a l l y ,   " # " l     �� $ %��   $ * $ such as from BBEdit's Scripts menu.    % � & & H   s u c h   a s   f r o m   B B E d i t ' s   S c r i p t s   m e n u . #  '�� ' n     ( ) ( I    �������� 0 chktex ChkteX��  ��   )  f     ��     * + * l     ��������  ��  ��   +  , - , i    
 . / . I      �������� 0 
menuselect  ��  ��   / k     ) 0 0  1 2 1 l     �� 3 4��   3 F @ The menuselect() handler gets called when the script is invoked    4 � 5 5 �   T h e   m e n u s e l e c t ( )   h a n d l e r   g e t s   c a l l e d   w h e n   t h e   s c r i p t   i s   i n v o k e d 2  6 7 6 l     �� 8 9��   8 G A by BBEdit as a menu script. Save this script, or an alias to it,    9 � : : �   b y   B B E d i t   a s   a   m e n u   s c r i p t .   S a v e   t h i s   s c r i p t ,   o r   a n   a l i a s   t o   i t , 7  ; < ; l     �� = >��   = F @ as "Check�Document Syntax" in the "Menu Scripts" folder in your    > � ? ? �   a s   " C h e c k " D o c u m e n t   S y n t a x "   i n   t h e   " M e n u   S c r i p t s "   f o l d e r   i n   y o u r <  @ A @ l     �� B C��   B   "BBEdit Support" folder.    C � D D 2   " B B E d i t   S u p p o r t "   f o l d e r . A  E�� E O     ) F G F k    ( H H  I J I l   �� K L��   K 8 2 returning true value stops action from continuing    L � M M d   r e t u r n i n g   t r u e   v a l u e   s t o p s   a c t i o n   f r o m   c o n t i n u i n g J  N O N l   �� P Q��   P + % false makes the menu action continue    Q � R R J   f a l s e   m a k e s   t h e   m e n u   a c t i o n   c o n t i n u e O  S�� S Q    ( T U�� T Z     V W�� X V l    Y���� Y =    Z [ Z n     \ ] \ 1    ��
�� 
SoLn ] 4    �� ^
�� 
cwin ^ m   	 
����  [ m     _ _ � ` `  T e X��  ��   W k     a a  b c b l   �� d e��   d / ) It's a TeX file, so tell BBEdit *not* to    e � f f R   I t ' s   a   T e X   f i l e ,   s o   t e l l   B B E d i t   * n o t *   t o c  g h g l   �� i j��   i + % continue with its HTML syntax check:    j � k k J   c o n t i n u e   w i t h   i t s   H T M L   s y n t a x   c h e c k : h  l m l n    n o n I    �������� 0 chktex ChkteX��  ��   o  f     m  p�� p L     q q m    ��
�� boovtrue��  ��   X L     r r m    ��
�� boovfals U R      ������
�� .ascrerr ****      � ****��  ��  ��  ��   G m      s s�                                                                                  R*ch  alis    N  Macintosh HD               �+]�H+   ���
BBEdit.app                                                     P�'�1�        ����  	                Applications    �+�      �2�     ���  %Macintosh HD:Applications: BBEdit.app    
 B B E d i t . a p p    M a c i n t o s h   H D  Applications/BBEdit.app   / ��  ��   -  t u t l     ��������  ��  ��   u  v w v i     x y x I      �������� 0 chktex ChkteX��  ��   y k    I z z  { | { O     � } ~ } k    �    � � � Q    = � � � � Z    - � ����� � H     � � l    ����� � n     � � � 1    ��
�� 
oDsk � n     � � � 1    ��
�� 
ADoc � 4    �� �
�� 
TxtW � m   	 
���� ��  ��   � k    ) � �  � � � I   ������
�� .sysobeepnull��� ��� long��  ��   �  � � � I   &�� � �
�� .sysodlogaskr        TEXT � m     � � � � � > Y o u   n e e d   t o   s a v e   y o u r   d o c u m e n t ! � �� � �
�� 
btns � J     � �  ��� � m     � � � � �  O K��   � �� � �
�� 
dflt � m     ����  � �� ���
�� 
disp � m   ! "��
�� stic    ��   �  ��� � L   ' )����  ��  ��  ��   � R      ������
�� .ascrerr ****      � ****��  ��   � k   5 = � �  � � � I  5 :������
�� .sysobeepnull��� ��� long��  ��   �  ��� � L   ; =����  ��   �  � � � Z   > j � ����� � l  > G ����� � n   > G � � � 1   D F��
�� 
imod � n   > D � � � 1   B D��
�� 
ADoc � 4   > B�� �
�� 
TxtW � m   @ A���� ��  ��   � k   J f � �  � � � I  J O������
�� .sysobeepnull��� ��� long��  ��   �  ��� � I  P f�� � �
�� .sysodlogaskr        TEXT � m   P S � � � � � T Y o u   n e e d   t o   s a v e   c h a n g e s   t o   y o u r   d o c u m e n t ! � �� � �
�� 
btns � J   T \ � �  � � � m   T W � � � � �  C a n c e l �  ��� � m   W Z � � � � �  S a v e��   � �� � �
�� 
dflt � m   ] ^����  � �� ���
�� 
disp � m   _ b��
�� stic   ��  ��  ��  ��   �  � � � r   k ~ � � � K   k s � � �� ���
�� 
LinB � m   n q��
�� LinBLF  ��   � n       � � � 1   y }��
�� 
pALL � n   s y � � � 1   w y��
�� 
ADoc � 4   s w�� �
�� 
TxtW � m   u v����  �  � � � I   ��� ���
�� .coresavenull        obj  � n    � � � � 1   � ���
�� 
ADoc � 4    ��� �
�� 
TxtW � m   � ����� ��   �  � � � r   � � � � � n   � � � � � m   � ���
�� 
file � n   � � � � � 1   � ���
�� 
ADoc � 4   � ��� �
�� 
TxtW � m   � �����  � o      ���� 0 texfile texFile �  � � � r   � � � � � l  � � ����� � n   � � � � � 1   � ���
�� 
pnam � l  � � ����� � n   � � � � � 1   � ��
� 
ADoc � 4   � ��~ �
�~ 
TxtW � m   � ��}�} ��  ��  ��  ��   � o      �|�| 0 texfilename texFileName �  � � � Z   � � � ��{�z � >  � � � � � l  � � ��y�x � n   � � � � � 1   � ��w
�w 
SoLn � l  � � ��v�u � n   � � � � � 1   � ��t
�t 
ADoc � 4   � ��s �
�s 
TxtW � m   � ��r�r �v  �u  �y  �x   � m   � � � � � � �  T e X � k   � � � �  � � � I  � ��q � �
�q .sysodlogaskr        TEXT � m   � � � � � � � b T h e   s o u r c e   l a n g u a g e   o f   t h e   d o c u m e n t   i s   n o t    T e X  ! � �p � 
�p 
btns � J   � � �o m   � � � 
 S o r r y�o    �n
�n 
dflt m   � ��m�m  �l�k
�l 
disp m   � ��j
�j stic    �k   � �i L   � ��h�h  �i  �{  �z   � 	
	 l  � ��g�f�e�g  �f  �e  
  l   � ��d�d   � �
             if texFileName does not end with ".tex" then
			display dialog "Not a .tex file!" buttons {"Sorry"} default button 1 with icon stop
			return true
		end if
                �l 
                           i f   t e x F i l e N a m e   d o e s   n o t   e n d   w i t h   " . t e x "   t h e n 
 	 	 	 d i s p l a y   d i a l o g   " N o t   a   . t e x   f i l e ! "   b u t t o n s   { " S o r r y " }   d e f a u l t   b u t t o n   1   w i t h   i c o n   s t o p 
 	 	 	 r e t u r n   t r u e 
 	 	 e n d   i f 
                         �c l  � ��b�a�`�b  �a  �`  �c   ~ m     �                                                                                  R*ch  alis    N  Macintosh HD               �+]�H+   ���
BBEdit.app                                                     P�'�1�        ����  	                Applications    �+�      �2�     ���  %Macintosh HD:Applications: BBEdit.app    
 B B E d i t . a p p    M a c i n t o s h   H D  Applications/BBEdit.app   / ��   |  r   � � I  � ��_�^
�_ .sysoexecTEXT���     TEXT b   � � m   � � �  d i r n a m e   l  � ��]�\ n   � � 1   � ��[
�[ 
strq l  � ��Z�Y l  � ��X�W c   � � !  n   � �"#" 1   � ��V
�V 
psxp# o   � ��U�U 0 texfile texFile! m   � ��T
�T 
TEXT�X  �W  �Z  �Y  �]  �\  �^   o      �S�S 0 
texfiledir 
texFileDir $%$ l  � ��R�Q�P�R  �Q  �P  % &'& l  � �()*( Z  � �+,�O�N+ =  � �-.- o   � ��M�M 0 texfile texFile. m   � �// �00  , L   � ��L�L  �O  �N  ) 8 2 Don't proceed if we don't have a path to the file   * �11 d   D o n ' t   p r o c e e d   i f   w e   d o n ' t   h a v e   a   p a t h   t o   t h e   f i l e' 232 l  � ��K�J�I�K  �J  �I  3 454 r   �676 I  � ��H8�G
�H .sysontocTEXT       shor8 m   � ��F�F 
�G  7 o      �E�E 0 newline  5 9:9 l �D�C�B�D  �C  �B  : ;<; l  �A=>�A  =}w	ChkTeX can be told to use a custom format with the option -f followed by a string of these:

		%b String to print between fields (from -s option).
		%c Column position of error.
		%d Length of error (digit).
		%f Current file name.
		%i Turn on inverse printing mode.
		%I Turn off inverse printing mode.
		%k kind of error (warning, error, message).
		%l line number of error.
		%m Warning message.
		%n Warning number.
		%u An underlining line (like the one which appears when using �-v1�).
		%r Part of line in front of error (�S� - 1).
		%s Part of line which contains error (string).
		%t Part of line after error (�S� + 1).
   > �??� 	 C h k T e X   c a n   b e   t o l d   t o   u s e   a   c u s t o m   f o r m a t   w i t h   t h e   o p t i o n   - f   f o l l o w e d   b y   a   s t r i n g   o f   t h e s e : 
 
 	 	 % b   S t r i n g   t o   p r i n t   b e t w e e n   f i e l d s   ( f r o m   - s   o p t i o n ) . 
 	 	 % c   C o l u m n   p o s i t i o n   o f   e r r o r . 
 	 	 % d   L e n g t h   o f   e r r o r   ( d i g i t ) . 
 	 	 % f   C u r r e n t   f i l e   n a m e . 
 	 	 % i   T u r n   o n   i n v e r s e   p r i n t i n g   m o d e . 
 	 	 % I   T u r n   o f f   i n v e r s e   p r i n t i n g   m o d e . 
 	 	 % k   k i n d   o f   e r r o r   ( w a r n i n g ,   e r r o r ,   m e s s a g e ) . 
 	 	 % l   l i n e   n u m b e r   o f   e r r o r . 
 	 	 % m   W a r n i n g   m e s s a g e . 
 	 	 % n   W a r n i n g   n u m b e r . 
 	 	 % u   A n   u n d e r l i n i n g   l i n e   ( l i k e   t h e   o n e   w h i c h   a p p e a r s   w h e n   u s i n g    - v 1  ) . 
 	 	 % r   P a r t   o f   l i n e   i n   f r o n t   o f   e r r o r   (  S    -   1 ) . 
 	 	 % s   P a r t   o f   l i n e   w h i c h   c o n t a i n s   e r r o r   ( s t r i n g ) . 
 	 	 % t   P a r t   o f   l i n e   a f t e r   e r r o r   (  S    +   1 ) . 
< @A@ l �@�?�>�@  �?  �>  A BCB r  DED b  FGF b  HIH b  JKJ b  LML m  NN �OO  P A T H = $ P A T H :M n  PQP 1  
�=
�= 
strqQ o  
�<�< 
0 texbin  K m  RR �SS    ;   c d  I n  TUT 1  �;
�; 
strqU o  �:�: 0 
texfiledir 
texFileDirG m  VV �WW    ;  E o      �9�9 0 command  C XYX r   'Z[Z b   %\]\ o   !�8�8 0 command  ] m  !$^^ �__ H c h k t e x   - q   - f   " % k % b % l % b % m % b % f % b % c % b % s[ o      �7�7 0 command  Y `a` r  (7bcb b  (5ded b  (/fgf b  (+hih o  ()�6�6 0 command  i o  )*�5�5 0 newline  g m  +.jj �kk  "  e n  /4lml 1  04�4
�4 
strqm o  /0�3�3 0 texfilename texFileNamec o      �2�2 0 command  a non Q  8Opqrp r  ;Bsts I ;@�1u�0
�1 .sysoexecTEXT���     TEXTu o  ;<�/�/ 0 command  �0  t o      �.�. 0 check_result  q R      �-vw
�- .ascrerr ****      � ****v o      �,�, 0 err_text  w �+x�*
�+ 
errnx o      �)�) 0 err_num  �*  r I JO�(y�'
�( .sysodlogaskr        TEXTy o  JK�&�& 0 err_text  �'  o z{z l PP�%�$�#�%  �$  �#  { |}| r  PT~~ J  PR�"�"   o      �!�! 0 critic_error_list  } ��� l UU� ���   �  �  � ��� O  UG��� k  YF�� ��� Z  Y������ = Y^��� o  YZ�� 0 check_result  � m  Z]�� ���  � k  a��� ��� r  ao��� n  am��� 1  im�
� 
pnam� n  ai��� m  ei�
� 
docu� 4  ae��
� 
TxtW� m  cd�� � o      �� 0 document_name  � ��� I p����
� .sysodisAaleR        TEXT� m  ps�� ���  C h k T e X   O K� ���
� 
mesS� b  v��� b  v{��� m  vy�� ��� D N o   C h k T e X   w a r n i n g s   w e r e   f o u n d   i n   � o  yz�� 0 document_name  � m  {~�� ���   .�  � ��� L  ����  �  �  �  � ��� l ������  �  �  � ��� l ������  � 0 * Put together the results for the browser:   � ��� T   P u t   t o g e t h e r   t h e   r e s u l t s   f o r   t h e   b r o w s e r :� ��� X  ����� Z  ����
�	� > ����� l ������ c  ����� o  ���� 0 err  � m  ���
� 
ctxt�  �  � m  ���� ���  � k  ��� ��� l ������  �  �  � ��� r  ����� n ����� 1  ���
� 
txdl� 1  ��� 
�  
ascr� o      ���� 0 
old_delims  � ��� r  ����� J  ���� ���� m  ���� ���  :��  � n     ��� 1  ����
�� 
txdl� 1  ����
�� 
ascr� ��� l ����������  ��  ��  � ��� r  ����� n  ����� 4  �����
�� 
citm� m  ������ � o  ������ 0 err  � o      ���� 0 kind_of_error  � ��� Z  ������� = ����� o  ������ 0 kind_of_error  � m  ���� ��� 
 E r r o r� r  ����� m  ����
�� ErslErr � o      ���� 0 err_kind  � ��� = ����� o  ������ 0 kind_of_error  � m  ���� ���  W a r n i n g� ��� r  ����� m  ����
�� ErslWrng� o      ���� 0 err_kind  � ��� = ����� o  ������ 0 kind_of_error  � m  ���� ���  M e s s a g e� ���� r  ����� m  ����
�� ErslNote� o      ���� 0 err_kind  ��  ��  � ��� l ��������  ��  ��  � ��� r  ��� c  ��� n  � � 4  ��
�� 
citm m  ����   o  ���� 0 err  � m  ��
�� 
long� o      ���� 0 line_num  �  l ��������  ��  ��    r   n  	 4  ��

�� 
citm
 m  ���� 	 o  ���� 0 err   o      ���� 0 err_description    l ��������  ��  ��    r  ( c  $ n    4   ��
�� 
citm m  ����  o  ���� 0 err   m   #��
�� 
TEXT o      ���� 0 name_of_file    l ))��������  ��  ��    r  )6 l )2���� b  )2 b  ).  o  )*���� 0 
texfiledir 
texFileDir  m  *-!! �""  / o  .1���� 0 name_of_file  ��  ��   o      ���� 0 	file_path   #$# l 77��������  ��  ��  $ %&% l 77��'(��  ' 4 . The following breaks if we let BBEdit do it?!   ( �)) \   T h e   f o l l o w i n g   b r e a k s   i f   w e   l e t   B B E d i t   d o   i t ? !& *+* O 7H,-, r  ;G./. 4  ;C��0
�� 
psxf0 o  ?B���� 0 	file_path  / l     1����1 o      ���� 0 current_file  ��  ��  -  f  78+ 232 l II��������  ��  ��  3 454 r  I[676 n  IW898 1  SW��
�� 
leng9 l IS:����: c  IS;<; n  IO=>= 4  JO��?
�� 
citm? m  MN���� > o  IJ���� 0 err  < m  OR��
�� 
TEXT��  ��  7 o      ���� 0 error_string_length  5 @A@ l \\��������  ��  ��  A BCB r  \lDED l \hF����F c  \hGHG n  \dIJI 4  ]d��K
�� 
citmK m  `c���� J o  \]���� 0 err  H m  dg��
�� 
long��  ��  E o      ���� 0 before_error  C LML l mm��������  ��  ��  M NON r  mvPQP o  mn���� 0 
old_delims  Q n     RSR 1  qu��
�� 
txdlS 1  nq��
�� 
ascrO TUT l ww��������  ��  ��  U VWV l ww��XY��  X X R We compute the offset of the line under consideration; if the line is in the open   Y �ZZ �   W e   c o m p u t e   t h e   o f f s e t   o f   t h e   l i n e   u n d e r   c o n s i d e r a t i o n ;   i f   t h e   l i n e   i s   i n   t h e   o p e nW [\[ l ww��]^��  ] Z T document we use BBEdit to get this offset, otherwise if the line is in an auxiliary   ^ �__ �   d o c u m e n t   w e   u s e   B B E d i t   t o   g e t   t h i s   o f f s e t ,   o t h e r w i s e   i f   t h e   l i n e   i s   i n   a n   a u x i l i a r y\ `a` l ww��bc��  b S M file (loaded via \input) we use a shell script. The auxiliary file must have   c �dd �   f i l e   ( l o a d e d   v i a   \ i n p u t )   w e   u s e   a   s h e l l   s c r i p t .   T h e   a u x i l i a r y   f i l e   m u s t   h a v ea efe l ww��gh��  g #  UNIX file endings (endline).   h �ii :   U N I X   f i l e   e n d i n g s   ( e n d l i n e ) .f jkj l ww��������  ��  ��  k lml Z  w�no��pn =  w|qrq o  wz���� 0 name_of_file  r o  z{���� 0 texfilename texFileNameo r  �sts l �u����u n  �vwv 1  ����
�� 
Ofsew n  �xyx 4  ����z
�� 
clinz o  ������ 0 line_num  y l �{����{ n  �|}| 1  ����
�� 
ADoc} 4  ���~
�� 
TxtW~ m  ������ ��  ��  ��  ��  t o      ���� 0 line_offset  ��  p O  ��� r  ����� [  ����� l �������� c  ����� l �������� I �������
�� .sysoexecTEXT���     TEXT� b  ����� b  ����� b  ����� b  ����� m  ���� ���  h e a d   - n  � l �������� \  ����� o  ������ 0 line_num  � m  ������ ��  ��  � m  ���� ���   � o  ������ 0 	file_path  � m  ���� ���    |   w c   - m��  ��  ��  � m  ����
�� 
long��  ��  � m  ������ � o      ���� 0 line_offset  �  f  ��m ��� l ������~��  �  �~  � ��� r  ����� \  ����� [  ����� o  ���}�} 0 line_offset  � o  ���|�| 0 before_error  � m  ���{�{ � o      �z�z 0 start_error  � ��� r  ����� [  ����� o  ���y�y 0 start_error  � o  ���x�x 0 error_string_length  � o      �w�w 0 	end_error  � ��� l ���v�u�t�v  �u  �t  � ��� r  � ��� K  ���� �s��
�s 
Ersl� o  ���r�r 0 err_kind  � �q��
�q 
Efil� o  ���p�p 0 current_file  � �o��
�o 
Elin� o  ���n�n 0 line_num  � �m��
�m 
Etxt� c  ����� o  ���l�l 0 err_description  � m  ���k
�k 
ctxt� �j��
�j 
Estr� o  ���i�i 0 start_error  � �h��g
�h 
Eend� o  ���f�f 0 	end_error  �g  � o      �e�e 0 err_list_item  � ��� l �d�c�b�d  �c  �b  � ��a� s  ��� o  �`�` 0 err_list_item  � n      ���  ;  � o  �_�_ 0 critic_error_list  �a  �
  �	  � 0 err  � l ����^�]� n  ����� 2  ���\
�\ 
cpar� o  ���[�[ 0 check_result  �^  �]  � ��� l �Z�Y�X�Z  �Y  �X  � ��� Q  )���W� I  �V��U
�V .coreclosnull        obj � 4  �T�
�T 
cwin� m  �� ���  C h k T e X   W a r n i n g s�U  � R      �S�R�Q
�S .ascrerr ****      � ****�R  �Q  �W  � ��� l **�P�O�N�P  �O  �N  � ��� I *D�M�L�
�M .corecrel****      � null�L  � �K��
�K 
kocl� m  .1�J
�J 
RslW� �I��
�I 
data� o  45�H�H 0 critic_error_list  � �G��F
�G 
prdt� K  8@�� �E��D
�E 
pnam� m  ;>�� ���  C h k T e X   W a r n i n g s�D  �F  � ��C� l EE�B�A�@�B  �A  �@  �C  � m  UV���                                                                                  R*ch  alis    N  Macintosh HD               �+]�H+   ���
BBEdit.app                                                     P�'�1�        ����  	                Applications    �+�      �2�     ���  %Macintosh HD:Applications: BBEdit.app    
 B B E d i t . a p p    M a c i n t o s h   H D  Applications/BBEdit.app   / ��  � ��?� l HH�>�=�<�>  �=  �<  �?   w ��;� l     �:�9�8�:  �9  �8  �;       �7� ����7  � �6�5�4�3�6 
0 texbin  
�5 .aevtoappnull  �   � ****�4 0 
menuselect  �3 0 chktex ChkteX� �2 �1�0���/
�2 .aevtoappnull  �   � ****�1  �0  �  � �.�. 0 chktex ChkteX�/ )j+  � �- /�,�+���*�- 0 
menuselect  �,  �+  �  �  s�)�( _�'�&�%
�) 
cwin
�( 
SoLn�' 0 chktex ChkteX�&  �%  �* *� & *�k/�,�  )j+ OeY fW X  hU� �$ y�#�"���!�$ 0 chktex ChkteX�#  �"  � � ����������������������
�	��  0 texfile texFile� 0 texfilename texFileName� 0 
texfiledir 
texFileDir� 0 newline  � 0 command  � 0 check_result  � 0 err_text  � 0 err_num  � 0 critic_error_list  � 0 document_name  � 0 err  � 0 
old_delims  � 0 kind_of_error  � 0 err_kind  � 0 line_num  � 0 err_description  � 0 name_of_file  � 0 	file_path  � 0 current_file  � 0 error_string_length  � 0 before_error  � 0 line_offset  �
 0 start_error  �	 0 	end_error  � 0 err_list_item  � ^���� �� ���� ���������� � � ����������������� � ���������/����NRV^j��������������������������������������������!�����������������������������������������
� 
TxtW
� 
ADoc
� 
oDsk
� .sysobeepnull��� ��� long
� 
btns
� 
dflt
� 
disp
�  stic    �� 
�� .sysodlogaskr        TEXT��  ��  
�� 
imod
�� stic   
�� 
LinB
�� LinBLF  
�� 
pALL
�� .coresavenull        obj 
�� 
file
�� 
pnam
�� 
SoLn
�� 
psxp
�� 
TEXT
�� 
strq
�� .sysoexecTEXT���     TEXT�� 

�� .sysontocTEXT       shor�� 0 err_text  � ������
�� 
errn�� 0 err_num  ��  
�� 
docu
�� 
mesS
�� .sysodisAaleR        TEXT
�� 
cpar
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
ctxt
�� 
ascr
�� 
txdl
�� 
citm
�� ErslErr 
�� ErslWrng
�� ErslNote
�� 
long�� 
�� 
psxf
�� 
leng�� 
�� 
clin
�� 
Ofse
�� 
Ersl
�� 
Efil
�� 
Elin
�� 
Etxt
�� 
Estr
�� 
Eend�� 
�� 
cwin
�� .coreclosnull        obj 
�� 
RslW
�� 
data
�� 
prdt
�� .corecrel****      � null�!J� � +*�k/�,�, *j O���kv�k��� OhY hW X  *j OhO*�k/�,�,E !*j Oa �a a lv�l�a � Y hOa a l*�k/�,a ,FO*�k/�,j O*�k/�,a ,E�O*�k/�,a ,E�O*�k/�,a ,a  a �a kv�k��� OhY hOPUOa �a ,a  &a !,%j "E�O�a #  hY hOa $j %E�Oa &b   a !,%a '%�a !,%a (%E�O�a )%E�O��%a *%�a !,%E�O �j "E�W X + ,�j OjvE�O��a -  **�k/a .,a ,E�Oa /a 0a 1�%a 2%l 3OhY hO��a 4-[a 5a 6l 7kh 
�a 8&a 9]_ :a ;,E�Oa <kv_ :a ;,FO�a =k/E�O�a >  
a ?E�Y #�a @  
a AE�Y �a B  
a CE�Y hO�a =l/a D&E�O�a =m/E�O�a =a E/a  &E^ O�a F%] %E^ O) *a G] /E^ UO�a =�/a  &a H,E^ O�a =a I/a D&E^ O�_ :a ;,FO] �  *�k/�,a J�/a K,E^ Y () #a L�k%a M%] %a N%j "a D&kE^ UO] ] lE^ O] ] E^ Oa O�a P] a Q�a R�a 8&a S] a T] a UE^ O] �6GY h[OY��O *a Va W/j XW X  hO*a 5a Ya Z�a [a a \l� ]OPUOPascr  ��ޭ