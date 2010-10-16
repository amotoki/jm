m4_dnl # $Id: index.m4,v 1.2 2002/09/14 17:18:11 jm Exp $
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
_EDIT_WARNING(index)
_HEADER(`JM RPM/SRPM �ѥå�����')

<P>
�����Ǥϡ�
JM Project (�ʲ� JM) �����ۤ��Ƥ��� rpm �ѥå������ˤĤ����������ޤ���
</P>
<UL>
 <LI>_LINK(#download,���������)</LI>
 <LI>_LINK(#class,�ѥå������μ���)</LI>
 <LI>_LINK(#install,���󥹥ȡ���)</LI>
 <LI>_LINK(#rebuild,FHS ���� FSSTND �ؤ��ѹ� (src.rpm �� rebuild))</LI>
 <LI>_LINK(#customize,�ѥå������Υ������ޥ���)</LI>
 <LI>_LINK(#naming,rpm �ѥå������� naming �˴ؤ���)</LI>
</UL>

<H2><A name="download">���������</A></H2>

<P>
JM �����ۤ��Ƥ��� rpm �ѥå������ϡ��ʲ��Υ�󥯤������Ǥ��ޤ���
</P>

m4_esyscmd(../bin/link-rpms.perl _DATE ../)


<H2><A name="class">�ѥå������μ���</A></H2>

<H3>noarch.rpm</H3>
<P>
 JM �����ۤ��Ƥ��� man page �����ƴޤ�Ǥ��ޤ���
 ���󥹥ȡ��뤹�뤳�Ȥ����ܸ� man page �����ѤǤ��ޤ���
 ���󥹥ȡ������ FHS 2.x �˽��äơ�/usr/share/man/ja_JP.eucJP �۲��Ǥ���
</P>

<BLOCKQUOTE>
 ��: ���衢FSSTND �˽��ä��ǥ��쥯�ȥ깽��
 (���󥹥ȡ����褬 /usr/man �۲�) �����ۤ��Ƥ��ޤ�������
 FHS �˽��ä����󥹥ȡ�������ѹ��ˤʤ�ޤ�����
 man page ����Ѥ���������ꡢ
 �����ѹ����ä˥桼�����ռ�����ɬ�פϤ���ޤ��󤬡�
 symbolic link ��ĥ�äƤ������ʤɤϡ���դ�ɬ�פǤ���
</BLOCKQUOTE>

<P>
 /usr/share/man/ja_JP.eucJP �ʳ��Υǥ��쥯�ȥ�˥��󥹥ȡ��뤹��ʤɤ�
 �ѹ���ä��������ϡ�
 �����ۤ� src.rpm �򼫿Ȥι�碌��Ŭ�����������塢
 build ��Ȥˤ�äƥХ��ʥ�ѥå����� (noarch.rpm) ���������
 ���󥹥ȡ��뤷�ޤ�(���)��
</P>

<H3>src.rpm</H3>
<P>
 JM �����ۤ��Ƥ��� man page �Υ�������
 ����� noarch.rpm ���ۤ���Τ�ɬ�פ� spec �ե������ޤߤޤ���
 noarch.rpm �Υǥե���Ȥ��ѹ����������ʤɤ˻��Ѥ���ѥå������Ǥ���
</P>


<H2><A name="install">���󥹥ȡ���</A></H2>
<P>
 JM �����ۤ��Ƥ��� man page �򥤥󥹥ȡ��뤹��ˤϡ�
 noarch.rpm ��root ���¤ǥ��󥹥ȡ��뤷�ޤ���
 sudo ���뤤�� su �� root ���¤˰ܹԤ��ƥ��󥹥ȡ����Ȥ�ԤäƤ���������
</P>

<P>
 �����ȥǥ��쥯�ȥ�˼������� rpm �ѥå��������֤���
 �ʲ��Υ��ޥ�ɤ�¹Ԥ��ޤ���
</P>

<BLOCKQUOTE><PRE>
$ su
(�ѥ���� ������)
# rpm -Uvh jman_pages-0.5-xxx.noarch.rpm
# exit
</PRE></BLOCKQUOTE>

<P>
man page �ϡ�/usr/share/man/ja_JP.eucJP/ �۲��˥��󥹥ȡ��뤵��ޤ���
�ޤ�ɬ�פʾ��ˤΤߡ�ja_JP.eucJP ���Ф���
��ưŪ�� ja �Ȥ��� symblic link ��ĥ���ޤ���
</P>


<H2><A name="rebuild">FHS ���� FSSTND �ؤ��ѹ� (src.rpm �� rebuild)</A></H2>
<P>
FHS �ʥ��󥹥ȡ����� (/usr/share/man )�ǤϤʤ�
FSSTND �ʥ��󥹥ȡ����� (/usr/man) �Ȥ��������ϡ�
src.rpm �� rebuild �������б���ǽ�Ǥ���
</P>

<P>
rebuild ���� RPM �� /usr/lib/rpm/macros ���ɤߡ�
�����ƥब FHS �� FSSTND ����Ƚ�Ǥ�����Ȥߤ����Ѥ��Ƥ��뤿�ᡢ
�ۤȤ�ɤδĶ��� spec �ե�����ν��������פǤ���
</P>

<P>
�ʲ��� src.rpm �� rebuild �ˤĤ��Ƥμ��򼨤��ޤ���
</P>

<BLOCKQUOTE>
��: �ʲ�����ϡ�RPM �ΥС������ 3.0.x �ʹߤξ��Ǥ���
</BLOCKQUOTE>

<H3>1. ����</H3>
<P>
rebuild ��ȼ��Τϡ�root ���뤤�ϥ桼�����¤ǤΤɤ���Ǥ��ǽ�Ǥ���
root ���¤Ǻ�Ȥ�����ϡ�/usr/src/redhat �ʲ�
(RPM �Υǥե���ȡ�����¸�ߤ��Ƥ���Ϥ��Ǥ�) �Ǥκ�Ȥˤʤ�ޤ���
</P>

<BLOCKQUOTE>
 ��: ��������root ���¤Ǻ�Ȥ�Ԥ��ꥹ��(�����ƥ�»���ʤ�) ��ͤ�����硢
 �桼�����¤Ǥκ�Ȥ򶯤�����ޤ���
</BLOCKQUOTE>

<P>
�桼�����¤ǹԤ����ϡ�
�ۡ���ǥ��쥯�ȥ�˰ʲ��Υե�����/�ǥ��쥯�ȥ꤬�ɤ����¸�ߤ��뤳�Ȥ��ǧ����
̵����к������ޤ���
</P>

<DL>
 <DT>~/.rpmmacros</DT>
 <DD>
<BLOCKQUOTE><PRE>
%_topdir                /home/�桼��̾/rpm
%_builddir              %{_topdir}/BUILD
%_rpmdir                %{_topdir}/RPMS
%_sourcedir             %{_topdir}/SOURCES
%_specdir               %{_topdir}/SPECS
%_srcrpmdir             %{_topdir}/SRPMS
</PRE></BLOCKQUOTE>
  <P>
   �桼��̾�ˤϤ��ʤ��� login name �򵭽Ҥ��ޤ���
  </P>
 </DD>

 <DT>~/rpm/ �ʲ��Υǥ��쥯�ȥ깽��</DT>
 <DD>
<BLOCKQUOTE><PRE>
~/rpm/BUILD
     /RPMS/
     /SOURCES
     /SPECS
     /SRPMS
</PRE></BLOCKQUOTE>
 </DD>
</DL>

<H3>2. rebuild</H3>
<P>
�ʲ��Υ��ޥ�ɤ�¹Ԥ��ޤ���
</P>
<BLOCKQUOTE><PRE>
$ rpm --rebuild jman_pages-0.5-xxx.src.rpm      (�桼�����¤ξ��)
# rpm --rebuild jman_pages-0.5-xxx.src.rpm      (root ���¤ξ��)
</PRE></BLOCKQUOTE>

<H3>3. ���������ѥå������Υ��󥹥ȡ���</H3>
<P>
�ѥå������Ϥ��줾��ʲ��Υǥ��쥯�ȥ�˺�������ޤ���
</P>
<BLOCKQUOTE><PRE>
~/rpm/RPMS/noarch               (�桼�����¤ξ��)
/usr/src/redhat/RPMS/noarch     (root ���¤ξ��)
</PRE></BLOCKQUOTE>

<P>
���Ȥϡ��̾�ΥХ��ʥ�ѥå�������Ʊ�ͤ˥��󥹥ȡ��뤷�ޤ���
</P>

<P>
�ѥå�������Ŭ�ڤ˺������줿���ϡ�
�ʲ��Υ��ޥ�ɥ饤�󡦥��ץ�����Ƚ�ǲ�ǽ�Ǥ���
</P>

<BLOCKQUOTE><PRE>
$ rpm -qlp &lt;���������ѥå�����&gt;
</PRE></BLOCKQUOTE>


<H2><A name="customize">�ѥå������Υ������ޥ���</A></H2>
<P>
 FHS��FSSTND �ʳ��Υ��󥹥ȡ�����䡢
 ����¾ noarch.rpm �Υǥե���Ȥ��ѹ����������ϡ�
 src.rpm �� build ��ɬ�פǤ���
</P>

<P>
 �ޤ� jman_pages-0.5-xxx.src.rpm ��Ÿ�����ޤ���
</P>

<BLOCKQUOTE><PRE>
$ rpm -Uvh jman_pages-0.5-xxx.src.rpm   (�桼�����¤ξ��)
# rpm -Uvh jman_pages-0.5-xxx.src.rpm   (root ���¤ξ��)
</PRE></BLOCKQUOTE>

<P>
~/rpm/SPECS (�桼�����¤Ǽ¹Ԥ������) ���뤤��
/usr/src/redhat/SPECS (root ���¤Ǽ¹Ԥ������) �� spec �ե����뤬��
�ޤ� ~/rpm/SOURCES ���뤤�� /usr/src/redhat/SOURCES �˥������ե����뤬��
���줾�쥤�󥹥ȡ��뤵��ޤ���
</P>

<P>
��˾�����ѹ��� spec �ե�����˹Ԥä��塢�ѥå������� build ���ޤ���
</P>

<BLOCKQUOTE><PRE>
$ rpm -bb jman_pages.spec               (�桼�����¤ξ��)
# rpm -bb jman_pages.spec               (root ���¤ξ��)
</PRE></BLOCKQUOTE>

<P>
���ץ����ˤϰʲ��Τ褦�ʤ�Τ�����ޤ���Ŭ���Ȥ�ʬ���Ƥ���������
</P>


<BLOCKQUOTE><PRE>
-bb     �Х��ʥ�ѥå������� build      (noarch.rpm ���Ǥ��ޤ�)
-bs     �������ѥå������� build        (src.rpm ���Ǥ��ޤ�)
-ba     �嵭 2�Ĥ�Ʊ���� build          (noarch.rpm + src.rpm ���Ǥ��ޤ�)
</PRE></BLOCKQUOTE>

<P>
�ܺ٤ˤĤ��Ƥϡ��ǥ����ȥ�ӥ塼�������°�Υޥ˥奢��䡢
JF �� RPM-BUILD-HOWTO �ʤɤ򻲾Ȥ��Ƥ���������
</P>


<H2><A name="naming">rpm �ѥå������� naming �˴ؤ���</A></H2>
<P>
�ѥå�����̾�� man-pages-ja �ˤ��褦�Ȥ����Ƥ�����ޤ�������
man-pages-ja �Ȥ����ΤϤ����ޤǤ�Ѹ�� man-pages �ѥå��������б�����
���ܸ�man �ڡ����Υѥå�����̾�Ǥ���٤��ǡ�
JM ������ʪ�Ϥ���ʳ��Τ�Τ�¿���ޤ�Ǥ���Τǡ�
���Τ褦�� naming �ˤʤäƤ��ޤ���
</P>


<H2><A name="acknowledgement">�ռ�</A></H2>
<P>
RPM ��������� PJE �ץ������ȡ�
�ʤ�Ӥ�(��)�졼�����ե����֡�
�����ƥޥ˥奢������˷Ȥ�ä�¿���ο͡��˴��դ��ޤ���
�ޤ���linux-users ML/JM ML �ˤ����ơ�
rpm �ѥå����������˴ؤ��Ƥ������������ä����ͤ˴��դ��ޤ���
</P>

_CREDITS

 <P>
  <IMG SRC="../images/grey.png" WIDTH="14" ALT="* " HEIGHT="14">
  _LINK(../index.html,�ޥ˥奢�륢�������֤Υ�������ɤ����)
 </P>

_BACK_TO_HOME

</BODY>
</HTML>

