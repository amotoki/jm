m4_dnl # $Id: index.m4,v 1.5 2003/12/02 16:16:53 takei Exp $
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
_HEADER(`JM ����ǥå���')

<P>
 ���Υڡ����ʲ��Ǥϡ�
 JM �����ۤ��Ƥ���ޥ˥奢��ڡ����ؤκ������󶡤��ޤ���
</P>

<H2>Linux ����</H2>
<DL>
 <DT><A HREF="ldp.html">LDP man-pages</A>
  m4_esyscmd(`../bin/pagesize.perl ldp.html')
 </DT>
 <DD>
  _LINK(http://www.tldp.org/,Linux Documentation Project)
  �����ۤ��Ƥ��� man �ڡ������Ǥ���
  �����ƥॳ���롢�饤�֥��ؿ����ü�ե�����ʤɡ�
  ����Υѥå������˰�¸���ʤ��ڡ�������������Ƥ��ޤ���
 </DD> 

 <DT><A HREF="linux.html">Linux packages</A>
  m4_esyscmd(`../bin/pagesize.perl linux.html')
 </DT>
 <DD>
  Linux ���ѤΥ��եȥ������ѥå�������°���� man �ڡ����Ǥ���
  �ǥ������������ޥ�ɡ� NIS, NFS �ʤɡ�
  ��Ȥ��ƥ����ƥ��Ϣ�Υڡ�������ʤ�ޤ���
 </DD> 
</DL>

<H2>Unix ����</H2>
<DL>
 <DT><A HREF="gnu.html">GNU packages</A>
  m4_esyscmd(`../bin/pagesize.perl gnu.html')
 </DT>
 <DD>
  _LINK(http://www.gnu.org/,GNU)
  �����ۤ��Ƥ��륽�եȥ������ѥå�������°���� man �ڡ����Ǥ���
 </DD> 

 <DT><A HREF="misc.html">Miscellaneous packages</A>
  m4_esyscmd(`../bin/pagesize.perl misc.html')
 </DT>
 <DD>
  Unix ���ѤΥ��եȥ������Τ����� GNU �ʳ��Τ�Τ򽸤�ޤ�����
  ncftp, fetchmail �ʤɤ��ޤޤ�ޤ���
 </DD> 
</DL>

<H2>POD �ڡ���</H2>
<DL>
 <DT><A HREF="pod.html">POD pages</A>
  m4_esyscmd(`../bin/pagesize.perl pod.html')
 </DT>
 <DD>
  Perl ��Ϣ�ѥå��������ɤ��Ѥ����롢
  POD (plain old documentation) �����ǽ񤫤줿�ڡ����Ǥ���
  html �Ǥα������ǽ�Ǥ���
 </DD>
</DL>

 
<H2>�����</H2>
<DL>
 <DT><A HREF="progress.html">Working Status</A>
  m4_esyscmd(`../bin/pagesize.perl progress.html')
 </DT>
 <DD>
  �����ޤǤˤϤޤ���Ȥ�ɬ�פʥڡ����Ǥ���
  ��Ȥ��� JM Project ���������Ѥ��뤿��Τ�ΤǤ�
 </DD>
</DL>

_CREDITS

_BACK_TO_HOME

</body>
</html>

