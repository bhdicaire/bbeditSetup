FasdUAS 1.101.10   ��   ��    k             l     ��������  ��  ��        l     �� 	 
��   	 8 2 Based on John Gruber's PHP Syntax Checking script    
 �   d   B a s e d   o n   J o h n   G r u b e r ' s   P H P   S y n t a x   C h e c k i n g   s c r i p t      l     ��  ��      from Daring Fireball     �   *   f r o m   D a r i n g   F i r e b a l l      l     ��  ��    G A  http://daringfireball.net/2003/12/php_syntax_checking_in_bbedit     �   �     h t t p : / / d a r i n g f i r e b a l l . n e t / 2 0 0 3 / 1 2 / p h p _ s y n t a x _ c h e c k i n g _ i n _ b b e d i t      l     ��������  ��  ��        l     ��  ��      Requires JavaScript Lint     �   2   R e q u i r e s   J a v a S c r i p t   L i n t      l     ��   ��    %  http://www.javascriptlint.com/      � ! ! >   h t t p : / / w w w . j a v a s c r i p t l i n t . c o m /   " # " l     �� $ %��   $ 4 . Assumes it is installed at /usr/local/bin/jsl    % � & & \   A s s u m e s   i t   i s   i n s t a l l e d   a t   / u s r / l o c a l / b i n / j s l #  ' ( ' l     ��������  ��  ��   (  ) * ) l     �� + ,��   +   requires OS >=10.4    , � - - &   r e q u i r e s   O S   > = 1 0 . 4 *  . / . l     �� 0 1��   0 3 - Dual-licensed under the BSD or MIT licenses.    1 � 2 2 Z   D u a l - l i c e n s e d   u n d e r   t h e   B S D   o r   M I T   l i c e n s e s . /  3 4 3 l     �� 5 6��   5 9 3 http://www.schmoyer.com/code/js_lint/license.phtml    6 � 7 7 f   h t t p : / / w w w . s c h m o y e r . c o m / c o d e / j s _ l i n t / l i c e n s e . p h t m l 4  8 9 8 l     ��������  ��  ��   9  : ; : l     ��������  ��  ��   ;  < = < i      > ? > I     ������
�� .aevtoappnull  �   � ****��  ��   ? k      @ @  A B A l     �� C D��   C E ? The run handler is called when the script is invoked normally,    D � E E ~   T h e   r u n   h a n d l e r   i s   c a l l e d   w h e n   t h e   s c r i p t   i s   i n v o k e d   n o r m a l l y , B  F G F l     �� H I��   H * $ such as from BBEdit's Scripts menu.    I � J J H   s u c h   a s   f r o m   B B E d i t ' s   S c r i p t s   m e n u . G  K�� K I     �������� 0 jslint JSLint��  ��  ��   =  L M L l     ��������  ��  ��   M  N O N l     ��������  ��  ��   O  P Q P l     ��������  ��  ��   Q  R S R i     T U T I      �������� 0 
menuselect  ��  ��   U k      V V  W X W l     �� Y Z��   Y F @ The menuselect() handler gets called when the script is invoked    Z � [ [ �   T h e   m e n u s e l e c t ( )   h a n d l e r   g e t s   c a l l e d   w h e n   t h e   s c r i p t   i s   i n v o k e d X  \ ] \ l     �� ^ _��   ^ G A by BBEdit as a menu script. Save this script, or an alias to it,    _ � ` ` �   b y   B B E d i t   a s   a   m e n u   s c r i p t .   S a v e   t h i s   s c r i p t ,   o r   a n   a l i a s   t o   i t , ]  a b a l     �� c d��   c A ; as "JS Lint Document" in the "Menu Scripts" folder in your    d � e e v   a s   " J S   L i n t   D o c u m e n t "   i n   t h e   " M e n u   S c r i p t s "   f o l d e r   i n   y o u r b  f g f l     �� h i��   h   "BBEdit Support" folder.    i � j j 2   " B B E d i t   S u p p o r t "   f o l d e r . g  k�� k I     �������� 0 jslint JSLint��  ��  ��   S  l m l l     ��������  ��  ��   m  n o n i     p q p I      �������� 0 jslint JSLint��  ��   q k    � r r  s t s l     ��������  ��  ��   t  u v u l     �� w x��   w ) # Set any specific JSL settings here    x � y y F   S e t   a n y   s p e c i f i c   J S L   s e t t i n g s   h e r e v  z { z l     �� | }��   | "   Make sure -process is LAST    } � ~ ~ 8     M a k e   s u r e   - p r o c e s s   i s   L A S T {   �  l     �� � ���   � > 8 More info: http://www.javascriptlint.com/docs/index.htm    � � � � p   M o r e   i n f o :   h t t p : / / w w w . j a v a s c r i p t l i n t . c o m / d o c s / i n d e x . h t m �  � � � r      � � � c     	 � � � b      � � � b      � � � b      � � � l 	    ����� � m      � � � � � ,     / o p t / l o c a l / b i n / j s l    ��  ��   � l 	   ����� � m     � � � � � V - n o l o g o   - o u t p u t - f o r m a t   " _ _ L I N E _ _ | _ _ E R R O R _ _ "��  ��   � l 	   ����� � m     � � � � � J     - c o n t e x t   - n o s u m m a r y   - n o f i l e l i s t i n g  ��  ��   � l 	   ����� � m     � � � � �    - p r o c e s s      ��  ��   � m    ��
�� 
ctxt � o      ���� 0 jsl   �  � � � l   ��������  ��  ��   �  � � � O    � � � � k    � � �  � � � Q    ) � � � � r     � � � 4    �� �
�� 
TxtW � m    ����  � o      ���� 0 w   � R      ������
�� .ascrerr ****      � ****��  ��   � k   ! ) � �  � � � I  ! &������
�� .sysobeepnull��� ��� long��  ��   �  ��� � L   ' )����  ��   �  � � � r   * 1 � � � n   * / � � � 1   - /��
�� 
pnam � l  * - ����� � n   * - � � � m   + -��
�� 
docu � o   * +���� 0 w  ��  ��   � o      ���� 0 the_filename   �  � � � l  2 2��������  ��  ��   �  � � � Q   2 M � � � � r   5 = � � � n   5 ; � � � m   9 ;��
�� 
file � 4   5 9�� �
�� 
TxtW � m   7 8����  � o      ���� 0 current_file   � R      ������
�� .ascrerr ****      � ****��  ��   � k   E M � �  � � � I  E J�� ���
�� .sysodisAaleR        TEXT � m   E F � � � � � 8 P l e a s e   s a v e   t h i s   f i l e   f i r s t .��   �  ��� � L   K M����  ��   �  � � � l  N N��������  ��  ��   �  � � � l  N N��������  ��  ��   �  ��� � Z   N � � ��� � � l  N T ����� � n   N T � � � 1   Q S��
�� 
imod � l  N Q ����� � n   N Q � � � m   O Q��
�� 
docu � o   N O���� 0 w  ��  ��  ��  ��   � k   W � � �  � � � l  W W�� � ���   � , & unsaved changes, write a temp file       � � � � L   u n s a v e d   c h a n g e s ,   w r i t e   a   t e m p   f i l e       �  � � � r   W ` � � � l  W ^ ����� � I  W ^� ��~
� .earsffdralis        afdr � m   W Z�}
�} afdmtemp�~  ��  ��   � o      �|�| 0 parent_folder   �  � � � r   a j � � � b   a h � � � l  a f ��{�z � c   a f � � � o   a b�y�y 0 parent_folder   � m   b e�x
�x 
TEXT�{  �z   � o   f g�w�w 0 the_filename   � o      �v�v 0 	temp_file   �  � � � Z   k ~ � ��u�t � H   k u � � l  k t ��s�r � n  k t � � � I   l t�q ��p�q &0 writeunixtextfile WriteUnixTextFile �  � � � o   l m�o�o 0 	temp_file   �  ��n � n   m p � � � m   n p�m
�m 
ctxt � o   m n�l�l 0 w  �n  �p   �  f   k l�s  �r   � k   x z � �  � � � l  x x�k � �k   � A ; End script, because an error occured writing the temp file     � v   E n d   s c r i p t ,   b e c a u s e   a n   e r r o r   o c c u r e d   w r i t i n g   t h e   t e m p   f i l e � �j L   x z�i�i  �j  �u  �t   � �h l   �g�f�e�g  �f  �e  �h  ��   � k   � �  l  � ��d�d      use the real file on disk    �		 4   u s e   t h e   r e a l   f i l e   o n   d i s k 
�c
 O   � � r   � � c   � � l 
 � ��b�a l  � ��`�_ n   � � m   � ��^
