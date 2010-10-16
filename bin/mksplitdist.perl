#!/usr/bin/perl
#
# $Id: mksplitdist.perl,v 1.2 2000/08/02 10:00:22 nakano Exp $
#
# mksplitdist.perl:
#   $DISTROOT �򸫤� package ���ʬ�䤵�줿 tar ball ���������
#   ������ץȡ�
#   $DISTROOT �� MKDIST, MKSO ���줿��� directory �����ꤷ�Ƥ���
#
# ��ư��
#   mksplitdist.perl /var/tmp/JM/man-pages-ja-19991123
#

# get arg
#
if (@ARGV < 1) {die "$0 distroot\n"};

$DISTROOT = $ARGV[0];
unless (-d $DISTROOT) {die "$DISTROOT does not exist\n"};

unless($DISTROOT=~/^(.*)\/man-pages-ja-([0-9]+)$/){
        die "$DISTROOT don't have date field.\n";
}
$dir=$1;
$date=$2;

chdir($dir);

open(FL,"ls $DISTROOT/manual|");
while($tmp=<FL>){
	$tmp=~s/[\r\n]//g;
	$dist="man-pages-ja-$tmp-$date";
	system("rm -r $dist");
	system("mkdir $dist");
	system("cp -pr $DISTROOT/manual/$tmp/* $dist");
	system("cp -pr $DISTROOT/README $dist");
	system("tar czf $dist.tar.gz $dist");
}
close(FL);
