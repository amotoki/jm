m4_dnl # index.m4: GNU m4 source for index.html.
m4_dnl # -------------------------------------------------------------------
m4_dnl #
m4_dnl # [����¾�� make �����ǰ�¸�򻲾Ȥ���ե�����]
m4_dnl # jf_www.m4: �Ƽ� M4 �ޥ�������ե�����
m4_dnl #
m4_dnl # -------------------------------------------------------------------
m4_dnl
m4_define(_SUB_ONE)
m4_include(../jm_www.m4)
_EDIT_WARNING(translation_note)
_HEADER(`JM-man-view.el �λȤ���')

<P>
JM-man-view �Ȥϡ��᡼����ʸ��
man page �Υե�����Τ�Τ���������ɽ�����뤿���
Emacs Lisp �Ǥ�
(Emacs ���ư���᡼���ȤäƤ���ͤ��ä������Ǥ�)��
</P>

<H2>ɬ�פʤ��</H2>
<UL>
<LI>_LINK(JM-man-view.el,JM-man-view.el)</LI>
<LI>_LINK(http://centaur.maths.qmw.ac.uk/Emacs/WoMan/,woman.el)
    (emacs21 �ʹߤǤ�ɸ��ź�դˤʤäƤ��ꡢ�ä������ɬ�פϤ���ޤ���)</LI>
<LI>Emacs (woman.el �� XEmacs ��Ǥ�ư���ʤ��Τ� XEmacs �ϥ���Ǥ�)
</UL>

<H2>������ˡ</H2>
<OL>
<LI>
 <P>woman.el �� JM-man-view.el �� load-path ���֤��ޤ���
  ����Ū�ˤϡ��㤨�� ~/elisp/ ��ξ�Ԥ��֤��� .emacs ��
 </P>
<PRE>
(setq load-path (cons (expand-file-name "~/elisp") load-path))
</PRE>
 <P>
  ���ɵ�����Ȥ褤�Ǥ��礦��
 </P>

<LI>
 <P>
  .emacs �˰ʲ����ɵ����ޤ���
 </P>
<PRE>
;; woman
(autoload 'woman "woman"
  "Decode and browse a UN*X man page." t)
(autoload 'woman-find-file "woman"
  "Find, decode and browse a specific UN*X man-page file." t)
;; JM-man-view
(autoload 'JM-man-view "JM-man-view" nil t)
(autoload 'JM-man-mail-view "JM-man-view" nil t)
</PRE>
</OL>
<P>
�ʾ������Ͻ����Ǥ���
</P>

<H2>�Ȥ�����</H2>
<P>
�᡼�뤬ɽ������Ƥ���Хåե��˰�ư���ơ�
M-x JM-man-view �Ȥ���С�
woman �ˤ�ä��������줿�ޥ˥奢�뤬�̥ե졼��
(X �ʤ饦����ɥ�) ��ɽ������ޤ���
Wanderlust/Mew ��ȤäƤ�����ϡ�
Summary �⡼�ɤ�
M-x JM-man-mail-view �Ȥ���Хޥ˥奢�뤬ɽ������ޤ���
</P>

<H2>�᡼��ξ��</H2>
<P>
JM-man-view.el �ϡ������оݤȤ���Хåե��ˤ�����
roff ʸ����Ф��ơ��ʲ��β�����֤��Ƥ��ޤ���
</P>
<OL>
<LI>�ޥ˥奢����ʬ����Ƭ�Ԥϡ�roff�Υ����ȤǤ��� .\" �ǻϤޤ� (��Ƭ�� .\")
<LI>�᡼����ʸ�κǸ�ޤ� manual �Ǥ���(= ��ʸ�������˥����������ʤ�)
</OL>
<P>
_LINK(./mailformat.html#JMpost,JMpost)
���ꤲ����ޥ˥奢��Ͼ�ξ����������ޤ��Τǡ�
�ä˰ռ����ʤ��Ȥ⤫�ޤ��ޤ���
</P>

<H2>����</H2>
<P>
 ���ߤΤȤ���woman.el �� mdoc �����Υޥ˥奢����Ѵ����Ǥ��ʤ��褦�Ǥ���
 �������ä� JM-man-view.el �Ǥ⡢
 ���η����Υޥ˥奢��ϱ����Ǥ��ʤ����Ȥˤʤ�ޤ���
</P>

_CREDITS

 <P>
  <IMG SRC="../images/grey.png" WIDTH="14" ALT="* " HEIGHT="14">
  _LINK(index.html,JM ������Ȥμ���������)
 </P>

_BACK_TO_HOME

</BODY>
</HTML>

