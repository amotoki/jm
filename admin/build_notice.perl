#!/usr/bin/perl -w
#
# JM-ML �����Τ��Τ餻���ꤲ�륹����ץȡ�
# cron build �򤹤� 3 ������ 0:30 �˼¹Ԥ��뤳�ȡ�
#
$SENDMAIL = '/usr/lib/sendmail JM@linux.or.jp';

$builddate = `date --date="3 days" +'%Y/%m/%d'`;
$deadline  = `date --date="2 days" +'%Y/%m/%d'`;
chomp $builddate;
chomp $deadline;

open MS, "| nkf -j | $SENDMAIL" || die "cannot invoke sendmail\n";

print MS <<EOM;
From: JM bulid master <nakano\@master.linux.or.jp>
To: JM\@linux.or.jp
Subject: [ANN] monthly release $builddate

(���Υ᡼�����ư����Ƥ���ޤ�)

��JM ���ۥ��������ֹ����Τ��Τ餻�Ǥ���

	$builddate 00:05:00

�˥��������֤ι����ӥ�ɤ򳫻Ϥ��ޤ���

��$deadline ���դޤǤ� JM-ML ����Ƥ��줿�ڡ����䡢
CVS ��ݥ��ȥ�˥����å����󤵤줿�ڡ����Ϲ�����
ȿ�Ǥ���ޤ���

�������Ǥ���ڡ����μ�������������ϡ������
���ꤤ���ޤ���

-- 
JM build master
nakano\@master.linux.or.jp
EOM
close (MS);

