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
_HEADER(`JM ����ǥå��� (LDP man-pages)')
<P>
 _LINK(http://www.tldp.org/,Linux Documentation Project)
 �ˤ�ä����ۤ���Ƥ���ޥ˥奢��ڡ����Ǥ���
</P>
<P>
 �ǿ��Ǥ������� <STRONG>����</STRONG> �ǡ�
 ���Ǥ������� �ٻ� �Ǽ����ޤ���
 ��󥯤Τʤ��ڡ����Ϥޤ���������Ƥ��ޤ���
</P>
<P>
 ��Ⱦ�����
 _LINK(./progress.html#LDP_man-pages,������ȥ���ǥå���)
 ��������������
</P>

m4_esyscmd(../bin/list_ldp.perl ../../manual _WWWROOT | nkf -e)

_CREDITS

 <P>
  _GREY_ICON
  _LINK(./index.html,JM ����ǥå��������)
 </P>

_BACK_TO_HOME

</body>
</html>

