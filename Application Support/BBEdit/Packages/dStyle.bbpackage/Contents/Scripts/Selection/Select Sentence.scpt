FasdUAS 1.101.10   ��   ��    k             l    � ����  O     �  	  O    � 
  
 k    �       l   ��������  ��  ��        l   ��  ��    3 - first, find the end of the previous sentence     �   Z   f i r s t ,   f i n d   t h e   e n d   o f   t h e   p r e v i o u s   s e n t e n c e      l   ��������  ��  ��        l   ��  ��    9 3 the \ is because we need to escape the . from grep     �   f   t h e   \   i s   b e c a u s e   w e   n e e d   t o   e s c a p e   t h e   .   f r o m   g r e p      l   ��  ��    Q K (we are searching for a period, not "any character" which is what a period     �   �   ( w e   a r e   s e a r c h i n g   f o r   a   p e r i o d ,   n o t   " a n y   c h a r a c t e r "   w h i c h   i s   w h a t   a   p e r i o d     !   l   �� " #��   "   normally means in grep    # � $ $ .   n o r m a l l y   m e a n s   i n   g r e p !  % & % l   ��������  ��  ��   &  ' ( ' l   �� ) *��   ) S M however, Applescript also uses the \ as an escape character for its purposes    * � + + �   h o w e v e r ,   A p p l e s c r i p t   a l s o   u s e s   t h e   \   a s   a n   e s c a p e   c h a r a c t e r   f o r   i t s   p u r p o s e s (  , - , l   �� . /��   . [ U so, our line says, "hey Applescript, we want to pass a literal \ to grep, which then    / � 0 0 �   s o ,   o u r   l i n e   s a y s ,   " h e y   A p p l e s c r i p t ,   w e   w a n t   t o   p a s s   a   l i t e r a l   \   t o   g r e p ,   w h i c h   t h e n -  1 2 1 l   �� 3 4��   3 6 0 uses that as an escape code to find a literal .    4 � 5 5 `   u s e s   t h a t   a s   a n   e s c a p e   c o d e   t o   f i n d   a   l i t e r a l   . 2  6 7 6 l   ��������  ��  ��   7  8 9 8 l   �� : ;��   :   whew    ; � < < 
   w h e w 9  = > = r    ' ? @ ? I   #�� A B
�� .R*chFindMtch���     TEXT A m     C C � D D & ( ^ | \ .     ) [ A - Z a - z 0 - 9 ] B �� E F
�� 
SelM E l 
   G���� G m    ��
�� boovfals��  ��   F �� H��
�� 
Opts H K     I I �� J K
�� 
Rvrs J m    ��
�� boovtrue K �� L M
�� 
ExSl L m    ��
�� boovfals M �� N O
�� 
Rrsl N m    ��
�� boovfals O �� P Q
�� 
SMod P m    ��
�� SModGrep Q �� R S
�� 
STop R m    ��
�� boovfals S �� T��
�� 
Wrap T m    ��
�� boovfals��  ��   @ o      ���� 0 bbfind bbFind >  U V U l  ( (��������  ��  ��   V  W X W l  ( (�� Y Z��   Y [ U this grep pattern finds (the beginning of the line OR ".  ") and the first character    Z � [ [ �   t h i s   g r e p   p a t t e r n   f i n d s   ( t h e   b e g i n n i n g   o f   t h e   l i n e   O R   " .     " )   a n d   t h e   f i r s t   c h a r a c t e r X  \ ] \ l  ( (�� ^ _��   ^ N H because if this is the first sentence in the paragraph we don't want to    _ � ` ` �   b e c a u s e   i f   t h i s   i s   t h e   f i r s t   s e n t e n c e   i n   t h e   p a r a g r a p h   w e   d o n ' t   w a n t   t o ]  a b a l  ( (�� c d��   c / ) select the between-paragraphs whitespace    d � e e R   s e l e c t   t h e   b e t w e e n - p a r a g r a p h s   w h i t e s p a c e b  f g f l  ( (��������  ��  ��   g  h i h l  ( (�� j k��   j O I when creating a big find command like this, I recommend testing the find    k � l l �   w h e n   c r e a t i n g   a   b i g   f i n d   c o m m a n d   l i k e   t h i s ,   I   r e c o m m e n d   t e s t i n g   t h e   f i n d i  m n m l  ( (�� o p��   o S M in BBEdit itself a few times, in different situations, to see how it behaves    p � q q �   i n   B B E d i t   i t s e l f   a   f e w   t i m e s ,   i n   d i f f e r e n t   s i t u a t i o n s ,   t o   s e e   h o w   i t   b e h a v e s n  r s r l  ( (�� t u��   t K E and then you can incorporate it into the bigger script. (I found the    u � v v �   a n d   t h e n   y o u   c a n   i n c o r p o r a t e   i t   i n t o   t h e   b i g g e r   s c r i p t .   ( I   f o u n d   t h e s  w x w l  ( (�� y z��   y C = "selecting between-paragraph whitespace" behavior this way).    z � { { z   " s e l e c t i n g   b e t w e e n - p a r a g r a p h   w h i t e s p a c e "   b e h a v i o r   t h i s   w a y ) . x  | } | l  ( (��������  ��  ��   }  ~  ~ Z   ( [ � ��� � � =  ( 1 � � � n  ( / � � � 1   + /��
�� 
Fnd? � o   ( +���� 0 bbfind bbFind � m   / 0��
�� boovfals � k   4 9 � �  � � � l  4 4�� � ���   � J D could not find it. we must be on the first sentence of the document    � � � � �   c o u l d   n o t   f i n d   i t .   w e   m u s t   b e   o n   t h e   f i r s t   s e n t e n c e   o f   t h e   d o c u m e n t �  ��� � r   4 9 � � � m   4 5����  � o      ���� 0 thestart theStart��  ��   � k   < [ � �  � � � r   < Y � � � [   < U � � � l  < G ����� � n  < G � � � 1   C G��
�� 
Ofse � n  < C � � � 1   ? C��
�� 
MSpc � o   < ?���� 0 bbfind bbFind��  ��   � l  G T ����� � \   G T � � � l  G R ����� � n  G R � � � 1   N R��
�� 
leng � n  G N � � � 1   J N��
�� 
MSpc � o   G J���� 0 bbfind bbFind��  ��   � m   R S���� ��  ��   � o      ���� 0 thestart theStart �  � � � l  Z Z�� � ���   � , & found object is a BBEdit text_object.    � � � � L   f o u n d   o b j e c t   i s   a   B B E d i t   t e x t _ o b j e c t . �  ��� � l  Z Z�� � ���   � 7 1 add three to the offset to start after the ".  "    � � � � b   a d d   t h r e e   t o   t h e   o f f s e t   t o   s t a r t   a f t e r   t h e   " .     "��     � � � l  \ \��������  ��  ��   �  � � � r   \ x � � � I  \ t�� � �
�� .R*chFindMtch���     TEXT � m   \ _ � � � � �  \ .     � �� � �
�� 
SelM � l 
 ` a ����� � m   ` a��
�� boovfals��  ��   � �� ���
�� 
Opts � K   b p � � �� � �
�� 
Rvrs � m   c d��
�� boovfals � �� � �
�� 
ExSl � m   e f��
�� boovfals � �� � �
�� 
Rrsl � m   g h��
�� boovfals � �� � �
�� 
SMod � m   i j��
�� SModGrep � �� � �
�� 
STop � m   k l��
�� boovfals � �� ���
�� 
Wrap � m   m n��
�� boovfals��  ��   � o      ���� 0 lastfind lastFind �  � � � Z   y � � ��� � � =  y � � � � n  y � � � � 1   | ���
�� 
Fnd? � o   y |���� 0 lastfind lastFind � m   � ���
�� boovfals � k   � � � �  � � � l  � ��� � ���   � @ : could not find it - we must be at the end of the document    � � � � t   c o u l d   n o t   f i n d   i t   -   w e   m u s t   b e   a t   t h e   e n d   o f   t h e   d o c u m e n t �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
leng �  g   � � � o      ���� 0 theend theEnd �  � � � l  � ��� � ���   � D > "it" means "what Applescript object we are telling right now"    � � � � |   " i t "   m e a n s   " w h a t   A p p l e s c r i p t   o b j e c t   w e   a r e   t e l l i n g   r i g h t   n o w " �  ��� � l  � ��� � ���   � a [ in this case ("tell text of front text document") it's the text_object of the front window    � � � � �   i n   t h i s   c a s e   ( " t e l l   t e x t   o f   f r o n t   t e x t   d o c u m e n t " )   i t ' s   t h e   t e x t _ o b j e c t   o f   t h e   f r o n t   w i n d o w��  ��   � k   � � � �  � � � r   � � � � � [   � � � � � l  � � ����� � n  � � � � � 1   � ���
�� 
Ofse � n  � � � � � 1   � ���
�� 
MSpc � o   � ����� 0 lastfind lastFind��  ��   � l  � � ����� � \   � � � � � l  � � ����� � n  � � � � � 1   � ��
� 
leng � n  � � � � � 1   � ��~
�~ 
MSpc � o   � ��}�} 0 lastfind lastFind��  ��   � m   � ��|�| ��  ��   � o      �{�{ 0 theend theEnd �  ��z � l  � ��y � ��y   � I C -3 again because we want to select everything inside what we found    � � � � �   - 3   a g a i n   b e c a u s e   w e   w a n t   t o   s e l e c t   e v e r y t h i n g   i n s i d e   w h a t   w e   f o u n d�z   �  � � � l  � ��x�w�v�x  �w  �v   �  ��u � I  � ��t �s
�t .miscslctnull��� ��� obj   l  � ��r�q 7  � ��p
�p 
cha  o   � ��o�o 0 thestart theStart l  � ��n�m o   � ��l�l 0 theend theEnd�n  �m  �r  �q  �s  �u    n    
 m    
�k
�k 
ctxt 4   �j
�j 
TxtD m    �i�i  	 m     �                                                                                  R*ch  alis    f  OSX_Vera                   �� H+   ��
BBEdit.app                                                     *\��,@        ����  	                Applications    ��fX      ��d�     �� jR  �  .OSX_Vera:Users: aias: Applications: BBEdit.app   
 B B E d i t . a p p    O S X _ V e r a  "Users/aias/Applications/BBEdit.app  /    ��  ��  ��    	�h	 l     �g�f�e�g  �f  �e  �h       �d
�d  
 �c
�c .aevtoappnull  �   � **** �b�a�`�_
�b .aevtoappnull  �   � **** k     �  �^�^  �a  �`     �]�\ C�[�Z�Y�X�W�V�U�T�S�R�Q�P�O�N�M�L�K�J ��I�H�G�F
�] 
TxtD
�\ 
ctxt
�[ 
SelM
�Z 
Opts
�Y 
Rvrs
�X 
ExSl
�W 
Rrsl
�V 
SMod
�U SModGrep
�T 
STop
�S 
Wrap�R �Q 
�P .R*chFindMtch���     TEXT�O 0 bbfind bbFind
�N 
Fnd?�M 0 thestart theStart
�L 
MSpc
�K 
Ofse
�J 
leng�I 0 lastfind lastFind�H 0 theend theEnd
�G 
cha 
�F .miscslctnull��� ��� obj �_ �� �*�k/�- ���f��e�f�f���f�f�� E` O_ a ,f  
kE` Y !_ a ,a ,_ a ,a ,kE` OPOa �f��f�f�f���f�f�� E` O_ a ,f  *a ,E` OPY !_ a ,a ,_ a ,a ,mE` OPO*[a \[Z_ \Z_ 2j UU ascr  ��ޭ