m4_dnl # $Id: gnu.m4,v 1.5 2000/08/02 10:00:53 nakano Exp $
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
_HEADER(`JM ����ǥå��� (GNU)')

<P>
 _LINK(http://www.gnu.org/,GNU Project)
 �ˤ�ä����ۤ���Ƥ���ޥ˥奢��ڡ����Ǥ���
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
<BLOCKQUOTE>
 _LINK(#gnumaniak,gnumaniak)
 ��
 _LINK(http://macula.net/lightside/,Ragnar Hojland Espinosa)
 ��ˤ�ä�
 _LINK(http://macula.net/lightside/ftp.html,����)
 ����Ƥ���ޥ˥奢��ѥå������Ǥ���
 �Ƕ� GNU �Ǥ� info �ե�������Ϥ�����Ƥ��ꡢ
 �ޥ˥奢��ڡ����ϴ�ά������뷹���ˤ���ޤ�����
 gnumaniak �Ϥ�����䤦�٤���������ޤ�����
 JM Project �Ǥϡ����� GNU �Υޥ˥奢��˴ؤ��Ƥ�
 gnumaniak �Τ�Τ�ͥ�褷���������Ƥ������ˤˤʤäƤ��ޤ���
</BLOCKQUOTE>

m4_esyscmd(../bin/list.perl ../../manual _WWWROOT gnu.list)

_CREDITS

 <P>
  _GREY_ICON
  _LINK(./index.html,JM ����ǥå��������)
 </P>

_BACK_TO_HOME

</body>
</html>

