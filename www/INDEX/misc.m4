m4_dnl # $Id: misc.m4,v 1.4 2000/08/02 10:00:53 nakano Exp $
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
_HEADER(`JM ����ǥå��� (Unix ����)')

<P>
 Linux �˸¤�ʤ��� Unix ���ѤΥ��եȥ������ѥå����������äƤ���
 �ޥ˥奢��ڡ���������������ΤǤ���
</P>
<P>
 �ǿ��Ǥ������� <STRONG>����</STRONG> �ǡ�
 ���Ǥ������� �ٻ� �Ǽ����ޤ���
 ��󥯤Τʤ��ڡ����Ϥޤ���������Ƥ��ޤ���
</P>
<P>
 ��Ⱦ�����
 _LINK(./progress.html,������ȥ���ǥå���)
 ��������������
</P>

m4_esyscmd(../bin/list.perl ../../manual _WWWROOT misc.list)

_CREDITS

 <P>
  _GREY_ICON
  _LINK(./index.html,JM ����ǥå��������)
 </P>

_BACK_TO_HOME

</body>
</html>

