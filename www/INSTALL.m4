m4_dnl # index.m4: GNU m4 source for index.html.
m4_dnl # -------------------------------------------------------------------
m4_dnl #
m4_dnl # [その他に make 時点で依存を参照するファイル]
m4_dnl # jm_www.m4: 各種 M4 マクロ定義ファイル
m4_dnl #
m4_dnl # -------------------------------------------------------------------
m4_dnl
m4_include(jm_www.m4)
_EDIT_WARNING(index)
_HEADER(`アーカイブの INSTALL ファイル')

<PRE>
m4_esyscmd(`grep -v "\$Id" ../dist/INSTALL')
</PRE>

_CREDITS

_BACK_TO_HOME

</BODY>
</HTML>

