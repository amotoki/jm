#!/usr/bin/perl
#
# $Id: upd_tl.perl,v 1.10 2008/12/23 23:04:06 motoki Exp $
#
# update_list �򸫤� translation_list �򹹿����롣
#
# �� 1 ������ translation_list, �� 2 ������ update_list,
# �� 3 �����˥ѥå������ο������С���������ꤹ�롣
#
# ���ϥե�����Υե�����̾�� "��1����.��3����" �Ȥʤ롣
#
# update_list �ν񼰤ϰʲ����̤�
#
# ���ե�����ɤζ��ڤ�ʸ���� ":" �ޤ��� " "��
#
# ���� 1 �ե�����ɤ� U(����) A(�ɲ�)  L(���) �Τ����줫��
#   # �ǻϤޤ�Ԥϥ����ȹԤȤߤʤ���롣
#
# ���� 2, 3 �ե�����ɤ� basename �� ����������ֹ档
#
# ��U, A �ξ��, �� 4 �ե�����ɤϥ��ꥸ�ʥ�����ա�
#   (U �ξ��Ͼ�ά��ǽ�����ξ��ϸ��ߤ����դ��Ȥ��롣)
#
# ��L �ξ�硢�� 4, 5 �ե�����ɤϥ����ڡ����� basename ��
#   ����������ֹ档
#
# update_list ����:
#
#	#updated
#	U strtok:3 2000/02/13
#	U toupper:3
#	#NEWLY ADD
#	A pivot_root:2 2000/02/03
#	A daemon:3 1993/06/09
#	L dlclose:3 dlopen:3
#	L dlerror:3 dlopen:3
#	A dlopen:3 1995/05/16
#	L dlsym:3 dlopen:3
#
# �Х�������
#      �����������ѹ������ڡ����ˤ��б����Ƥޤ���
#      �ڡ����κ���ˤ��б����Ƥޤ���
#
# $Id: upd_tl.perl,v 1.10 2008/12/23 23:04:06 motoki Exp $
#
BEGIN{
    $epath = `dirname $0`; chomp $epath;
    my $lpath = "$epath/../bin";
    unshift (@INC, $lpath);
}
use JMtl('hash2line', 'line2hash');

my (%ti, %tl, $package, $newver);

if (@ARGV < 2) { die "$0 translation_list update_list new_version\n";}
$newver = $ARGV[2];

#
# import old tranalation_list
#
open TL, $ARGV[0] || die "cannot open $ARGV[0]\n";
while(<TL>){
    chomp;
    %ti = line2hash($_);
    my $pname = "$ti{sec}:$ti{fname}";
    %{$tl{$pname}} = %ti;
}
close TL;
$package = $ti{pkg};

