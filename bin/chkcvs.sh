#!/bin/sh
#
# $Id: chkcvs.sh,v 1.2 2000/08/02 10:00:22 nakano Exp $
#
# CVS ��ݥ��ȥ��Ĵ�٤륹����ץ�.
# JM/cvs-release-modified �� release/, contrib/ �ʲ��Υڡ������Ѥ�ä����ɤ���
# JM/cvs-status-modified �� translation_list ���Ѥ�ä����ɤ���
#
RM=cvs-release-modified
SM=cvs-status-modified

if [ ! -f $RM ]; then
	touch $RM
elif (find manual -newer $RM | egrep "(release|contrib)/man[1-9]/.*\.[1-9]"); then
	touch $RM
	touch $SM
fi

if [ ! -f $SM ]; then
	touch $SM
elif (find manual -newer $SM | grep -q "."); then
	touch $SM
fi

