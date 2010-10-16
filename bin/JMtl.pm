#!/usr/bin/perl
#
# $Id: JMtl.pm,v 1.2 2000/08/02 10:00:22 nakano Exp $
#
package JMtl;

#
# JMtl.pm: JM translation_list �ǡ����١����� perl module.
# translation_list �Υ���ȥ�� hash ������Ѵ��򤹤�
# subroutines.
#
# hash �Υ���ȥ�ϰʲ����̤�.
#  mark: translation_list ��Ƭ������ʸ���Υޡ���.
#  kind: .so ��󥯤Υե�����ʤ� "link", ����ʳ��ʤ� "roff"
#  stat: ʸ��Υ��ơ�����. �ʲ��Τ����줫.
#    1st_non, 1st_rsv, 1st_dft, 1st_prf
#    upd_non, upd_rsv, upd_dft, upd_prf
#    up2date, up2datR
#    cnt_upd, cnt_old
#  pkg:  �ѥå�����̾.
#  over: ���ꥸ�ʥ�ΥС������.
#  dver: ������ڡ����ΥС������.
#  rver: ��꡼���������ڡ����ΥС������.
#  odat: ���ꥸ�ʥ�ʸ��ι�������.
#  fname: �ڡ����ե�����ե������ basename ��ʬ
#  sec:   �ڡ����ե�����Υ�������� 
#  newsec:  ���ꥸ�ʥ�ڡ����Υ�������� (����������Ѥ�ä����)
#  comment: ������.
#
# (�ʲ��� kind �� roff �Υڡ����Τ�)
#  tdat: ������Ȥκǽ�������
#  copy: �ڡ����Υ��ԡ��饤�Ȥμ��� (G, B, M)
#  tmail: ��ȼԤΥ᡼�륢�ɥ쥹
#  tname: ��ȼԤ� Real Name
#
# (�ʲ��� kind �� link �Υڡ����Τ�)
#  lname: �����ڡ����� basename
#  lsec:  �����ڡ����Υ��������
#
require Exporter;
@ISA = qw(Exporter);
@EXPORT_OK = qw(line2hash hash2line);