#
# parse update_list
#
open UL, $ARGV[1] || die "cannot open $ARGV[1]\n";
while (<UL>){
    chomp;
    if (/^\#/) {next};

    my @ull = split(/[ :]/);

    if (@ull < 3) {die "entry must contain at lease 3 fields\n"};
    my $pname = "$ull[2]:$ull[1]";

    if ($ull[0] eq "U") {
	if (@ull > 3) { $Udate{$pname} = $ull[3] }
        else{ $Udate{$pname} = "no-change"; }
	next;
    }

    if ($ull[0] eq "A") {
	if (@ull < 4){die "date entry is ommitted for A entry\n"}
	$Adate{$pname} = $ull[3];
	next;
    }

    if ($ull[0] eq "L") {
	if (@ull < 5){die "lname and/or lsec entry is ommitted for L entry\n"}
	$Lfile{$pname} = "$ull[4]:$ull[3]";
	next;
    }

    if ($ull[0] eq "R") {
	$Rfile{$pname} = "yes";
	next;
    }
}

#
# update and remove roff pages
#
foreach my $n (sort keys %tl){
    if ($Udate{$n} ne undef){
	# link �ڡ����� roff ���ѹ����줿����
	# �����ɲåڡ�����Ʊ�ͤ˰�����
	if (${$tl{$n}}{kind} ne "roff") {
	    delete $tl{$n};
	    $Adate{$n} = $Udate{$n};
	    next;
	}

	${$tl{$n}}{over} = $newver;

        if (${$tl{$n}}{stat} !~ /(dft|prf)/){
	    ${$tl{$n}}{dver} = ${$tl{$n}}{rver};
	}

        if ($Udate{$n} ne "no-change"){${$tl{$n}}{odat} = $Udate{$n}};

        if (${$tl{$n}}{stat} eq "up2date"){${$tl{$n}}{stat} = "upd_non";}
        elsif (${$tl{$n}}{stat} eq "up2datR"){${$tl{$n}}{stat} = "upd_rsv";}
	elsif (${$tl{$n}}{stat} eq "cnt_upd"){${$tl{$n}}{stat} = "cnt_old";}
        next;
    }	

    if ($Rfile{$n} ne undef){
	open NOL, ">> obsoleted_list.$newver";
	${$tl{$n}}{comment} = "dissap. at $newver";
	my $ol = hash2line(%{$tl{$n}});
	print NOL "$ol\n";
	close NOL;
	delete $tl{$n};
        next;
    }

    if (${$tl{$n}}{rver} eq ${$tl{$n}}{over} ||
        ${$tl{$n}}{rver} eq undef) {${$tl{$n}}{rver} = $newver;}

    if (${$tl{$n}}{dver} eq ${$tl{$n}}{over} ||
        ${$tl{$n}}{dver} eq undef) {${$tl{$n}}{dver} = $newver;}

    ${$tl{$n}}{over} = $newver;
}

#
# add roffs from update_list
#
foreach my $n (keys %Adate) {
    (my $psec, my $pname) = split(/:/, $n);
    ${$tl{$n}}{stat} = "1st_non";
    ${$tl{$n}}{kind} = "roff";
    ${$tl{$n}}{pkg}  = $package;
    ${$tl{$n}}{over} = $newver;
    ${$tl{$n}}{odat} = $Adate{$n};
    ${$tl{$n}}{fname} = $pname;
    ${$tl{$n}}{sec} = $psec;
}

#
# add links from update_list
#
foreach my $n (keys %Lfile) {
    my $lpage = $Lfile{$n};
    (my $psec, my $pname) = split(/:/, $n);
    (my $lsec, my $lname) = split(/:/, $lpage);

    ${$tl{$n}}{kind} = "link";
    if(${$tl{$lpage}}{odat} eq undef) {die "no link file $lname for $n\n";}

    ${$tl{$n}}{pkg}  = $package;
    ${$tl{$n}}{fname} = $pname;
    ${$tl{$n}}{sec} = $psec;
    ${$tl{$n}}{lname} = $lname;
    ${$tl{$n}}{lsec} = $lsec;
}

#
# refresh links
#
foreach my $n (keys %tl){
    if (${$tl{$n}}{kind} ne "link") {next;}

    if (${$tl{$n}}{lname} eq undef){
	open NOL, ">> obsoleted_list.$newver";
	${$tl{$n}}{comment} = "dissap. at $newver";
	my $ol = hash2line(%{$tl{$n}});
	print NOL "$ol\n";
	close NOL;
	delete $tl{$n};
        next;
    }

    my $lpage = "${$tl{$n}}{lsec}:${$tl{$n}}{lname}";

    if(${$tl{$lpage}}{stat} =~ /^up/){
	${$tl{$n}}{stat} = "up2date";
    } else {
	${$tl{$n}}{stat} = "1st_non";
    }
    ${$tl{$n}}{odat} = ${$tl{$lpage}}{odat};
    ${$tl{$n}}{over} = ${$tl{$lpage}}{over};
    ${$tl{$n}}{dver} = ${$tl{$lpage}}{dver};
    ${$tl{$n}}{rver} = ${$tl{$lpage}}{rver};

}

open NTL, "> $ARGV[0].$newver";
foreach $n (sort keys %tl){
    if (${$tl{$n}}{stat} eq undef){next;}

    my $ol = hash2line(%{$tl{$n}});
    print NTL "$ol\n";
}
close NTL;

