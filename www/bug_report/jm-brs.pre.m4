m4_dnl # jm-brs.pre.m4: GNU m4 source for jm-brs.html's first part.
m4_dnl # -------------------------------------------------------------------
m4_dnl #
m4_dnl # [$B$=$NB>$K(B make $B;~E@$G0MB8$r;2>H$9$k%U%!%$%k(B]
m4_dnl #
m4_dnl # -------------------------------------------------------------------
m4_dnl
m4_dnl # HTML 4.0/css $B$OJ,$+$i$s$N$G!"(Btagging $B$OE,Ev(B(^^;
m4_dnl # jm-brs.post.m4 $B$H4A;z%3!<%I$rB7$($k$3$H(B
m4_dnl

m4_define(_SUB_ONE)
m4_include(../jm_www.m4)
_HEADER(`JM bug reporting system')
_EDIT_WARNING(index)

<FORM method="POST" ACTION="jm-brs.cgi">
_Start_Table

<TR>
  <TH ALIGN="RIGHT" NOWRAP>$BL>A0(B: </TH>
  <TD><INPUT NAME="name" SIZE="20" ></TD>
  <TH ALIGN="RIGHT" NOWRAP>E-mail: </TH>
  <TD><INPUT NAME="mail" SIZE="20"></TD>
</TR>
<TR>
  <TH ALIGN="RIGHT" NOWRAP>$B%Q%C%1!<%8(B: </TH>
  <TD>
