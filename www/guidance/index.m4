m4_dnl # index.m4: GNU m4 source for index.html.
m4_dnl # -------------------------------------------------------------------
m4_dnl #
m4_dnl # [その他に make 時点で依存を参照するファイル]
m4_dnl # jf_www.m4: 各種 M4 マクロ定義ファイル
m4_dnl #
m4_dnl # -------------------------------------------------------------------
m4_dnl
m4_define(_SUB_ONE)
m4_include(../jm_www.m4)
_EDIT_WARNING(index)
_HEADER(`JM 翻訳作業の手引き')

<P>
 このページ以下では、
 JM Project における man ページ翻訳作業に関する
 ガイドラインを記述します。
</P>

<UL>
 <LI>まず本ページでは、
  JM Project の活動の場である
  _LINK(#subscribe-ML,JM-ML への参加方法)
  と、大まかな
  _LINK(#flow,翻訳作業の流れ)
  について説明します。

 <LI>_LINK(repository.html,→JM 文書の管理方法)
  のページでは、
  man ページの管理に利用している CVS リポジトリの構成と、
  ページの情報を管理しているテキストデータベースの書式に関して
  記述しています。

 <LI>このリポジトリへの登録作業を自動化するため、
  JM-ML に送信するメールでは、
  一定のフォーマットに従った記述をお願いしています。
  このフォーマットと、そのためのツールを
  _LINK(mailformat.html,→作業メールのフォーマット)
  のページで紹介します。

 <LI>ML に流れたメールの校正を支援するツールとして、
  JM-man-view.el が開発されました。この利用法は
  _LINK(JM-man-view.html,→JM-man-view.el の使い方)
  のページで説明しています。

 <LI>実際に翻訳を行うときの文体や訳語・書式等に関する
  ガイドラインは
  _LINK(translation_note.html,→翻訳の指針)
  にまとめました。

 <LI>POD マニュアルに関する翻訳作業のガイドラインは
  _LINK(pod.html,→podマニュアル翻訳の手引き)
  をご覧下さい。
</UL>

<H2><A NAME="subscribe-ML">JM-ML への参加方法・退会方法</A></H2>
<P>
 JM Project における翻訳作業では
 _LINK(mailto:linuxjm-discuss@lists.sourceforge.jp,JM-ML)
 が活動の中心となっています。
 作業の予約、結果の登録、内容に関する議論などが
 ここでやりとりされることになります。
 したがって JM Project に参加したい方は、
 まず JM-ML に参加してください。
</P>

<P>
 JM-ML (= linuxjm-discuss ML) への加入は
 _LINK(http://lists.sourceforge.jp/mailman/listinfo/linuxjm-discuss,こちらのページ)
 から手続きを行って下さい。
</P>

<P>
 JM-ML の講読を中止したい場合も、
 _LINK(http://lists.sourceforge.jp/mailman/listinfo/linuxjm-discuss,こちらのページ)
 から手続きを行って下さい。

<H2><A NAME="flow">翻訳作業の流れ</A></H2>
<P>
 翻訳作業は以下のステップを踏んで行われます。
 作業の節目節目では ML に報告を行ってもらいます。
 そのメールのフォーマットと、
 定型メールを送信するためのツールについての解説は
 _LINK(mailformat.html,メールフォーマット)
 を参照してください。
</P>
<OL>
 <LI><A HREF="#step1">予約</A></LI>
 <LI><A HREF="#step2">ドラフト (草稿) 作成</A></LI>
 <LI><A HREF="#step3">校正</A></LI>
 <LI><A HREF="#step4">リリース</A></LI>
</OL>

<H3><A NAME="step1">翻訳の予約</A></H3>
<P>
 JM Project において作業対象となっているマニュアルは
 _LINK(../INDEX/progress.html,`JM インデックス(作業状況)')
 のページにまとめられています。
 ここから作業したいページを選び、
 _LINK(mailformat.html,メールフォーマット)
 の要領で宣言メールをポストして下さい。
</P>
 
<P>
 もしインデックスページにないマニュアルを翻訳したい場合は、
 その旨を ML で発言してください。
 そのマニュアルが含まれているパッケージの
 一次配布元がわかっている場合は、
 その情報も併せて連絡して下さい。
 CVS コミッターが作業してページに反映させますので、
 確認後改めて予約宣言をしてください。
</P>

<H3><A NAME="step2">ドラフト</A></H3>
<P>
 作業するページが決まったら、
 _LINK(translation_note.html,翻訳の指針)
 に従ってページを作成してください。
 翻訳作業中に疑問点などが生じた場合は、
 気軽に ML で尋ねましょう。
</P>
<P>
 作業が完成したら、結果を
 _LINK(mailformat.html,メールフォーマット)
 に従って ML にポストして下さい。
 校正者・査読者の便宜を考えて、
 原文を残すかたちでの投稿が推奨されます。
</P>

<H3><A NAME="step3">校正</A></H3>
<P>
 ドラフトが提出されると、ページは校正に入ります。
 校正作業は翻訳者と同じ人が行ってもかまいませんし、
 あるいは別の人を ML で募ってもかまいません。
 ただしそれぞれの場合で
 _LINK(mailformat.html,メールフォーマット)
 が変わりますので注意してください。
</P>
<P>
 もしドラフトを作成した人が、そのページを
 「校正募集」のステータスにおいた場合は、
 校正作業を希望する人は予約のメールを ML に
 ポストしてから作業をはじめてください。
</P>
<P>
 校正の際には、
 ドラフト原稿に対して ML から寄せられた意見を参考にしたり、
 語句の修正・訳語の統一などを行ってください。
</P>
<P>
 なお ML に流れたメールの整形閲覧用のツールとして、
 Emacs Lisp で書かれた
 _LINK(JM-man-view.html,JM-man-view.el)
 がありますので環境に応じて利用してください。
</P>

<H3><A NAME="step4">リリース</A></H3>
<P>
 作業が終わったら結果を ML にポストします。
 フォーマットは
 _LINK(mailformat.html,メールフォーマット)
 を参考にしてください。
</P>
<P>
 このときも原文は残したかたちでポストしましょう。
 オリジナルが更新されたときの追随作業の役にたちますから。
 配布に含まれるページでは原文を除去しますが、
 その作業はシステム側で自動的に行われます。
</P>

_CREDITS

_BACK_TO_HOME

</BODY>
</HTML>

