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
_HEADER(`���ܸ� man �Ķ�������')

<p>
 ���Υڡ����Ǥϡ����ܸ��б���
<a href="#jgroff">groff</a>
��
<a href="#jless">less</a>
�򥳥�ѥ��뤷��
����ˤ��碌��
<a href="#jman">man</a>
�����ƥ�����ꡢ���󥹥ȡ��뤹����ˡ�ˤĤ��Ʋ��⤷�ޤ���
</p>

<blockquote>
 �����󤪻Ȥ��Υǥ����ȥ�ӥ塼���������ܸ� groff, less, man ��
 �ޤޤ�Ƥ�����ϡ��������Ȥ��褦�ˤ��ޤ��礦��
 ���������ξ��Ǥ�
 <a href="#ja-macro">groff �����ܸ�ޥ���</a>
 �ˤĤ��Ƥ��ܤ��̤��Ƥ������ɤ��Ǥ��礦��
</blockquote>

<H2><a name="jgroff">jgroff �Υ���ѥ���ȥ��󥹥ȡ���</a></H2>
<p>
 �ޤ����ܸ��б��� groff ����ޤ���
 groff �ΥС������ϸ��� 1.11a �ޤǹԤäƤ���褦�Ǥ�����
 ���ܸ첽�ѥå� (0.99) ���б����Ƥ���С������� 1.10 �Ǥ���
 �������ܸ첽�ѥå��ˤ�� PS�� dvi ���Ϥ����ܸ줬
 �Ȥ���褦�ˤʤ�ۤ���
 groff �ν��ϥ��ץ��������ܸ쥭��饯��ü�����б�����
 -Tnippon ���ɲä���ޤ���
</p>

<OL>
 <LI>���� (groff-1.10.tar.gz) �����ܸ첽�ѥå�
  (jgroff-0.99.diff.gz) �����ꤷ�ޤ���
  ���줾��
  _LINK(http://www.dsl.ics.tut.ac.jp/peppermints/archie.html,archie)
  ����Ф�������ФƤ���Ȼפ��ޤ�����
  ���Ȥ����̳�ƻ��ؤΥ����Фʤ�
  _LINK(ftp://ftp.hipecs.hokudai.ac.jp/pub/GNU/,����)��
  _LINK(ftp://ftp://ftp.hipecs.hokudai.ac.jp/pub/GNU/jp/,���)
  �Ȥ��·���ޤ���</LI>

 <LI>Ŭ���ʥǥ��쥯�ȥ�˾売�ĤΥ���������äƤ��ơ�
   groff ���Τ�Ÿ�������ܸ첽�ѥå������Ƥޤ���
  <pre>
        tar zxf groff-1.10.tar.gz
        cd groff-1.10
        zcat ../jgroff-0.99.diff.gz | patch -p1
  </pre>

 <LI>�������ǥ��쥯�ȥ�� GNU �ġ���Τ���ˡ�̤ꡢ
  <pre>
        ./configure --prefix=/usr --JTeX=ASCII
  </pre>
  ���ޤ���
  <UL> 
   <LI>--prefix �ϥ��󥹥ȡ���ǥ��쥯�ȥ�ι��ߤǤ�
    (�������ꤷ�ʤ��� /usr/local �ʲ���Ÿ������ޤ�)��
    ���λ������ font ��ޥ���� /usr/share/groff �ʲ���Ÿ������ޤ���
    ������ѹ��������ͤ�... INSTALL ���ɤ��ɤ�ǤߤƲ�����(^_^;</LI>
   <LI>--JTeX �� groff ���Ǥ� dvi �ե������
    NTT �����ʥǥե���ȡˤ��� ASCII �����ˤ��뤿��Υ��ץ����Ǥ���
    ���Τ������ groff-1.10 �ǥ��쥯�ȥ�ˤǤ��� README.jp
    ���ɤ��ɤ�ǲ�������</LI>
  </UL></LI>

 <LI>��������� Makefile �Ǥϡ� PostScript �ץ�󥿤Υڡ�����������
   PAGE �ȸ����ޥ���ǻ��ꤷ�Ƥ��ޤ���
   ����ϥǥե���ȤǤ� letter �ˤʤäƤ��ޤ�����
   A4 ��Ȥ��������� Makefile �Υ����Ȥ˽��� PAGE=A4 ���ѹ����ޤ���</LI>

 <LI>�Ǹ��
  <pre>
        make
        make install
  </pre>
  �Ǥ����ޤ��Ǥ���</LI>

 <LI>gxditview (X �ѥݥ��ȥץ��å�)
   ��ɬ�פ����ϡ������
  <pre>
        cd xditview
        xmkmf
        make all
        make install install.man
  </pre>
  ��¹Ԥ���Х��󥹥ȡ��뤵��ޤ���</LI>
</ol>

<H2><a name="ja-macro">���ܸ� man �ޥ�����ɲ�</a></H2>
<P>
 �Ȥ���ǡ��ʾ�Τ褦�ˤ��ƺ������� groff �Ǥϡ�
 mdoc ���������ܸ� man �ڡ����������������Ǥ��ʤ����Ȥ�����ޤ���
 ���������褷���ޥ��� mandocj ���ֹ⤵��ˤ�äƺ�������ޤ�����
</P>
<P>
 _SELFLINK(groff-tmac-ja.tar.gz)
 �Ǥ���
</P>
<P>
 ���ꤷ���� /usr/share/groff �ǥ��쥯�ȥ��
</p>
<pre>
        zcat groff-tmac-ja.tar.gz | tar xf -
</pre>
<p>
 �Τ褦��Ÿ������� OK �Ǥ���
</p>

<H2><a name="jless">���ܸ��б� less �Υ���ѥ���ȥ��󥹥ȡ���</a></H2>
<P>
 man �ڡ����򸫤�ڡ�����Ǥ�������äѤ� less �����֤Ǥ��礦��
 �Х��ʥ�ѥå�������Ƽ�ǥ����ȥ�ӥ塼����󤫤�ФƤ���Ǥ��礦����
 �ʲ��Τ褦�˥���ѥ�����ñ�Ǥ���
</P>

<OL>
 <LI><P>
   �����������ꤷ�ޤ��礦���ե�����̾��
  </p>
  <ul>
   <li>less-332.tar.gz</LI>
   <li>less-332-iso242.patch.gz</LI>
  </ul>
  <p>
   �Ǥ�����Ϥ�
   _LINK(http://www.dsl.ics.tut.ac.jp/peppermints/archie.html,archie)
   ����Ф�������ФƤ���Ȼפ��ޤ�����
   ac.jp �ʿͤʤ餳�����
   _LINK(ftp://ftp.hipecs.hokudai.ac.jp/pub/GNU/jp/less/,����Υ�����)
   �ʤɤ�������Ǥ���
  </p></LI>

 <LI><P>
   Ÿ�������ѥå����Ƥ��ޤ������ξ�Ԥ��֤����ǥ��쥯�ȥ꤫��
  </P>
  <pre>
        zcat less-332.tar.gz | tar xf -
        cd less-332
        zcat ../less-332-iso242.patch.gz | patch -p1
  </pre>
  <p>
   �ǽ����ꡣ
   <tt>INSTALL</tt>��
   <tt>README.iso</tt>��
   <tt>README.iso.jp</tt>
   �ʤɤ��ɤ��ɤߤޤ���
  </p></LI>

 <li><p>
   GNU �ʥ��եȤΤ���ˡ�˽���������ѥ��롢���󥹥ȡ��뤷�ޤ���
   <tt>configure</tt> �� <tt>--prefix</tt> �ϡ�
   ���󥹥ȡ���ǥ��쥯�ȥ�ι��ߤǤ���
  </p>
  <pre>
        ./configure --prefix=/usr
        make
        su
        # make install
  </pre></LI>

 <LI><p>
   ���ܸ��������뤿��δĶ��ѿ��ϡ����Ф� JLESSCHARSET �Ǥ���
   (t)csh �ʿͤʤ� ~/.(t)cshrc ��
  </p>
  <pre>
        setenv JLESSCHARSET japanese
  </pre>
  <p>
   ���Ƥ����ޤ��礦�� bash �ʤ� ~/.profile ��
  </p>
  <pre>
        export JLESSCHARSET=japanese
  </pre>
  <p>
   �Ǥ��͡�
  </p></LI>

</ol>

<H2><a name="jman">���ܸ� man ������</a></H2>

<p>
 �ʾ�� roff �������Υ���ѥ���ȡ����α�����Ǥ���Ķ��������ޤ�����
 �⤷���ܸ�Υޥ˥奢��ڡ����򤹤Ǥˤ������Ǥ�����
</p>
<pre>
        groff -mandoc -Tnippon hoge.1 | less
</pre>
<p>
 �ʤɤȤ��Ƥߤޤ��礦��
 <a href="#ja-macro">������ܸ� groff �ޥ���򥤥󥹥ȡ��뤷��</a>�ͤ�
</p>
<pre>
        groff -mandoc<b>j</b> -Tnippon hoge.1 | less
</pre>
<p>
 ���ƤߤƲ�������
 ̵�������ܸ줬ɽ�����줿�� man ���ޥ�ɤΥ��󥹥ȡ���˰ܤ�ޤ��礦��
</p>

<ol>
 <li><p>
   man-1.5g.tar.gz �Ȥ���̾���Υ��������֤����ꥸ�ʥ륽�����Ǥ���
   _LINK(http://www.dsl.ics.tut.ac.jp/peppermints/archie.html,archie)
   ���ƶᤤ�Ȥ��������ꤵ��뤳�Ȥ����ᤷ�ޤ�����
   ���Ȥ���
   _LINK(ftp://sunsite.sut.ac.jp/pub/archives/linux/sunsite-unc/apps/doctools/man/,������� sunsite)
   �ʤɤˤ��֤��Ƥ���ޤ���
  </p>
  <p>
   JRPM �ץ������Ȥˤ�äƺ������줿
   _LINK(man-1.5g-ja2.diff.gz,���ܸ�ѥå�)
   ������ޤ��Τǡ���������ꤷ�Ƥ����ޤ���
  </p></LI>

 <li><p>
   �ե������Ÿ�������ѥå����Ƥ��ޤ���
  </p>
  <pre>
        zcat man-1.5g.tar.gz | tar xf -
        cd man-1.5g
        zcat ../man-1.5g-ja2.diff.gz | patch -p1
  </pre></LI>

 <li><p>
   �����
  </p>
  <pre>
        ./configure +lang en,ja +fsstnd -ask
  </pre>
  <p>
   �ˤ�äƹԤ��ޤ������Ǥ� FHS �ʥե����륷���ƥ�����ϡ�
   +fsstnd �Ͼ�ά���Ƥ���������
   �����ۤȤ�ɤ� distribution �Ϥޤ� FSSTND �˽�򤷤Ƥ���Ǥ��礦���顢
   ���������ʤ��Ȼפ��ޤ���
   ������ץȤ�ʹ���Ƥ��������Ф��ơ�
   �ǥե���Ȱʳ���������Ȥ���ϰʲ����̤ꡣ
  </p>

  <dl>
   <dt>troff command to use</DT>
   <dd>/usr/bin/groff -Tps -mandocj</DD>

   <dt>Do you want to install non-english man pages?</DT>
   <dd>yes</DD>

   <dt>Install english pages?</DT>
   <dd>yes</DD>

   <dt>Install japanese pages?</DT>
   <dd>yes</DD>

   <dt>Do you want to install man setuid or setgid to some user
    who owns all the formatted man pages?</DT>
    <dd>yes</DD>
  </dl>
  <p>
   ¾�ˤ�ե�������֤����ʤɤ�Ŭ������ʬ�ι��ߤ˱������ѹ����Ʋ�������
  </p></LI>

 <li><p>
   make; make install �ǽ���夬�ꡣ
  </p></LI>

 <li><p>
   /var/catman �ʲ����������ޤ� (FSSTND ή��)��
  </p>
  <ul>
   <li>/var/catman</LI>
   <li>/var/catman/ja_JP.ujis</LI>
   <li>/var/catman/local</LI>
   <li>/var/catman/local/ja_JP.ujis</LI>
   <li>/var/catman/X11</LI>
   <li>/var/catman/X11/ja_JP.ujis</LI>
  </ul>
  <p>
   ���Υǥ��쥯�ȥ겼�� cat1 �� cat9, catn �Υǥ��쥯�ȥ���ꡢ
   cat? �ǥ��쥯�ȥ�Υ����ʡ��� man�����롼�פ� man��
   �ѡ��ߥå����� drwxr-xr-x �� ���ޤ���
   �����륹����ץȤΰ����ʲ��˼����ޤ���
  </p>
  <pre>
#!/bin/sh
mkdir -p /var/catman/ja_JP.ujis
mkdir -p /var/catman/local/ja_JP.ujis
mkdir -p /var/catman/X11/ja_JP.ujis

for n in 1 2 3 4 5 6 7 8 9 n o
do
        mkdir /var/catman/cat$n
        mkdir /var/catman/ja_JP.ujis/cat$n
        mkdir /var/catman/local/cat$n
        mkdir /var/catman/local/ja_JP.ujis/cat$n
        mkdir /var/catman/X11/cat$n
        mkdir /var/catman/X11/ja_JP.ujis/cat$n
done
chown -R man.man /var/catman/*
chmod -R 755 /var/catman/*
  </pre></LI>

 <li><p>
   �Ķ��ѿ���������ޤ��� tcsh �ʤ� /etc/csh.login �ʤɤ�
  </p>
  <pre>
        setenv LANG ja_JP.ujis
  </pre>
  <p>
   �Ȥ��Ƥ����ޤ�����bash �ʿͤ�Ŭ������� ;-) ��
  </p></LI>
</ol>

<p>
 �ʾ�ǡ� /usr/man/ja_JP.ujis ��Ÿ�����줿���ܸ�ޥ˥奢���
</p>
<pre>
        man hoge
</pre>
<p>
 �Ǹ�����Ϥ��Ǥ���
 �٤�����ʬ�� man.conf �� MANPATH �ʤɤ�Ĵ�����Ʋ�������
 "man man"���Ǥ��� :-)��
</p>

<p>
 �ޥ˥奢�뤬 nroff �����������ۤ���Ƥ���ȡ�
</p>

<pre>
        man -t hoge | lpr -Pps
</pre>

<p>
 �� Postscript �Ǥΰ�����Ǥ���Τǡ�
 ���ä����ɤߤ������ʤɤˤϤ�����򤪤�����Ǥ� :-)
</p>

_CREDITS

 <P>
  <IMG SRC="../images/grey.png" WIDTH="14" ALT="* " HEIGHT="14">
  _LINK(index.html,man �ڡ����������ե� �����)
 </P>

_BACK_TO_HOME

</BODY>
</HTML>
