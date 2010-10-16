#!/usr/bin/perl
#
# build distribution tree.
#
# first version Thu Aug 19 00:53:30 JST 1999
#     by Tenkou N. Hattori <tnh@aurora.dti.ne.jp>
#
# $Id: mkdist.perl,v 1.2 2000/08/02 10:00:22 nakano Exp $
#
BEGIN{
    $epath = `dirname $0`; chomp $epath;
    unshift (@INC, $epath);
}
use JMtl ('line2hash', 'hash2line');
use strict 'vars';

my ($idx_header, $idx_footer);
#
# $CVSROOT �� CVS ��ݥ��ȥ�� root,
# $DISTROOT �����ۥ��������֥��᡼���� root.
#
if (@ARGV < 3) {die "$0 srcroot dstroot pod2man\n"};

my $CVSROOT = $ARGV[0];
unless (-d $CVSROOT) {die "$CVSROOT does not exist\n"};

my $DISTROOT = $ARGV[1];

my $POD2MAN = $ARGV[2];
unless (-x $POD2MAN) {die "$POD2MAN is not executable\n"};

# for debugging purpose:
#
#my $MANROOT = "/home/nakano/text/JM/imp/manual";
#my $DISTROOT = "/var/tmp/JM/man-pages-ja";

#
# ���ä��� $DISTROOT/manual ���ݽ���
#
if (-d "$DISTROOT/manual") {
    system("rm -rf $DISTROOT/manual");
}
system("mkdir -p $DISTROOT/manual");

my (%roff_hash, %link_hash);
#
# $CVSROOT/manual/$pkg/translation_list �� scan.
#
print "scanning translation_list's...\n";
open RL,"find $CVSROOT/manual -name translation_list|";
while(<RL>){
    print;
    chomp;
    my $tl = $_;

    unless(/.*manual\/([^\/]*)\/translation_list/){next;}
    my $pkg=$1;

    system "mkdir -p $DISTROOT/manual/$pkg/";
    system "cp $tl $DISTROOT/manual/$pkg";

    open TL, $tl || die "cannot open $tl";
    while (<TL>){
	chomp;
	my %ti = line2hash($_);
	my $name = $ti{fname};
	my $sec = $ti{sec};
	my $page = "$pkg,$name,$sec";

	if ($ti{kind} eq "link" && $ti{stat} eq "up2date"){
	    my $dst = ".so man$ti{lsec}/$ti{lname}.$ti{lsec}";
	    $link_hash{"$page"} = $dst;
	    print "collect link: $page => $dst\n";
	    next;
	}

	if ($ti{kind} eq roff && $ti{stat} =~ /^up/) {
	    my $src = "$pkg/release/man$sec/$name.$sec";
	    $roff_hash{"$page"} = $src;
	    print "collect roff: $page <= $src\n";
	    next;
	}

	if ($ti{kind} eq roff && $ti{stat} =~ /^cnt/) {
	    my $src = "$pkg/contrib/man$sec/$name.$sec";
	    $roff_hash{"$page"} = $src;
	    print "collect roff: $page <= $src\n";
	    next;
	}
    }
    close TL;
}
close RL;

#
# copy ����
#
foreach my $fkey (sort keys %roff_hash){
    my ($pkg,$name,$sec)=split /,/, $fkey;

    my $dstdir = "$DISTROOT/manual/$pkg/man$sec";
    my $dstfile = "$dstdir/$name.$sec";
    my $srcfile = "$CVSROOT/manual/$roff_hash{$fkey}";

    print "copy $srcfile => $dstfile\n";
    system "mkdir -p $dstdir";
    system "cp $srcfile $dstfile";
}

#
# make symlinks
#
foreach my $fkey (sort keys %link_hash){
    my ($pkg, $name, $sec) = split /,/, $fkey;

    my $dstdir = "$DISTROOT/manual/$pkg/man$sec";
    my $dstfile = "$dstdir/$name.$sec";

    print "cat \"$link_hash{$fkey}\" > $dstfile\n";
    system "mkdir -p $dstdir";
    open DF, "> $dstfile" || die "cannot open $dstfile\n";
    print DF "$link_hash{$fkey}\n";
    close DF;
}

#
# pod �ǡ�������
#
print "TRANSLATING pod -> man\n";
my (%pod_hash);
#
# $CVSROOT/pod/$pkg/translation_list �� scan.
#
print "scanning translation_list's...\n";
open RL,"find $CVSROOT/pod -name translation_list|";
while(<RL>){
    print;
    chomp;
    my $tl = $_;

    unless(/.*pod\/([^\/]*)\/translation_list/){next;}
    my $pkg=$1;

    system "mkdir -p $DISTROOT/manual/$pkg/";
    system "cp $tl $DISTROOT/manual/$pkg";

    open TL, $tl || die "cannot open $tl";
    while (<TL>){
	chomp;
	my %ti = line2hash($_);
	my $name = $ti{fname};
	my $page = "$pkg,$name";

	if ($ti{kind} eq roff && $ti{stat} =~ /^up/) {
	    my $src = "$pkg/release/$name.pod";
	    $pod_hash{"$page"} = $src;
	    print "collect pod : $page <= $src\n";
	    next;
	}
    }
    close TL;
}
close RL;

#
# �Ѵ�����
#
foreach my $fkey (sort keys %pod_hash){
    my ($pkg,$name)=split /,/, $fkey;

    my $dstdir = "$DISTROOT/manual/$pkg/man1";
    my $dstfile = "$dstdir/$name.1";
    my $srcfile = "$CVSROOT/pod/$pod_hash{$fkey}";

    print "translate $srcfile => $dstfile\n";
    system "mkdir -p $dstdir";
    system "$POD2MAN $srcfile > $dstfile";
}

