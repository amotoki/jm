m4_dnl # index.m4: GNU m4 source for index.html.
m4_dnl # -------------------------------------------------------------------
m4_dnl #
m4_dnl # [����¾�� make �����ǰ�¸�򻲾Ȥ���ե�����]
m4_dnl # jm_www.m4: �Ƽ� M4 �ޥ�������ե�����
m4_dnl #
m4_dnl # -------------------------------------------------------------------
m4_dnl
m4_include(jm_www.m4)
_EDIT_WARNING(index)
_HEADER(`�ޥ˥奢�륢�������֤Υ��������')

m4_dnl _MIRROR_LIST(download.html)

<P>
 roff �ڡ����Υ��������֤Ǥ���
 ��������Ū�˹�����ͽ��Ǥ���
</P>

<H2>���ΤΥ���������</H2>
<UL>
 <LI>m4_esyscmd(./bin/link-whole-archive.perl _DATE)</LI>
 <LI>���������֤� _LINK(README.html,README �ե�����)</LI>
 <LI>���������֤� _LINK(INSTALL.html,INSTALL �ե�����)</LI>
</UL>

<H2>RPM �ե�����</H2>
 m4_esyscmd(./bin/link-rpms.perl _DATE ./)
<P>
 �嵭���������֤��Ȥˤ��ƺ������� RPM �ѥå������Ǥ���
 �ѥå������˴ؤ���������
 _LINK(rpm/index.html,JM RPM/SRPM �ѥå�����)
 �����ˤʤäƤ���������
</P>
 
<H2>�ѥå������̥���������</H2>
 m4_esyscmd(./bin/link-partial-archives.perl _DATE)

_CREDITS

_BACK_TO_HOME

</BODY>
</HTML>

