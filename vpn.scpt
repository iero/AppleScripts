FasdUAS 1.101.10   ��   ��    k             l     ��  ��    + % G. Fabre for Apple@Total - june 2017     � 	 	 J   G .   F a b r e   f o r   A p p l e @ T o t a l   -   j u n e   2 0 1 7   
  
 l     ��  ��    \ V Adapted from Halocaridina - https://gist.github.com/halocaridina/99466e4b1d08e57fb9dd     �   �   A d a p t e d   f r o m   H a l o c a r i d i n a   -   h t t p s : / / g i s t . g i t h u b . c o m / h a l o c a r i d i n a / 9 9 4 6 6 e 4 b 1 d 0 8 e 5 7 f b 9 d d      l     ��������  ��  ��        l     ��  ��    ) # Automatically connect to Total VPN     �   F   A u t o m a t i c a l l y   c o n n e c t   t o   T o t a l   V P N      l     ��  ��    * $Launch with osacript ScriptName.scpt     �   H L a u n c h   w i t h   o s a c r i p t   S c r i p t N a m e . s c p t      l     ��������  ��  ��        l        !  r      " # " m     ����  # o      ���� 0 timermax timerMax    
 max retry    ! � $ $    m a x   r e t r y   % & % l    ' ( ) ' r     * + * m    ����  + o      ���� 0 
