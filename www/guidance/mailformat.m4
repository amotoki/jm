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
_EDIT_WARNING(mailformat)
_HEADER(`��ȥ᡼��Υե����ޥå�')

<P>
 _LINK(repository.html,JM ʸ��δ�����ˡ)
 �˽Ҥ٤��褦�ˡ� JM �Ǥ���������оݤ� man �ڡ�����
 git ��ݥ��ȥ�ȥƥ����ȥǡ����١����ˤ�äƴ������Ƥ��ޤ���
</P>

<P>
 ������ؤ���Ͽ����ϲ�����ư�����뤿��ˡ�
 ML �������� post ����ݤˤϤ��Υڡ����˵��Ҥ��줿�褦��
 �ե����ޥåȤˤ��뤳�Ȥ��侩����ޤ���
 (sourceforge �ʹ߸�ϼ�ư��Ͽ�ϹԤäƤ��ޤ��󤬡�
 ��Ͽ��Ȥξ�ά���Τ��ᡢ���Υե����ޥåȤλ��Ѥ򤪴ꤤ���ޤ���)
</P>

<P>
 ��Ƥ���ϲ����뤿��ˡ� bash �λȤ���Ķ�������
 _LINK(#JMpost,JMpost ������ץ�)
 ��ȤäƤ��������Ȥ����Ǥ��礦��
 �ޤ���Wanderlust �� Mew �Υ桼���ξ��ˤϡ�JMpost �����Υ᡼���������Ƥ����
 _LINK(JMpost-wl.el,JMpost-wl.el) ��
 _LINK(JMpost-mew.el,JMpost-mew.el)
 ���Ѱդ���Ƥ��ޤ��Τǡ������������
</P>

 
<H2><A NAME="format">�᡼��Υե����ޥå�</A></H2>
<H3>������</H3>
<P>
 �����襢�ɥ쥹��
</P>

<BLOCKQUOTE><STRONG>
linuxjm-discuss@lists.sourceforge.jp
</STRONG></BLOCKQUOTE>

<P CLASS="noindent">
 �Ȥ��Ƥ���������
m4_dnl ����ϼºݤˤ� JM@linux.or.jp �ؤΥ����ꥢ���ǡ�
m4_dnl JM ML �Υ��Ф��̾�Υݥ��Ȥ�����Ʊ���褦���Ϥ��ޤ���
m4_dnl �����襢�ɥ쥹���Ѥ���Τϡ���ư�����Τ���Ǥ���
</P>

<H3>���֥�������</H3>
<P>
 �᡼��إå��� Subject �Ԥ�
</P>

<BLOCKQUOTE>
Subject: [POST:XX] (package ̾) (page �ե�����̾)
</BLOCKQUOTE>

<P CLASS="noindent">
 �Τ褦�ˤ��Ƥ���������
 XX �ΤȤ���ˤϡ���Ҥ���
 <A HREF="#stat">stat</A> ��񤤤Ƥ���������
 (��: [POST:TR] LDP man-pages strcmp.3)��
</P>

<H3>�إå�</H3>
<P>
 �᡼�����ʸ����Ƭ�ˡ��ڡ����ξ���򵭽Ҥ����إå����֤��Ƥ���������
 &lt;STATUS&gt;, &lt;/STATUS&gt; �˶��ޤ줿��ʬ���إå�����ˤʤ�ޤ���
 �إå������ 1 �� 1 �쥳���ɤ���ʤꡢ
 ���ڤ�� ": " (�����ȥ��ڡ���) �Ǥ���
 ɬ�פʥ쥳���ɤϰʲ��� 6 �ĤǤ���
</P>

<DL>
 <DT><A NAME="stat"><STRONG>stat</STRONG></A></DT>
 <DD>
  �ڡ����Υ��ơ������Ǥ���
  ("TR", "DO", "DP", "PR", "RO", "RR") �Τɤ줫��Ĥ�
  ���ꤷ�ޤ������줾��ΰ�̣�ϰʲ��Τ褦�ˤʤ�ޤ���
  <UL>
   <LI>TR: ������ͽ�� (Translation Reservation)
   <LI>DO: �ɥ�եȤ���ơ���ʬ�ǤϹ�����Ԥ�ʤ���
    (Draft Only)
   <LI>DP: �ɥ�եȤ���ơ�����³����ʬ�ǹ�����Ԥ���
    (Draft and Proof reservation)
   <LI>PR: �����Ԥ����֤Υɥ�եȤ��Ф��빻����Ȥ�ͽ��
    (Proof Reservation)
   <LI>RO: ��꡼������ơ���ʸ��������ͽ��Ϥ��ʤ���
    (Release Only)
   <LI>RR: ��꡼������ƤǤ�����ʸ�������β�����Ȥ�ͽ�󤹤롣
    (Release and update Reservation)
  </UL>

 <DT><STRONG>ppkg</STRONG></DT>
 <DD>���� man �ڡ������ޤޤ��ѥå�������̾��</DD>

 <DT><STRONG>page</STRONG></DT>
 <DD>�ڡ����Υե�����̾</DD>

 <DT><STRONG>date</STRONG></DT>
 <DD>_LINK(repository.html#translation_list,translation_list)
  �ǡ����١����˵�Ͽ���������</DD>

 <DT><STRONG>mail</STRONG></DT>
 <DD>��ƼԤΥ᡼�륢�ɥ쥹</DD>

 <DT><STRONG>name</STRONG></DT>
 <DD>��ƼԤ� Real Name (���޻�ɽ����˾�ޤ���)</DD>
</DL>

<P>
 �㤨��������Ȥ�ͽ��ξ��ϡ��ʲ��Τ褦�ˤʤ�ޤ���
</P>

<PRE>
&lt;STATUS&gt;
stat: TR
ppkg: GNU sharutils
page: shar.1
date: 1999/10/04
mail: nakano@apm.seikei.ac.jp
name: NAKANO Takeo
&lt;/STATUS&gt;
</PRE>

<H3>��ʸ</H3>
<P>
 �إå��θ塢 man �ڡ�������ʸ���֤��Ƥ���������
 �إå��ʹߤ˺ǽ�˸��줿�ֶ��԰ʳ��ιԡפ��顢
 �᡼��������ޤǤ� man �ڡ����Ȥ�����Ͽ����ޤ���
 ���ä� signature �����֤��ʤ��褦�ˤ��Ƥ���������
</P>

<P>
 man �ڡ������Τν񼰤䡢���Ҥ˴ؤ�����դʤɤ�
 _LINK(translation_note.html,�����λؿ�)
 �򻲹ͤˤ��Ƥ���������
</P>

<H2><A NAME="JMpost">JMpost ���ޥ��</A></H2>
<P>
 �ʾ�Υե����ޥåȤΥ᡼���������ñ�˹Ԥ����ᡢ
 bash �Υ����륹����ץ�
 _LINK(JMpost,JMpost)
 ���Ѱդ��ޤ�����
 �ʲ��˻Ȥ������������ޤ���
</P>

<H3>���ޥ�ɥ饤��</H3>
<PRE>
        JMpost [-S stat] [-P pkg] [-F page] [-D date]
          [-M mail] [-R name] [filename] [-post]
</PRE>

<H3>�Ȥ���</H3>
<P>
 ͽ�󡦺�ȥڡ�������Ͽ�Ȥ���Ѥ��ޤ���
 ��Ȥ����ե������ CVS ��ݥ��ȥ����Ͽ������
 (-S ���ץ����� DO, DP, RO, RR ���б�) �ϡ�
 ���Υե�����򥳥ޥ�ɥ饤��˻��ꤷ�ޤ���
</P>

<P>
 ���ץ��������ƾ�ά��ǽ�Ǥ�����
 ɬ�פ˱����Ƽ���Υץ��ץȤ��Ф���ޤ���
 �ץ��ץȤ�ɸ�२�顼���Ϥ˽Ф��졢
 ɸ�����Ϥ����������դ��ޤ���
</P>

<P>
 ���ޥ�ɥ饤��κǸ�� -post ���ץ�����Ĥ���ȡ�
 ��̤� /usr/lib/sendmail ���Ѥ��� JM-ML �˥ݥ��Ȥ���ޤ���
 -post ���ץ�����Ĥ��ʤ����ϡ�
 ML ��ή��������Ƥ�ɸ����Ϥ˽񤭽Ф���ޤ���
</P>

<H3>���ץ����</H3>

<DL>
 <DT><A NAME="status"><STRONG>-S</STRONG></A></DT>
 <DD>
  ʸ��Υ��ơ������򵭽Ҥ��ޤ���ͭ���ʤ�Τϰʲ��Τɤ줫�Ǥ���
  <UL>
   <LI>TR: ������ͽ��Ǥ��� (Translation Reservation)
   <LI>DO: �ɥ�եȤ���ƤǤ�����ʬ�ǤϹ�����Ԥ�ʤ����Ǥ���
    (Draft Only)
   <LI>DP: �ɥ�եȤ���ƤǤ�������³����ʬ�ǹ�����Ԥ����Ǥ���
    (Draft and Proof reservation)
   <LI>PR: �����Ԥ����֤Υɥ�եȤ��Ф��빻����Ȥ�ͽ��Ǥ���
    (Proof Reservation)
   <LI>RO: ��꡼������ƤǤ�����ʸ��������ͽ��Ϥ��ʤ����Ǥ���
    (Release Only)
   <LI>RR: ��꡼������ƤǤ�����ʸ�������β�����Ȥ�ͽ���ޤߤޤ���
    (Release and update Reservation)
  </UL>
  �᡼����������Ƥ�ź�դ����Τ�
  DO, DP, RO, RR �Τ����줫�ξ��ˤʤ�ޤ���
  _LINK(repository.html#translation_list,translation_list �ν�)
  �⻲�ͤˤ�����ɤ��Ǥ��礦��
 </DD>

 <DT><STRONG>-P</STRONG></DT>
 <DD>
  �ѥå�������̾���Ǥ���(��: util-linux, "GNU bash")
 </DD>

 <DT><STRONG>-F</STRONG></DT>
 <DD>
  �ڡ�����̾���Ǥ��� (��: mount.8, bash.1)
 </DD>
 <DT><STRONG>-D</STRONG></DT>
 <DD>
  ���դǤ�����ά����� date ���ޥ�ɤη�̤��Ѥ����ޤ���
 </DD>
 <DT><STRONG>-M</STRONG></DT>
 <DD>
  ��ȼԤΥ᡼�륢�ɥ쥹�Ǥ���
 </DD>
 <DT><STRONG>-R</STRONG></DT>
 <DD>
  ��ȼԤ� Real Name �Ǥ���
 </DD>
</DL>

<H3>�Ρ���</H3>
<P>
 ������ץȤ���Ƭ��ʬ�ˤ��� <CODE>name</CODE> �����
 <CODE>mail</CODE> �ѿ���Ŭ�����ꤷ�Ƥ����ȡ�
 -M ���ץ����� -P ���ץ����λ�����ά�Ǥ��ޤ���
</P>

<H3>��</H3>
<P>
 LDP man-pages �ѥå������ˤ���
 printf.3 �˴ؤ�����򼨤��ޤ���
 -M ���ץ����� -R ���ץ����Ͼ�ά���ޤ���
</P>

<H4>������ͽ�󤹤���</H4>
<PRE>
        % JMpost -S TR -P "LDP man-pages" -F printf.3 -post
</PRE>

<H4>�ɥ�եȤ���Ƥ�����</H4>
<P>
 �������줿�ե������ printf.3.draft
 �˵��Ҥ���Ƥ����ΤȤ��ޤ���
</P>
<PRE>
        % JMpost -S DP -P "LDP man-pages" -F printf.3 printf.3.draft -post
</PRE>
<P CLASS="noindent">
 ����ϰ���³����ʬ�ǹ�����Ԥ����Ǥ���
 ������¾�οͤ�Ǥ������� -S DO �Ȥ��ޤ���
</P>

<H4>��꡼���Ǥ���Ƥ�����</H4>
<P>
 �������줿�ե������Ʊ���� printf.3.draft
 �˵��Ҥ���Ƥ����ΤȤ��ޤ���
 �ʤ������ΤȤ���ʸ�Υ����� (.\"O..) ��
 ��ʬ�Ǻ������ɬ�פ�<STRONG>����ޤ���</STRONG>��
 ��Ͽ�����ƥब��ưŪ�� strip ���ޤ���
</P>
<PRE>
        % JMpost -S RO -P "LDP man-pages" -F printf.3 printf.3.draft -post
</PRE>
<P CLASS="noindent">
 "-S RR" ����Ƥ���ȡ����� printf.3 �Υ��ꥸ�ʥ뤬 update 
 ���줿�Ȥ�����ƼԤ�����ͽ�󤬼�ưŪ�˳�����Ƥ��ޤ���
</P>

_CREDITS

 <P>
  <IMG SRC="../images/grey.png" WIDTH="14" ALT="* " HEIGHT="14">
  _LINK(index.html,JM ������Ȥμ���������)
 </P>

_BACK_TO_HOME

</BODY>
</HTML>