#
# entry �� hash.
#
sub line2hash($) {
    my ($entry) = @_;
    my %thash;
    
    chomp $entry;
    my @member = split /:/, $entry;
    
    my $mark = $member[0];
    
    my ($stat);
    my $kind = 'roff';

  SW1: {
      if ($mark eq '��') {$stat = '1st_non'; last SW1;}
      if ($mark eq '��') {$stat = '1st_rsv'; last SW1;}
      if ($mark eq '��') {$stat = '1st_dft'; last SW1;}
      if ($mark eq '��') {$stat = '1st_prf'; last SW1;}
      if ($mark eq '��') {$stat = 'upd_non'; last SW1;}
      if ($mark eq '��') {$stat = 'upd_rsv'; last SW1;}
      if ($mark eq '��') {$stat = 'upd_dft'; last SW1;}
      if ($mark eq '��') {$stat = 'upd_prf'; last SW1;}
      if ($mark eq '��') {$stat = 'up2date'; last SW1;}
      if ($mark eq '��') {$stat = 'up2datR'; last SW1;}
      if ($mark eq '��') {$stat = 'cnt_upd'; last SW1;}
      if ($mark eq '��') {$stat = 'cnt_old'; last SW1;}
      
      $kind = 'link';
      if ($mark eq '��') {$stat = 'up2date'; last SW1;}
      if ($mark eq '��') {$stat = '1st_non'; last SW1;}
  }

    $thash{'mark'} = $mark;
    $thash{'kind'} = $kind;
    $thash{'stat'} = $stat;

    $thash{'pkg'}  = $member[1];

    my @vers = split /=>/, $member[2];
  SW2: {

      # original version �Ͼ�˰��ֺǸ�.
      #
      $thash{'over'} = $vers[$#vers];

      if ($stat eq /1st_(non|rsv)/) {last SW2;}

      # �ǽ�������Ǥϡ���Ƭ�� draft version.
      #
      if ($stat =~ /1st_/) {
	  $thash{'dver'} = $vers[0];
	  last SW2;
      }

      # ����ʳ�, release version �Ͼ����Ƭ.
      #
      $thash{'rver'} = $vers[0];

      if ($stat =~ /up2dat/) { last SW2; }
      if ($stat eq /upd_(non|rsv)/) { last SW2; }

      # update ����桢draft version ��
      # release version �ΰ����
      #
      $thash{'dver'} = $vers[1];
  }

    $thash{'odat'} = $member[3];
    $thash{'fname'} = $member[4];

    my @secs = split /=>/, $member[5];
    $thash{'sec'} = $secs[0];
    if ($#secs > 0) {$thash{'newsec'} = $secs[1];}
    
    if ($thash{'kind'} eq 'roff'){
	$thash{'tdat'} = $member[6];
	
	$thash{'copy'} = $member[7];
	
	$thash{'tmail'} = $member[8];
	$thash{'tname'} = $member[9];
    	$thash{'comment'} = $member[10];
	for (my $i = 11; $i <= $#member; $i++){
	    $thash{'comment'} .= ":$member[$i]";
	}
    } else {
	$thash{'lname'} = $member[6];
	$thash{'lsec'}  = $member[7];
    	$thash{'comment'} = $member[8];
	for (my $i = 9; $i < $#member; $i++){
	    $thash{'comment'} .= $member[$i];
	}
    }

    %thash;
}

#
# hash �� line. hash �ϥ�ե���󥹤��Ϥ�����.
#
sub hash2line (\%){
    my ($arg) = @_;
    my %thash = %{$arg};

    my ($entry);
    my $stat = $thash{'stat'};
    
    if ($thash{'kind'} eq 'link') {
	if ($stat eq 'up2date') {$entry = '��'}
	elsif ($stat eq '1st_non') {$entry = '��'}
        else {die "$stat is not permitted for link"}

	$entry .= ":$thash{'pkg'}:$thash{'over'}:$thash{'odat'}";

	$entry .= ":$thash{'fname'}:$thash{'sec'}";
	if (defined $thash{'newsec'}) {
	    $entry .= "=>$thash{'newsec'}";
	}

	$entry .= ":$thash{'lname'}:$thash{'lsec'}";
	$entry .= ":$thash{'comment'}";

	return $entry;
    }
    #
    # roff page case
    #
  SW3: {
      if ($stat eq '1st_non') {$entry = '��';last SW3;}
      if ($stat eq '1st_rsv') {$entry = '��';last SW3;}
      if ($stat eq '1st_dft') {$entry = '��';last SW3;}
      if ($stat eq '1st_prf') {$entry = '��';last SW3;}
      if ($stat eq 'upd_non') {$entry = '��';last SW3;}
      if ($stat eq 'upd_rsv') {$entry = '��';last SW3;}
      if ($stat eq 'upd_dft') {$entry = '��';last SW3;}
      if ($stat eq 'upd_prf') {$entry = '��';last SW3;}
      if ($stat eq 'up2date') {$entry = '��';last SW3;}
      if ($stat eq 'up2datR') {$entry = '��';last SW3;}
      if ($stat eq 'cnt_upd') {$entry = '��';last SW3;}
      if ($stat eq 'cnt_old') {$entry = '��';last SW3;}
  }
    $entry .= ":$thash{'pkg'}";

    my ($ver, $lastver);
    if (defined $thash{'rver'}){
	$lastver = $thash{'rver'};
	$ver = $lastver;
    }
    if (defined $thash{'dver'} && $thash{'dver'} ne $lastver){
	if (defined $ver) {$ver .= "=>";}
	$lastver = $thash{'dver'};
	$ver .= "$lastver";
    }
    if (defined $thash{'over'} && $thash{'over'} ne $lastver){
	if (defined $ver) {$ver .= "=>";}
	$ver .= "$thash{'over'}";
    }
    $entry .= ":$ver";     

    $entry .= ":$thash{'odat'}:$thash{'fname'}:$thash{'sec'}";
    if (defined $thash{'newsec'}) {
	$entry .= "=>$thash{'newsec'}";
    }

    $entry .= ":$thash{'tdat'}:$thash{'copy'}";
    $entry .= ":$thash{'tmail'}:$thash{'tname'}";

    $entry .= ":$thash{'comment'}";

    return $entry;
}