�^ 
ctnr l  � ��]�\ c   � � n   � � m   � ��[
�[ 
file o   � ��Z�Z 0 w   m   � ��Y
�Y 
alis�]  �\  �`  �_  �b  �a   m   � ��X
�X 
alis o      �W�W 0 parent_folder   m   � ��                                                                                  MACS  alis    h  OSX_Vera                   �p�>H+  :	�5
Finder.app                                                     :
�h�(tw        ����  	                CoreServices    �p�      �(��    :	�5:	�(:	�'  2OSX_Vera:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    O S X _ V e r a  &System/Library/CoreServices/Finder.app  / ��  �c  ��   � m    �                                                                                  R*ch  alis    f  OSX_Vera                   �p�>H+   ny
BBEdit.app                                                     J�ܡʯ}E        ����  	                Applications    �p�      ʯ��     ny  1o  .OSX_Vera:Users: aias: Applications: BBEdit.app   
 B B E d i t . a p p    O S X _ V e r a  "Users/aias/Applications/BBEdit.app  /    ��   �  l  � ��V�U�T�V  �U  �T    r   � � !  b   � �"#" b   � �$%$ b   � �&'& b   � �()( m   � �** �++  c d  ) n   � �,-, 1   � ��S
�S 
strq- n   � �./. 1   � ��R
�R 
psxp/ l 
 � �0�Q�P0 o   � ��O�O 0 parent_folder  �Q  �P  ' m   � �11 �22  ;% o   � ��N�N 0 jsl  # l  � �3�M�L3 n   � �454 1   � ��K
�K 
strq5 l  � �6�J�I6 o   � ��H�H 0 the_filename  �J  �I  �M  �L  ! o      �G�G 0 the_command   787 r   � �9:9 m   � ��F
�F boovtrue: o      �E�E 0 	no_errors  8 ;<; Q   � �=>?= k   � �@@ ABA l  � ��DCD�D  C 5 / jsl will have an exit status that is not zero    D �EE ^   j s l   w i l l   h a v e   a n   e x i t   s t a t u s   t h a t   i s   n o t   z e r o  B FGF l  � ��CHI�C  H - ' unless there are no Warnings or errors   I �JJ N   u n l e s s   t h e r e   a r e   n o   W a r n i n g s   o r   e r r o r sG KLK r   � �MNM I  � ��BO�A
�B .sysoexecTEXT���     TEXTO o   � ��@�@ 0 the_command  �A  N o      �?�? 0 
the_result  L P�>P l  � ��=�<�;�=  �<  �;  �>  > R      �:Q�9
�: .ascrerr ****      � ****Q o      �8�8 0 err_text  �9  ? k   � �RR STS r   � �UVU m   � ��7
�7 boovfalsV o      �6�6 0 	no_errors  T WXW l  � ��5YZ�5  Y 9 3 the actual error information is stored in err_text   Z �[[ f   t h e   a c t u a l   e r r o r   i n f o r m a t i o n   i s   s t o r e d   i n   e r r _ t e x tX \]\ l  � ��4^_�4  ^ !  since exit status is not 0   _ �`` 6   s i n c e   e x i t   s t a t u s   i s   n o t   0] a�3a r   � �bcb o   � ��2�2 0 err_text  c o      �1�1 0 
the_result  �3  < ded l  � ��0�/�.�0  �/  �.  e fgf l  � ��-�,�+�-  �,  �+  g h�*h O   ��iji k   ��kk lml Z   ��no�)pn o   � ��(�( 0 	no_errors  o k   � �qq rsr l  � ��'tu�'  t   requires OS >=10.4   u �vv &   r e q u i r e s   O S   > = 1 0 . 4s w�&w I  � ��%xy
�% .sysodisAaleR        TEXTx m   � �zz �{{  J S L i n t   R e s u l t sy �$|�#
�$ 
mesS| b   � �}~} l 	 � ��"�! m   � ��� ��� > N o   e r r o r s   o r   w a r n i n g s   f o u n d   i n  �"  �!  ~ o   � �� �  0 the_filename  �#  �&  �)  p k   ���� ��� l  � �����  �  �  � ��� r   � ���� J   � ���  � o      �� 0 
error_list  � ��� l  � �����  �  �  � ��� X   ������ k  ��� ��� l ����  �  �  � ��� Z  ������ > ��� l ���� c  ��� o  �� 0 the_line  � m  �
� 
ctxt�  �  � m  �� ���  � k  ��� ��� r  #��� n !��� 1  !�
� 
txdl� 1  �
� 
ascr� o      �� 0 
old_delims  � ��� r  $/��� m  $'�� ���  |� n     ��� 1  *.�

�
 
txdl� 1  '*�	
�	 
ascr� ��� r  08��� n  06��� 4  16��
� 
citm� m  45�� � o  01�� 0 the_line  � o      �� 0 err_description  � ��� r  9E��� c  9C��� n  9?��� 4  :?��
� 
citm� m  =>�� � o  9:�� 0 the_line  � m  ?B�
� 
long� o      � �  0 line_num  � ��� r  FO��� o  FG���� 0 
old_delims  � n     ��� 1  JN��
�� 
txdl� 1  GJ��
�� 
ascr� ��� Z  Pe������ E  PU��� o  PQ���� 0 err_description  � m  QT�� ��� 
 e r r o r� r  X]��� m  X[��
�� ErslErr � o      ���� 0 err_kind  ��  � r  `e��� m  `c��
�� ErslWrng� o      ���� 0 err_kind  � ��� r  f���� l 	f|������ K  f|�� ����
�� 
Ersl� l 	ij������ o  ij���� 0 err_kind  ��  ��  � ����
�� 
Efil� l 	mn������ o  mn���� 0 current_file  ��  ��  � ����
�� 
Elin� l 	qr������ o  qr���� 0 line_num  ��  ��  � �����
�� 
Etxt� c  ux��� l 	uv������ o  uv���� 0 err_description  ��  ��  � m  vw��
�� 
ctxt��  ��  ��  � o      ���� 0 err_list_item  � ��� l ����������  ��  ��  � ���� s  ����� o  ������ 0 err_list_item  � n      ���  ;  ��� o  ������ 0 
error_list  ��  �  �  � ��� l ����������  ��  ��  � ���� l ����������  ��  ��  ��  � 0 the_line  � l  � ������ n   � ��� 2   � ��
�� 
cpar� o   � ����� 0 
the_result  ��  ��  � ��� I �������
�� .corecrel****      � null��  � ����
�� 
kocl� m  ����
�� 
RslW� ����
�� 
data� l 
�������� o  ������ 0 
error_list  ��  ��  � �����
�� 
prdt� K  ���� �����
�� 
pnam� b  ����� m  ���� ��� & J S L i n t   R e s u l t s   f o r  � o  ������ 0 the_filename  ��  ��  � ���� l ����������  ��  ��  ��  m ���� l ����������  ��  ��  ��  j m   � �  �                                                                                  R*ch  alis    f  OSX_Vera                   �p�>H+   ny
BBEdit.app                                                     J�ܡʯ}E        ����  	                Applications    �p�      ʯ��     ny  1o  .OSX_Vera:Users: aias: Applications: BBEdit.app   
 B B E d i t . a p p    O S X _ V e r a  "Users/aias/Applications/BBEdit.app  /    ��  �*   o  l     ��������  ��  ��    l     ��������  ��  ��   �� i     I      ������ &0 writeunixtextfile WriteUnixTextFile 	
	 o      ���� 0 	file_name  
 �� o      ���� 0 file_contents  ��  ��   k     �  l     ����   6 0 Write a text file with unix-style line endings.    � `   W r i t e   a   t e x t   f i l e   w i t h   u n i x - s t y l e   l i n e   e n d i n g s .  l     ����     Input:    �    I n p u t :  l     ����   > 8    file_name - the HFS-style path for the file to write    � p         f i l e _ n a m e   -   t h e   H F S - s t y l e   p a t h   f o r   t h e   f i l e   t o   w r i t e  l     ����   5 /    file_contents - the text to write to a file    �   ^         f i l e _ c o n t e n t s   -   t h e   t e x t   t o   w r i t e   t o   a   f i l e !"! l     ��#$��  # 3 - Returns: true for success, false for failure   $ �%% Z   R e t u r n s :   t r u e   f o r   s u c c e s s ,   f a l s e   f o r   f a i l u r e" &��& Q     �'()' k    V** +,+ r    -.- l 	  /����/ I   ��01
�� .rdwropenshor       file0 4    ��2
�� 
file2 o    ���� 0 	file_name  1 ��3��
�� 
perm3 m    	��
�� boovtrue��  ��  ��  . o      ���� 0 file_ref  , 454 I   ��67
�� .rdwrseofnull���     ****6 o    ���� 0 file_ref  7 ��8��
�� 
set28 m    ����  ��  5 9:9 l   ��������  ��  ��  : ;<; l   ��=>��  = ; 5 change the text of file_contents to unix line breaks   > �?? j   c h a n g e   t h e   t e x t   o f   f i l e _ c o n t e n t s   t o   u n i x   l i n e   b r e a k s< @A@ r    BCB n   DED 1    ��
�� 
txdlE 1    ��
�� 
ascrC o      ���� 0 
old_delims  A FGF r    #HIH o    ��
�� 
ret I n     JKJ 1     "��
�� 
txdlK 1     ��
�� 
ascrG LML r   $ +NON c   $ )PQP n   $ 'RSR 2   % '��
�� 
citmS o   $ %���� 0 file_contents  Q m   ' (��
�� 
listO o      ���� 0 	text_list  M TUT r   , 5VWV l  , 1X����X I  , 1��Y��
�� .sysontocTEXT       shorY m   , -���� 
��  ��  ��  W n     Z[Z 1   2 4��
�� 
txdl[ 1   1 2��
�� 
ascrU \]\ r   6 ;^_^ l  6 9`����` c   6 9aba o   6 7���� 0 	text_list  b m   7 8��
�� 
TEXT��  ��  _ o      ���� 0 file_contents  ] cdc r   < Aefe o   < =���� 0 
old_delims  f n     ghg 1   > @��
�� 
txdlh 1   = >�
� 
ascrd iji l  B B�~�}�|�~  �}  �|  j klk I  B M�{mn
�{ .rdwrwritnull���     ****m o   B C�z�z 0 file_contents  n �yop
�y 
refno o   D E�x�x 0 file_ref  p �wq�v
�w 
wratq m   F G�u
�u rdwreof �v  l rsr I  N S�tt�s
�t .rdwrclosnull���     ****t o   N O�r�r 0 file_ref  �s  s u�qu L   T Vvv m   T U�p
�p boovtrue�q  ( R      �ow�n
�o .ascrerr ****      � ****w o      �m�m 0 err_msg  �n  ) k   ^ �xx yzy Q   ^ r{|�l{ I  a i�k}�j
�k .rdwrclosnull���     ****} 4   a e�i~
�i 
file~ o   c d�h�h 0 file_ref  �j  | R      �g�f�e
�g .ascrerr ****      � ****�f  �e  �l  z � I  s ��d��
�d .sysodlogaskr        TEXT� o   s t�c�c 0 err_msg  � �b��
�b 
disp� m   w z�a
�a stic    � �`��
�` 
btns� l 
 } ���_�^� J   } ��� ��]� m   } ��� ���  O K�]  �_  �^  � �\��[
�\ 
dflt� m   � ��Z�Z �[  � ��Y� L   � ��� m   � ��X
�X boovfals�Y  ��  ��       �W������W  � �V�U�T�S
�V .aevtoappnull  �   � ****�U 0 
menuselect  �T 0 jslint JSLint�S &0 writeunixtextfile WriteUnixTextFile� �R ?�Q�P���O
�R .aevtoappnull  �   � ****�Q  �P  �  � �N�N 0 jslint JSLint�O *j+  � �M U�L�K���J�M 0 
menuselect  �L  �K  �  � �I�I 0 jslint JSLint�J *j+  � �H q�G�F���E�H 0 jslint JSLint�G  �F  � �D�C�B�A�@�?�>�=�<�;�:�9�8�7�6�5�4�D 0 jsl  �C 0 w  �B 0 the_filename  �A 0 current_file  �@ 0 parent_folder  �? 0 	temp_file  �> 0 the_command  �= 0 	no_errors  �< 0 
the_result  �; 0 err_text  �: 0 
error_list  �9 0 the_line  �8 0 
old_delims  �7 0 err_description  �6 0 line_num  �5 0 err_kind  �4 0 err_list_item  � 8 � � � ��3�2�1�0�/�.�-�, ��+�*�)�(�'�&�%�$*�#�"1�!� z��������������������������
�3 
ctxt
�2 
TxtW�1  �0  
�/ .sysobeepnull��� ��� long
�. 
docu
�- 
pnam
�, 
file
�+ .sysodisAaleR        TEXT
�* 
imod
�) afdmtemp
�( .earsffdralis        afdr
�' 
TEXT�& &0 writeunixtextfile WriteUnixTextFile
�% 
alis
�$ 
ctnr
�# 
psxp
�" 
strq
�! .sysoexecTEXT���     TEXT�  0 err_text  
� 
mesS
� 
cpar
� 
kocl
� 
cobj
� .corecnte****       ****
� 
ascr
� 
txdl
� 
citm
� 
long
� ErslErr 
� ErslWrng
� 
Ersl
� 
Efil
� 
Elin
� 
Etxt� 
� 
RslW
� 
data
� 
prdt� 
� .corecrel****      � null�E���%�%�%�&E�O� � *�k/E�W X  *j 	OhO��,�,E�O *�k/�,E�W X  �j OhO��,�,E .a j E�O�a &�%E�O)���-l+  hY hOPY a  ��,a &a ,a &E�UUOa �a ,a ,%a %�%�a ,%E�OeE�O �j E�OPW X  fE�O�E�O� ا a a a �%l Y �jvE�O ��a  -[a !a "l #kh ��&a $ r_ %a &,E�Oa '_ %a &,FO�a (l/E�O�a (k/a )&E�O�_ %a &,FO�a * 
a +E�Y a ,E�Oa -�a .�a /�a 0��&a 1E^ O] �6GY hOP[OY�}O*a !a 2a 3�a 4�a 5�%la 6 7OPOPU� �
�	�����
 &0 writeunixtextfile WriteUnixTextFile�	 ��� �  ��� 0 	file_name  � 0 file_contents  �  � ���� ����� 0 	file_name  � 0 file_contents  � 0 file_ref  �  0 
old_delims  �� 0 	text_list  �� 0 err_msg  � ���������������������������������������������������������
�� 
file
�� 
perm
�� .rdwropenshor       file
�� 
set2
�� .rdwrseofnull���     ****
�� 
ascr
�� 
txdl
�� 
ret 
�� 
citm
�� 
list�� 

�� .sysontocTEXT       shor
�� 
TEXT
�� 
refn
�� 
wrat
�� rdwreof �� 
�� .rdwrwritnull���     ****
�� .rdwrclosnull���     ****�� 0 err_msg  ��  ��  
�� 
disp
�� stic    
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT� � X*�/�el E�O��jl O��,E�O���,FO��-�&E�O�j ��,FO��&E�O���,FO�����a  O�j OeW 8X   *�/j W X  hO�a a a a kva ka  Of ascr  ��ޭ