timerdelay 
timerDelay ( !  nb of seconds before retry    ) � , , 6   n b   o f   s e c o n d s   b e f o r e   r e t r y &  - . - l    /���� / r     0 1 0 m    	 2 2 � 3 3 N C i s c o   A n y C o n n e c t   S e c u r e   M o b i l i t y   C l i e n t 1 o      ���� 0 	targetapp 	targetApp��  ��   .  4 5 4 l     �� 6 7��   6 M G Name of Smartcard entry in keychain (which countains IGG and PINCODE):    7 � 8 8 �   N a m e   o f   S m a r t c a r d   e n t r y   i n   k e y c h a i n   ( w h i c h   c o u n t a i n s   I G G   a n d   P I N C O D E ) : 5  9 : 9 l    ;���� ; r     < = < m     > > � ? ?  S m a r t c a r d _ P I N = o      ���� 0 instring inString��  ��   :  @ A @ l     ��������  ��  ��   A  B C B l     �� D E��   D - ' Check if smartcard reader is connected    E � F F N   C h e c k   i f   s m a r t c a r d   r e a d e r   i s   c o n n e c t e d C  G H G l    I���� I r     J K J m    ��
�� boovfals K o      ���� 0 btstatus BTstatus��  ��   H  L M L l    N���� N r     O P O m    ����   P o      ���� 	0 timer  ��  ��   M  Q R Q l   Z S���� S V    Z T U T k     U V V  W X W r     ( Y Z Y I     &�� [���� ,0 checksmartcardreader checkSmartCardReader [  \�� \ m   ! " ] ] � ^ ^ " S m a r t   R e a d e r   2 5 0 1��  ��   Z o      ���� 0 btstatus BTstatus X  _�� _ Z   ) U ` a���� ` =  ) , b c b o   ) *���� 0 btstatus BTstatus c m   * +��
�� boovfals a k   / Q d d  e f e Z   / E g h���� g =  / 2 i j i o   / 0���� 	0 timer   j o   0 1���� 0 timermax timerMax h k   5 A k k  l m l I  5 :�� n��
�� .sysodlogaskr        TEXT n m   5 6 o o � p p < S m a r t c a r d   r e a d e r   n o t   c o n n e c t e d��   m  q�� q R   ; A���� r
�� .ascrerr ****      � ****��   r �� s��
�� 
errn s m   = >��������  ��  ��  ��   f  t u t r   F K v w v [   F I x y x o   F G���� 	0 timer   y m   G H����  w o      ���� 	0 timer   u  z�� z I  L Q�� {��
�� .sysodelanull��� ��� nmbr { o   L M���� 0 
timerdelay 
timerDelay��  ��  ��  ��  ��   U =    | } | o    ���� 0 btstatus BTstatus } m    ��
�� boovfals��  ��   R  ~  ~ l     ��������  ��  ��     � � � l     �� � ���   � ) # Get IGG and PIN code from keychain    � � � � F   G e t   I G G   a n d   P I N   c o d e   f r o m   k e y c h a i n �  � � � l  [ l ����� � r   [ l � � � I  [ h�� ���
�� .sysoexecTEXT���     TEXT � b   [ d � � � b   [ ` � � � m   [ ^ � � � � � V / u s r / b i n / s e c u r i t y   f i n d - g e n e r i c - p a s s w o r d   - s   � o   ^ _���� 0 instring inString � m   ` c � � � � � L   |   g r e p   a c c t   |   a w k   - F   ' " '   ' { p r i n t   $ 4 } '��   � o      ���� 
0 igg IGG��  ��   �  � � � l  m ~ ����� � r   m ~ � � � I  m z�� ���
�� .sysoexecTEXT���     TEXT � b   m v � � � b   m r � � � m   m p � � � � � V / u s r / b i n / s e c u r i t y   f i n d - g e n e r i c - p a s s w o r d   - s   � o   p q���� 0 instring inString � m   r u � � � � �    - w��   � o      ���� 
0 pin PIN��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �  
 For debug    � � � �    F o r   d e b u g �  � � � l     �� � ���   � 3 -display dialog "IGG :" & IGG & " PIN :" & PIN    � � � � Z d i s p l a y   d i a l o g   " I G G   : "   &   I G G   &   "   P I N   : "   &   P I N �  � � � l     �� � ���   � f `display dialog "security unlock-keychain -p " & PIN & " \"" & IGG & "                        \""    � � � � � d i s p l a y   d i a l o g   " s e c u r i t y   u n l o c k - k e y c h a i n   - p   "   &   P I N   &   "   \ " "   &   I G G   &   "                                                 \ " " �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �    Unlock Smartcard keychain    � � � � 4   U n l o c k   S m a r t c a r d   k e y c h a i n �  � � � l   � ����� � r    � � � � m    ���
�� boovfals � o      ����  0 keychainstatus keyChainStatus��  ��   �  � � � l  � � ����� � r   � � � � � m   � �����   � o      ���� 	0 timer  ��  ��   �  � � � l  � � ����� � V   � � � � � k   � � � �  � � � r   � � � � � I   � ��� �����  0 unlockkeychain unlockKeyChain �  � � � o   � ����� 
0 igg IGG �  ��� � o   � ����� 
0 pin PIN��  ��   � o      ����  0 keychainstatus keyChainStatus �  ��� � Z   � � � ����� � =  � � � � � o   � �����  0 keychainstatus keyChainStatus � m   � ���
�� boovfals � k   � � � �  � � � Z   � � � ����� � =  � � � � � o   � ����� 	0 timer   � o   � ����� 0 timermax timerMax � k   � � � �  � � � I  � ��� ���
�� .sysodlogaskr        TEXT � m   � � � � � � � < C a n n o t   r e a d   S m a r t c a r d   k e y c h a i n��   �  ��� � R   � ����� �
�� .ascrerr ****      � ****��   � �� ���
�� 
errn � m   � ���������  ��  ��  ��   �  � � � r   � � � � � [   � � � � � o   � ����� 	0 timer   � m   � �����  � o      ���� 	0 timer   �  �� � I  � ��~ ��}
�~ .sysodelanull��� ��� nmbr � o   � ��|�| 0 
timerdelay 
timerDelay�}  �  ��  ��  ��   � =  � � � � � o   � ��{�{  0 keychainstatus keyChainStatus � m   � ��z
�z boovfals��  ��   �  � � � l     �y�x�w�y  �x  �w   �  � � � l     �v � ��v   � g ado shell script "security unlock-keychain -p " & PIN & " \"" & IGG & "                        \""    � � � � � d o   s h e l l   s c r i p t   " s e c u r i t y   u n l o c k - k e y c h a i n   - p   "   &   P I N   &   "   \ " "   &   I G G   &   "                                                 \ " " �  � � � l     �u�t�s�u  �t  �s   �  � � � l     �r � ��r   � 3 - Determine if AnyConnect is currently running    � � � � Z   D e t e r m i n e   i f   A n y C o n n e c t   i s   c u r r e n t l y   r u n n i n g �  � � � l  � � �q�p  O   � � r   � � I  � ��o�n
�o .coredoexnull���     **** 4   � ��m
�m 
prcs o   � ��l�l 0 	targetapp 	targetApp�n   o      �k�k 0 processexists processExists m   � ��                                                                                  sevs  alis    �  Digital                    �q��H+     (System Events.app                                               ����?H        ����  	                CoreServices    �q��      ��#(       (   '   &  8Digital:System: Library: CoreServices: System Events.app  $  S y s t e m   E v e n t s . a p p    D i g i t a l  -System/Library/CoreServices/System Events.app   / ��  �q  �p   � 	 l     �j�i�h�j  �i  �h  	 

 l     �g�g   @ : if anyconnect is running, kill it and activate it again.     � t   i f   a n y c o n n e c t   i s   r u n n i n g ,   k i l l   i t   a n d   a c t i v a t e   i t   a g a i n .    l     �f�f     Otherwise activate it.    � .   O t h e r w i s e   a c t i v a t e   i t .  l  ���e�d Z   ���c =  � � o   � ��b�b 0 processexists processExists m   � ��a
�a boovtrue k   ��  l  � ��` �`     Quit before reconnecting     �!! 2   Q u i t   b e f o r e   r e c o n n e c t i n g "#" r   � �$%$ m   � ��_
�_ boovfals% o      �^�^ 0 	connected  # &'& r   � ()( m   � ��]�]  ) o      �\�\ 	0 timer  ' *+* V  K,-, k  F.. /0/ r  121 I  �[3�Z�[ "0 disconnectcisco disconnectCisco3 4�Y4 o  �X�X 0 	targetapp 	targetApp�Y  �Z  2 o      �W�W 0 	connected  0 5�V5 Z  F67�U�T6 = 898 o  �S�S 0 	connected  9 m  �R
�R boovfals7 k  B:: ;<; Z  6=>�Q�P= = !?@? o  �O�O 	0 timer  @ o   �N�N 0 timermax timerMax> k  $2AA BCB I $+�MD�L
�M .sysodlogaskr        TEXTD m  $'EE �FF . C a n n o t   d i s c o n n e c t   C i s c o�L  C G�KG R  ,2�J�IH
�J .ascrerr ****      � ****�I  H �HI�G
�H 
errnI m  ./�F�F���G  �K  �Q  �P  < JKJ r  7<LML [  7:NON o  78�E�E 	0 timer  O m  89�D�D M o      �C�C 	0 timer  K P�BP I =B�AQ�@
�A .sysodelanull��� ��� nmbrQ o  =>�?�? 0 
timerdelay 
timerDelay�@  �B  �U  �T  �V  - = 
RSR o  �>�> 0 	connected  S m  	�=
�= boovfals+ TUT l LL�<�;�:�<  �;  �:  U VWV l LL�9XY�9  X   Then reconnect   Y �ZZ    T h e n   r e c o n n e c tW [\[ r  LQ]^] m  LM�8
�8 boovfals^ o      �7�7 0 	connected  \ _`_ r  RUaba m  RS�6�6  b o      �5�5 	0 timer  ` c�4c V  V�ded k  `�ff ghg r  `jiji I  `f�3k�2�3 0 connectcisco connectCiscok l�1l o  ab�0�0 0 	targetapp 	targetApp�1  �2  j o      �/�/ 0 	connected  h m�.m Z  k�no�-�,n = kppqp o  kn�+�+ 0 	connected  q m  no�*
�* boovfalso k  s�rr sts Z  s�uv�)�(u = svwxw o  st�'�' 	0 timer  x o  tu�&�& 0 timermax timerMaxv k  y�yy z{z I y��%|�$
�% .sysodlogaskr        TEXT| m  y|}} �~~ ( C a n n o t   c o n n e c t   C i s c o�$  { �# R  ���"�!�
�" .ascrerr ****      � ****�!  � � ��
�  
errn� m  �������  �#  �)  �(  t ��� r  ����� [  ����� o  ���� 	0 timer  � m  ���� � o      �� 	0 timer  � ��� I �����
� .sysodelanull��� ��� nmbr� o  ���� 0 
timerdelay 
timerDelay�  �  �-  �,  �.  e = Z_��� o  Z]�� 0 	connected  � m  ]^�
� boovfals�4  �c   k  ���� ��� r  ����� m  ���
� boovfals� o      �� 0 	connected  � ��� r  ����� m  ����  � o      �� 	0 timer  � ��� V  ����� k  ���� ��� r  ����� I  ������ 0 connectcisco connectCisco� ��� o  ���� 0 	targetapp 	targetApp�  �  � o      �� 0 	connected  � ��� Z  �����
�	� = ����� o  ���� 0 	connected  � m  ���
� boovfals� k  ���� ��� Z  ������� = ����� o  ���� 	0 timer  � o  ���� 0 timermax timerMax� k  ���� ��� I �����
� .sysodlogaskr        TEXT� m  ���� ��� ( C a n n o t   c o n n e c t   C i s c o�  � �� � R  �������
�� .ascrerr ****      � ****��  � �����
�� 
errn� m  ����������  �   �  �  � ��� r  ����� [  ����� o  ������ 	0 timer  � m  ������ � o      ���� 	0 timer  � ���� I �������
�� .sysodelanull��� ��� nmbr� o  ������ 0 
timerdelay 
timerDelay��  ��  �
  �	  �  � = ����� o  ������ 0 	connected  � m  ����
�� boovfals� ���� l ����������  ��  ��  ��  �e  �d   ��� l     ��������  ��  ��  � ��� l     ������  �   Internal Functions   � ��� &   I n t e r n a l   F u n c t i o n s� ��� l     ��������  ��  ��  � ��� i     ��� I      �������  0 unlockkeychain unlockKeyChain� ��� o      ���� 
0 igg IGG� ���� o      ���� 
0 pin PIN��  ��  � Q     (���� k    �� ��� I   �����
�� .sysoexecTEXT���     TEXT� b    ��� b    
��� b    ��� b    ��� m    �� ��� 8 s e c u r i t y   u n l o c k - k e y c h a i n   - p  � o    ���� 
0 pin PIN� m    �� ���    "� o    	���� 
0 igg IGG� m   
 �� ��� 2                                                 "��  � ���� L    �� m    ��
�� boovtrue��  � R      ����
�� .ascrerr ****      � ****� o      ���� 0 error_message  � �����
�� 
errn� o      ���� 0 error_number  ��  � Z    (������ =   ��� o    ���� 0 error_number  � m    ���� 2� k   ! #�� ��� l  ! !������  � @ : This error mean The specified keychain could not be found   � ��� t   T h i s   e r r o r   m e a n   T h e   s p e c i f i e d   k e y c h a i n   c o u l d   n o t   b e   f o u n d� ���� L   ! #�� m   ! "��
�� boovfals��  ��  � k   & (�� ��� l  & &������  � " display dialog error_message   � ��� 8 d i s p l a y   d i a l o g   e r r o r _ m e s s a g e� ���� L   & (�� m   & '��
�� boovfals��  �    l     ��������  ��  ��    i     I      ������ 0 connectcisco connectCisco �� o      ���� 0 	targetapp 	targetApp��  ��   Q     *	
 k      O    I  
 ������
�� .miscactvnull��� ��� null��  ��   4    ��
�� 
capp o    ���� 0 	targetapp 	targetApp  L     m    ��
�� boovtrue �� l   ��������  ��  ��  ��  	 R      ��
�� .ascrerr ****      � **** o      ���� 0 error_message   ����
�� 
errn o      ���� 0 error_number  ��  
 Z    *�� =     o    ���� 0 error_number   m    ������ k   # %  l  # #�� !��    g a This error mean Erreur dans Cisco AnyConnect Secure Mobility Client�: La connexion est invalide.   ! �"" �   T h i s   e r r o r   m e a n   E r r e u r   d a n s   C i s c o   A n y C o n n e c t   S e c u r e   M o b i l i t y   C l i e n t � :   L a   c o n n e x i o n   e s t   i n v a l i d e . #��# L   # %$$ m   # $��
�� boovfals��  ��   k   ( *%% &'& l  ( (��()��  ( " display dialog error_message   ) �** 8 d i s p l a y   d i a l o g   e r r o r _ m e s s a g e' +��+ L   ( *,, m   ( )��
�� boovfals��   -.- l     ��������  ��  ��  . /0/ i    121 I      ��3���� "0 disconnectcisco disconnectCisco3 4��4 o      ���� 0 	targetapp 	targetApp��  ��  2 Q     *5675 k    88 9:9 O   ;<; I  
 ������
�� .aevtquitnull��� ��� null��  ��  < 4    ��=
�� 
capp= o    ���� 0 	targetapp 	targetApp: >?> L    @@ m    ��
�� boovtrue? A��A l   ��������  ��  ��  ��  6 R      ��BC
�� .ascrerr ****      � ****B o      ���� 0 error_message  C ��D��
�� 
errnD o      ���� 0 error_number  ��  7 Z    *EF��GE =    HIH o    ���� 0 error_number  I m    ������F k   # %JJ KLK l  # #��MN��  M g a This error mean Erreur dans Cisco AnyConnect Secure Mobility Client�: La connexion est invalide.   N �OO �   T h i s   e r r o r   m e a n   E r r e u r   d a n s   C i s c o   A n y C o n n e c t   S e c u r e   M o b i l i t y   C l i e n t � :   L a   c o n n e x i o n   e s t   i n v a l i d e .L P��P L   # %QQ m   # $��
�� boovfals��  ��  G k   ( *RR STS l  ( (��UV��  U " display dialog error_message   V �WW 8 d i s p l a y   d i a l o g   e r r o r _ m e s s a g eT X��X L   ( *YY m   ( )��
�� boovfals��  0 Z[Z l     ��������  ��  ��  [ \]\ i    ^_^ I      ��`���� ,0 checksmartcardreader checkSmartCardReader` a��a o      ���� *0 smartcardreadername smartCardReaderName��  ��  _ k     nbb cdc r     efe I    ��g��
�� .sysoexecTEXT���     TEXTg m     hh �ii F s y s t e m _ p r o f i l e r   S P B l u e t o o t h D a t a T y p e��  f o      ���� 0 mystring myStringd jkj l   ��������  ��  ��  k lml l   ��no��  n * $initial check if it's not even there   o �pp H i n i t i a l   c h e c k   i f   i t ' s   n o t   e v e n   t h e r em qrq Z    lst��us H    vv E    wxw o    	���� 0 mystring myStringx o   	 
�� *0 smartcardreadername smartCardReaderNamet L    yy m    �~
�~ boovfals��  u k    lzz {|{ l   �}�|�{�}  �|  �{  | }~} l   �z��z   ( "find out if connected/disconnected   � ��� D f i n d   o u t   i f   c o n n e c t e d / d i s c o n n e c t e d~ ��� r    ��� m    �� ��� 
 n a m e :� n     ��� 1    �y
�y 
txdl� 1    �x
�x 
ascr� ��� l   ���� r    ��� l   ��w�v� n    ��� 2   �u
�u 
citm� o    �t�t 0 mystring myString�w  �v  � o      �s�s 0 mylist myList� 3 -each item of mylist is now one of the devices   � ��� Z e a c h   i t e m   o f   m y l i s t   i s   n o w   o n e   o f   t h e   d e v i c e s� ��� l     �r�q�p�r  �q  �p  � ��� r     '��� I    %�o��n
�o .corecnte****       ****� o     !�m�m 0 mylist myList�n  � o      �l�l "0 numberofdevices numberOfDevices� ��� r   ( +��� m   ( )�k�k � o      �j�j 0 counter  � ��i� U   , l��� l  3 g���� k   3 g�� ��� Z   3 a���h�g� E   3 9��� n   3 7��� 4   4 7�f�
�f 
cobj� o   5 6�e�e 0 counter  � o   3 4�d�d 0 mylist myList� o   7 8�c�c *0 smartcardreadername smartCardReaderName� Z   < ]����� E   < B��� n   < @��� 4   = @�b�
�b 
cobj� o   > ?�a�a 0 counter  � o   < =�`�` 0 mylist myList� m   @ A�� ���  C o n n e c t e d :   Y e s� L   E G�� m   E F�_
�_ boovtrue� ��� E   J P��� n   J N��� 4   K N�^�
�^ 
cobj� o   L M�]�] 0 counter  � o   J K�\�\ 0 mylist myList� m   N O�� ���  C o n n e c t e d :   N o� ��[� L   S U�� m   S T�Z
�Z boovfals�[  � l  X ]���� I  X ]�Y��X
�Y .sysodlogaskr        TEXT� m   X Y�� ���  E r r o r   P a r s i n g�X  �  this shouldn't happen   � ��� * t h i s   s h o u l d n ' t   h a p p e n�h  �g  � ��W� r   b g��� [   b e��� o   b c�V�V 0 counter  � m   c d�U�U � o      �T�T 0 counter  �W  � = 7loop through each devices checking for Connected string   � ��� n l o o p   t h r o u g h   e a c h   d e v i c e s   c h e c k i n g   f o r   C o n n e c t e d   s t r i n g� o   / 0�S�S "0 numberofdevices numberOfDevices�i  r ��R� l  m m�Q�P�O�Q  �P  �O  �R  ] ��N� l     �M�L�K�M  �L  �K  �N       �J�������J  � �I�H�G�F�E�I  0 unlockkeychain unlockKeyChain�H 0 connectcisco connectCisco�G "0 disconnectcisco disconnectCisco�F ,0 checksmartcardreader checkSmartCardReader
�E .aevtoappnull  �   � ****� �D��C�B���A�D  0 unlockkeychain unlockKeyChain�C �@��@ �  �?�>�? 
0 igg IGG�> 
0 pin PIN�B  � �=�<�;�:�= 
0 igg IGG�< 
0 pin PIN�; 0 error_message  �: 0 error_number  � ����9�8��7
�9 .sysoexecTEXT���     TEXT�8 0 error_message  � �6�5�4
�6 
errn�5 0 error_number  �4  �7 2�A ) �%�%�%�%j OeW X  ��  fY f� �3�2�1���0�3 0 connectcisco connectCisco�2 �/��/ �  �.�. 0 	targetapp 	targetApp�1  � �-�,�+�- 0 	targetapp 	targetApp�, 0 error_message  �+ 0 error_number  � �*�)�(��'
�* 
capp
�) .miscactvnull��� ��� null�( 0 error_message  � �&�%�$
�& 
errn�% 0 error_number  �$  �'���0 + *�/ *j UOeOPW X  ��  fY f� �#2�"�!��� �# "0 disconnectcisco disconnectCisco�" ��� �  �� 0 	targetapp 	targetApp�!  � ���� 0 	targetapp 	targetApp� 0 error_message  � 0 error_number  � �����
� 
capp
� .aevtquitnull��� ��� null� 0 error_message  � ���
� 
errn� 0 error_number  �  ����  + *�/ *j UOeOPW X  ��  fY f� �_������ ,0 checksmartcardreader checkSmartCardReader� ��� �  �� *0 smartcardreadername smartCardReaderName�  � ����
�	� *0 smartcardreadername smartCardReaderName� 0 mystring myString� 0 mylist myList�
 "0 numberofdevices numberOfDevices�	 0 counter  � h�����������
� .sysoexecTEXT���     TEXT
� 
ascr
� 
txdl
� 
citm
� .corecnte****       ****
� 
cobj
� .sysodlogaskr        TEXT� o�j E�O�� fY Z���,FO��-E�O�j E�OkE�O ?�kh��/� &��/� eY ��/� fY �j Y hO�kE�[OY��OP� ��� ������
� .aevtoappnull  �   � ****� k    ���  ��  %��  -��  9��  G��  L��  Q��  ���  ���  ���  ���  ���  ��� ����  �   ��  �  � $������ 2�� >������ ]�� o�������� � ����� � ������� �����������E��}��� �� 0 timermax timerMax�� 0 
timerdelay 
timerDelay�� 0 	targetapp 	targetApp�� 0 instring inString�� 0 btstatus BTstatus�� 	0 timer  �� ,0 checksmartcardreader checkSmartCardReader
�� .sysodlogaskr        TEXT
�� 
errn����
�� .sysodelanull��� ��� nmbr
�� .sysoexecTEXT���     TEXT�� 
0 igg IGG�� 
0 pin PIN��  0 keychainstatus keyChainStatus��  0 unlockkeychain unlockKeyChain
�� 
prcs
�� .coredoexnull���     ****�� 0 processexists processExists�� 0 	connected  �� "0 disconnectcisco disconnectCisco�� 0 connectcisco connectCisco����E�OkE�O�E�O�E�OfE�OjE�O Ah�f *�k+ 
E�O�f  '��  �j O)��lhY hO�kE�O�j Y h[OY��Oa �%a %j E` Oa �%a %j E` OfE` OjE�O Nh_ f *_ _ l+ E` O_ f  )��  a j O)��lhY hO�kE�O�j Y h[OY��Oa  *a �/j E` UO_ e  �fE` OjE�O Ih_ f *�k+ E` O_ f  )��  a  j O)��lhY hO�kE�O�j Y h[OY��OfE` OjE�O Ih_ f *�k+ !E` O_ f  )��  a "j O)��lhY hO�kE�O�j Y h[OY��Y XfE` OjE�O Ih_ f *�k+ !E` O_ f  )��  a #j O)��lhY hO�kE�O�j Y h[OY��OP ascr  ��ޭ