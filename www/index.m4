m4_dnl # $Id: index.m4,v 1.53 2005/07/18 22:33:19 ysato Exp $
m4_dnl # index.m4: GNU m4 source for index.html.
m4_dnl # -------------------------------------------------------------------
m4_dnl #
m4_dnl # [����¾�� make �����ǰ�¸�򻲾Ȥ���ե�����]
m4_dnl # jf_www.m4: �Ƽ� M4 �ޥ�������ե�����
m4_dnl #
m4_dnl # -------------------------------------------------------------------
m4_dnl
m4_include(jm_www.m4)
_EDIT_WARNING(index)
_HEADER(`JM Project')

 <DIV CLASS="copyright">
  m4_esyscmd(`env -u LANG date')
 </DIV>

_MIRROR_LIST

<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
<H2><A NAME="WHATSNEW">�������</A></H2>
<UL>
 <LI>���ۥ��������֤ν�򤹤�ɸ��� FSSTND ���� FHS ���ѹ����ޤ�����
  �ܺ٤�
  _LINK(./news2002.html#20020915,������)
  ��������������
  <SMALL>(2002/09/15)</SMALL>

 m4_esyscmd(`./bin/info-whole-archive.perl')

 <LI>_LINK(news.html,�������ɲþ���)
   <SMALL>(m4_esyscmd(`./bin/file_date.perl news.m4'))</SMALL></LI>

 <LI>_LINK(announcement/index.html,�����Τ��Τ餻)
</UL>

<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
<H2><A NAME="FILES">�ե�����</A></H2>
<DL>
 <DT>_LINK(INDEX/index.html,JM ����ǥå���)</DT>
 <DD>
  JM Project ���������줿�ޥ˥奢��ΰ����Ǥ���
  _LINK(INDEX/progress.html,������ȤοʹԾ���)
  �⸫�뤳�Ȥ��Ǥ��ޤ���
 </DD>

 <DT>�������ǥ��쥯�ȥ� (_LINK(manual/,roff), _LINK(pod/,pod))</DT>
 <DD>
  JM Project �Ǥκ�ȥ��᡼���Υ��ʥåץ���åȤǤ���
 </DD>

 <DT>_LINK(html/,html �ڡ����Υǥ��쥯�ȥ�)</DT>
 <DD>
  ��꡼���ǤΥޥ˥奢���
  _LINK(html/man/man1/man2html.1.html,man2html)
  �� html �������ڡ����Ǥ���
 </DD>

 <DT>_LINK(download.html,���������)</DT>
 <DD>
  �����ѥ��������֤ʤɤΥ�������ɤ��Ǥ���ڡ����Ǥ���
 </DD>
</DL>

<P>
 �ġ��Υե�����ΰ����ˤĤ��Ƥ�
 _LINK(copyright.html,����ˤĤ���)
 ��������������
</P>

<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
<H2><A NAME="SEARCH">man on WWW</A></H2>
<P>
 man ���ޥ�ɤδ�ñ�� WWW �ǤǤ���
 �ڡ���̾������������ֹ�����򤹤�ȡ�
 ��꡼���Ǥ� html �ڡ��������Ӥޤ���
 ���䤬ʣ��������ϰ������Фޤ���
</P>
<FORM METHOD="GET" ACTION="_MANCGI">
 <TABLE>
  <TR>
   <TH ALIGN="left">�ڡ���̾</TH>
   <TD>
    <INPUT TYPE="TEXT" NAME="Pagename" SIZE="40">
    <INPUT TYPE="SUBMIT" NAME="submit" VALUE="Search!">
   </TD>
  </TR>

  <TR>
   <TH ALIGN="left">�оݥ��������</TH>
   <TD>
    <INPUT TYPE=CHECKBOX NAME="Sec1" CHECKED>1
    <INPUT TYPE=CHECKBOX NAME="Sec2" CHECKED>2
    <INPUT TYPE=CHECKBOX NAME="Sec3" CHECKED>3
    <INPUT TYPE=CHECKBOX NAME="Sec4" CHECKED>4
    <INPUT TYPE=CHECKBOX NAME="Sec5" CHECKED>5
    <INPUT TYPE=CHECKBOX NAME="Sec6" CHECKED>6
    <INPUT TYPE=CHECKBOX NAME="Sec7" CHECKED>7
    <INPUT TYPE=CHECKBOX NAME="Sec8" CHECKED>8
    [<STRONG>_LINK(section.html,�����������Ȥ�?)</STRONG>]
   </TD>
  </TR>
 </TABLE>

</FORM>

<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
<!--
<H2>��ʸ����</H2>
<P>
_LINK(http://www.namazu.org/,Namazu)
��Ȥä� html �ڡ�������ʸ�����Ǥ���
</P>

<FORM METHOD="GET" ACTION="_NAMAZU"> -->
<!--hidden parameters--> <!--
<INPUT TYPE="HIDDEN" NAME="whence" VALUE="0">
<INPUT TYPE="HIDDEN" NAME="sort"   VALUE="score">
<INPUT TYPE="HIDDEN" NAME="dbname" VALUE="JM">

<TABLE>
 <TR>
  <TH>������</TH>
  <TD>
   <INPUT TYPE="TEXT" NAME="key" SIZE="40">
   <INPUT TYPE="SUBMIT" NAME="submit" VALUE="Search!">
  </TD>
 </TR>

 <TR>
  <TH>ɽ�����</TH>
  <TD>
   <SELECT NAME="max">
    <OPTION VALUE="10">10
    <OPTION SELECTED VALUE="20">20
    <OPTION VALUE="30">30
    <OPTION VALUE="50">50
    <OPTION VALUE="100">100
   </SELECT>

   <STRONG>����ɽ��</STRONG>
   <SELECT NAME="format">
    <OPTION SELECTED VALUE="long">ON
    <OPTION VALUE="short">OFF
   </SELECT>
   <STRONG>[<A HREF="_NAMAZU?dbname=JM">�����Υҥ��</A>]</STRONG>
  </TD>
 </TR>
</TABLE>
</FORM>
-->

<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
<H2><A NAME="ABOUTJM">JM Project �ˤĤ���</A></H2>
<P>
 JM Project �����ܸ쥪��饤��ޥ˥奢��ѥå������κ�����
 ���ۤ�ԤʤäƤ���ץ������ȤǤ���
 ���Υץ������Ȥˤ�����Ż��ˤ�
</P>
<UL>
 <LI>_LINK(INDEX/progress.html,man page ������������)
 <LI>_LINK(download.html,man page package ���Խ�������)
  (_LINK(rpm/index.html,RPM/SRPM ����))
 <LI>_LINK(man-ja/index.html,man ���ޥ�������մĶ�������)
</UL>
<P CLASS="noindent">
 �ʤɤ�����ޤ����ޤ�����β���Ȥ��Ƥϡ�
<UL>
 <LI>�����Ѥ� man page �μ���
 <LI>��ή�ؤ�Ϣ��ȡ�ɬ�פ˱������������۵��Ĥ�����Ū�ʼ���
 <LI>��ή�ѥå������ؤ������Υޡ���
</UL>
<P CLASS="noindent">
 ���󤲤��ޤ���
 ��ư�ξܺ٤� JM �ؤλ�����ˡ�ˤĤ��Ƥ�
 _LINK(guidance/index.html,JM ������Ȥμ����)
 ��������������
 �ʤ��᡼�뤬��������ʤ��ʤä����С��ϡ�
 _LINK(mail_error.html,�������顼����)
 ���ǧ���Ƥ���������
</P>

<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
<H2><A NAME="BUGREPORT">�Х���ݡ��Ȥ򤪴󤻤�������</A></H2>
<P>
 JM Project �����ۤ��Ƥ���ޥ˥奢��˴ؤ��ơ�
 �������������¾�����Ť�����������ޤ����顢
 JM@linux.or.jp �ޤǥ᡼��Ǥ��Τ餻����������
 ��ȥ᡼��󥰥ꥹ�Ȥ���������ޤ�����
 ���С��Ǥʤ��Ƥ���ƤǤ��ޤ���
 1 �Х��Ȥν����Ǥ��紿�ޤǤ���
</P>

<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
<H2><A NAME="LINK">���</A></H2>
<P>
 ���ܸ��ʸ���ޥ˥奢������ۤ��Ƥ���Ŀ�/�ץ������ȤؤΥ�󥯤Ǥ���
</P>
<UL>
 <LI>_LINK(../JF/,JF Project)</LI>
 <LI>_LINK(http://www.jp.freebsd.org/man-jp/,Japanese Manual Project for FreeBSD)</LI>
 <LI>_LINK(http://xjman.dsl.gr.jp/,X Japanese Documentation Project)</LI>
 <LI>_LINK(http://www.samba.gr.jp/,���� SAMBA �桼����)</LI>
 <LI>_LINK(http://www.unixuser.org/~euske/doc/openssh/jman/,OpenSSH ���ܸ�ޥ˥奢��ڡ���)</LI>
 <LI>_LINK(http://media.laic.u-hyogo.ac.jp/%7Ehayashi/internet/mh-plus.html,MH-plus project)
 <LI>_LINK(http://www.kobitosan.net/postfix/#Manual,Postfix �Τڡ���)
 <LI>_LINK(http://www.postgresql.jp/document/,PostgreSQL ���ܸ�ɥ������)
m4_dnl  <LI>_LINK(http://www.cpan.jp/,CPAN.jp)</LI>
m4_dnl  ­���ʤ餳�����ʤ�.
</UL>

<!-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -->
<H2>�ռ�</H2>
<P>
 �ʲ��γ��ͤΤ����Ϥ˴��դ��ޤ���
</P>
<P>
 �Х�����򤪴󤻲����ä��桼���Τߤʤ���
 �ޥ˥奢����£���Ƥ������ä�
 _LINK(../JF/,JF) ���С���
 Linux-ML���С���
 _LINK(http://www.jp.netbsd.org,NetBSD) jman project
 ��
 _LINK(http://www.jp.freebsd.org/man-jp/,FreeBSD jpman project)
 ��������
 ML �� www �Υ꥽�������󶡤��Ƥ������äƤ���
 _LINK(http://jla.linux.or.jp,JLA)��
 _LINK(http://www.namazu.org/,Namazu Project)
 �Τߤʤ���
</P>

_CREDITS

</BODY>
</HTML>

