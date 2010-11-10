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
_HEADER(`�����λؿ�')

<P>
 ����ʸ�Ϥ� JM Project �ˤ�����
 man page ������Ȥ˴ؤ���ؿˤǤ���
 �����ԤΤߤʤ���ˤ�;�פʼ�֤ˤʤ�Ȥϻפ��ޤ�����
 ����ɤ����ܸ�ޥ˥奢���������뤿��ˤ����Ϥ���������
</P>

<H2>�ޥ˥奢����ʸ�Υե����ޥåȤˤĤ���</H2>
<P>
 ����Υե����ޥåȤ������º�Ť��뤿��ˡ�
 �켡���ۥե����ޥåȤ� roff ��������Ѥ��ޤ���
 �ޤ� roff �Ǥκ�Ȥ�����Ǥ�����ˤϡ�
 ���λݤ� _LINK(mailto:linuxjm-discuss@lists.sourceforge.jp,JM-ML)
 �ޤ�Ϣ���Ƥ���������¾�� roff ���Υܥ��ƥ������罸���ޤ���
</P>

<P>
 ���ΤȤ��Ƥ�ʸ�Τ�����Τ��ᡢ
 �ä���ͳ���ʤ���о��� (�֤Ǥ����Ĵ) ���Ѥ��Ƥ���������
 �ޥ˥奢��ڡ����θ����Ȥ��Ƥϡ�
</P>
<PRE>
�֡�������
�֡��Ǥ��롣��
�֡����롣��
�֡��Ǥ��롣��
�֡��Ȥʤ롣��
</PRE>

<P CLASS="noindent">
 �ʤɤ���Ѥ��Ƥ���������
</P>

<P>
 �������ϡ֡��פ���ӡ֡��פ���Ѥ��Ƥ�������������������ñ����ʸ��
 ��ʬ�ζ��ڤ�ˤϡ�,�ס�.�פ��Ѥ��Ƥ⤫�ޤ��ޤ���
</P>


<H2><A NAME="commentize">��ʸ�Υ����Ȳ�</A></H2>
<P>
 ������Ȥ���Ǻ�Ȥ��ص���ޤ뤿�ᡢ
 �Ǥ���и�ʸ�򥳥��ȤǻĤ��Ƥ����Ƥ���������
 �������ָ�ʸ�˸����餢�ä������ȡפȶ��̤��뤿�ᡢ
 ��.\"O�פȤ��������Υ����ȤȤ��Ƥ�������
 (O �ϥ���ե��٥å� o ����ʸ��)��
 ��Ͽ�����ƥ�ϡ���꡼���Ǥ��������Ȥ���
 ���Υ����Ȥ�ưŪ�˽���ޤ���
</P>

<P>
 �����Ȳ��ˤϰʲ��Τ褦�����Ƥ�
 _LINK(commentate.awk,awk ������ץ�)
 ���Ѥ�����ɤ��Ǥ��礦��
</P>

<PRE>
#!/usr/bin/awk -f
{
    if ($0 ~ /^\.\\"/) {print}
    else {printf(".\\\"O %s\n", $0)}
}
</PRE>

<P>
 ����򥪥ꥸ�ʥ�� roff �ե�������Ф���
</P>

<pre>
        awk -f commentate.awk ar.1 &gt; ar.1.draft
</pre>

<P CLASS="noindent">
 �Τ褦���Ѥ��� ar.1.draft ���Ф��ƺ�Ȥ򤷤ޤ���
</P>

<P>
 �ʾ�κ�ȤǤϸ�ʸ�Ϥ��٤ƥ����ȥ����Ȥ���Ƥ��ޤ��ޤ�����
 .TH �Ԥ� .TP �ԤΤ褦�ˡ�
 ���Τޤ������Ǥˤ�Ĥ��Ƥ��������Ԥ⤢��Ȼפ��ޤ���
 ���Τ褦�ʹԤ򸵤��᤹��Ȥˤ� vi ���Ѥ���Τ��ڤǤ��礦��
 vim �Ϥʤ��ȥǥ��쥯�ȥ��
</P>

<PRE>
        map ^T 5xj
</PRE>

<P>
 �Ȥ����褦�����Ƥ� .vimrc �ե�������֤��Ƥ����ޤ� (^T �� Ctrl-T �Ǥ�)��
 �����Ȳ����� roff �ե������ vi �ǳ�����
 ���󥳥��Ȥ������Ԥ���Ƭ�� Ctrl-T ���ǤƤС�
 �����˼�äƤ����ޤ������Ԥ������� u �� undo��
</P>


<H2>���ɽ���ˤĤ���</H2>
<P>
 roff �����ˤ����� roff �Υ����ȤȤ��ƽ񤫤�Ƥ������ɽ���ϡ�
 ��ʸ�Τޤ޻Ĥ��Ƥ���������
 ����ˤ��θ�˥����ȤȤ��ơ�
 ��ʸ�������Ԥ����ɽ����ä��Ƥ���������
 �����Ԥθ���ɽ�������ʲ��˼����ޤ���
</P>

<PRE>
.\"
.\" Japanese Version Copyright (c) 1996 HANATAKA Shinya
.\"         all rights reserved.
.\" Translated Wed Nov 20 17:42:39 JST 1996
.\"         by HANATAKA Shinya
</PRE>

<P>
 ��ʸ (man ���ޥ�ɤ�������̤Ǹ�������ʬ) �����ɽ����������ˤϡ�
 ����⸶ʸ�Τޤ޻Ĥ��Ƥ���������
</P>

<P>
 ��ʸ�����ɽ�����ޤޤ�Ƥ��ʤ����ˤϡ�
 �����б��ˤʤ�Ȼפ��ޤ��Τ�
 JM@linux.or.jp �����̤��Ƥ���������
</P>

<P>
 GNU �Υޥ˥奢��ڡ����ˤϥޥ˥奢��ڡ���������ɽ���Τʤ����
 ������ޤ��������ξ�硢�嵭������������˲ä��ơ��ʲ���ʸ��ޥ˥�
 �������Ƭ���ղä��Ƥ���������
</P>

<PRE>
.\"   Copyright (C) 1994-1999 Free Software Foundation, Inc.
.\"
.\"   Permission is granted to make and distribute verbatim copies of
.\"this
.\"manual provided the copyright notice and this permission notice are
.\"preserved on all copies.
.\"
.\"   Permission is granted to copy and distribute modified versions of
.\"this manual under the conditions for verbatim copying, provided that
.\"the entire resulting derived work is distributed under the terms of a
.\"permission notice identical to this one.
.\"
.\"   Permission is granted to copy and distribute translations of this
.\"manual into another language, under the above conditions for modified
.\"versions, except that this permission notice may be stated in a
.\"translation approved by the Foundation.
.\"
</PRE>


<H2>�ü��Ѹ�������ˤĤ���</H2>
<P>
 �ü��Ѹ�������ϰʲ������ˤ˽��äƤ���������
</P>
<UL>
 <LI>���ޥ��̾���ؿ�̾��������̾�ʤɤ�����������
  ����ե��٥åȤΤޤޤǵ��Ҥ��롣</LI>

 <LI>��ʸ�Ȥ���߻��Ȥ��Ѹ��������ñ�ˤ��뤿��ˡ�
  �����Ѹ������������ˤϡ�
  ����θ��ˤ��ä��Ĥ��Ǹ����ʻ�����Ƥ���������
  <PRE>
��)      ��ͭ����(shared memory)
  </PRE></LI>

 <LI>�����Ѹ��̵�������ܸ�ˤ�����������ɽ������Ѥ��롣
  <PRE>
��)      �ߵ��һ�(descriptor)
         ���ǥ�������ץ���(descriptor)
  </PRE></LI>
</UL>

<P>
 �ޥ˥奢��֤Ǥ�����������Ԥ�����ˡ�
 �Ǥ���������Ѹ�ˤĤ���ñ��ꥹ�Ȥ�������Ƥ���������
 ñ��ꥹ�Ȥϡ����줾��Υޥ˥奢��ڡ�����Ƭ��
 �ʲ��Τ褦�� roff�Υ����ȷ�����������Ǥ���������
</P>
<PRE>
.\"WORD:        effective uid           �¸��桼����ID
.\"WORD:        out-of-band             �Ӱ賰
.\"WORD:        physical address        ʪ�����ɥ쥹
.\"WORD:        signal                  �����ʥ�
</PRE>

<H2>�������ˤĤ���</H2>
<P>
 �Ҳ�̾��θ����β�����(��)�ˤϰʲ������ˤ��Ѥ��Ƥ���������
</P>
<UL>
 <LI>�������ܸ�ˤʤäƤ����ΤˤĤ��ƤϤ�����Ѥ��롣</LI>
 <LI>�Ǥ�����������ȯ���˶ᤤɽ�����Ѥ��롣
  <PRE>
��)      �ߥ��꡼(memory)
         ������(memory)
  </PRE></LI>
 <LI>����ʳ��ξ��˸����β������Ͼ�ά���ʤ���
  <PRE>
��)      �ߥ���ѥ���(compiler)
         ������ѥ��顼(compiler)
  </PRE></LI>
</UL>

<H2>���������̾�ˤĤ���</H2>
<P>
 ���������̾�ˤĤ��Ƥϰʲ��Τ�Τ���Ѥ��Ƥ���������
</P>
<PRE>
ACKNOWLEDGEMENTS        �ռ�
ARGUMENTS               ������
AUTHOR                  ����
AUTHORS                 ����
BUGS                    �Х�
CAVEATS                 �ٹ�
COMMAND LINE OPTIONS    ���ץ����
COMPATIBILITY           �ܿ���
CONFORMING TO           ���
CONFORMS TO             ���
COPYING                 ���
COPYRIGHT               ���
DESCRIPTION             ����
DIAGNOSTICS             �֤���
ENVIRONMENT             �Ķ��ѿ�
ENVIRONMENT VARIABLES   �Ķ��ѿ�
ERROR                   ���顼
ERRORS                  ���顼
EXAMPLE                 ��
EXAMPLES                ��
EXIT CODES              �֤���
EXTENSION               ��ĥ
EXTENSIONS              ��ĥ
FILES                   �ե�����
FLAGS                   �ե饰
HISTORY                 ����
KEYWORDS                �������
LIMITATIONS             ����
NAME                    ̾��
NOTE                    ���
NOTES                   ���
OPTION                  ���ץ����
OPTIONS                 ���ץ����
PARAMETERS              ������
PORTABILITY             �ܿ���
RESTRICTIONS            ����
RETURN VALUE            �֤���
SEE ALSO                ��Ϣ����
SOLICITATION            ����
STANDARDS               ���
SYNOPSIS                ��
SYNTAX                  ��
VERSION                 �С������
WARNING                 �ٹ�
WARNINGS                �ٹ�
</PRE>

<P>
 ����¾����������ޤ�����
 JM@linux.or.jp �ޤ��䤤��碌�Ƥ���������
</P>

_CREDITS

 <P>
  <IMG SRC="../images/grey.png" WIDTH="14" ALT="* " HEIGHT="14">
  _LINK(index.html,JM ������Ȥμ���������)
 </P>

_BACK_TO_HOME

</BODY>
</HTML>

