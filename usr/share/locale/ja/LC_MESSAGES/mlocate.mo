��    3      �  G   L      h  4   i  F   �  #   �     	     "     7  1   L  �   ~     0     >     U     o  *   �  �  �  �  B  +   +     W  #   s  0   �      �      �  )   
  '   4     \     t  %   �     �     �  &   �  .   �     ,     A     \  )   q  !   �  $   �     �     �  '        =  "   Q  .   t     �  $   �  "   �       "     !   @     b     y  �  �  #   7  G   [     �     �  -   �  &   �  M     �   h     @  #   X  8   |  /   �  6   �  m    �  �  ;   �$  *   �$  9   �$  Q   !%  6   s%  '   �%  B   �%  B   &  *   X&  -   �&  9   �&      �&     '  /   $'  ?   T'     �'     �'      �'  ;   �'  ,   +(  $   X(     }(     �(  '   �(      �(  0   )  T   4)  0   �)  3   �)  9   �)     (*  F   =*  -   �*  $   �*  )   �*     	   1   "       *       #                             0                    +                 )   (   '       2             
   &                       3   .      !                         ,           -                 /   %                         $    	%'ju byte in file names
 	%'ju bytes in file names
 	%'ju byte used to store database
 	%'ju bytes used to store database
 	%'ju directory
 	%'ju directories
 	%'ju file
 	%'ju files
 
Report bugs to %s.
 --%s specified twice --%s would override earlier command-line argument Copyright (C) 2007 Red Hat, Inc. All rights reserved.
This software is distributed under the GPL v.2.

This program is provided with NO WARRANTY, to the extent permitted by law. Database %s:
 I/O error reading `%s' I/O error seeking in `%s' I/O error while writing to `%s' I/O error while writing to standard output Usage: locate [OPTION]... [PATTERN]...
Search for entries in a mlocate database.

  -b, --basename         match only the base name of path names
  -c, --count            only print number of found entries
  -d, --database DBPATH  use DBPATH instead of default database (which is
                         %s)
  -e, --existing         only print entries for currently existing files
  -L, --follow           follow trailing symbolic links when checking file
                         existence (default)
  -h, --help             print this help
  -i, --ignore-case      ignore case distinctions when matching patterns
  -l, --limit, -n LIMIT  limit output (or counting) to LIMIT entries
  -m, --mmap             ignored, for backward compatibility
  -P, --nofollow, -H     don't follow trailing symbolic links when checking file
                         existence
  -0, --null             separate entries with NUL on output
  -S, --statistics       don't search for entries, print statistics about each
                         used database
  -q, --quiet            report no error messages about reading databases
  -r, --regexp REGEXP    search for basic regexp REGEXP instead of patterns
      --regex            patterns are extended regexps
  -s, --stdio            ignored, for backward compatibility
  -V, --version          print version information
  -w, --wholename        match whole path name (default)
 Usage: updatedb [OPTION]...
Update a mlocate database.

  -f, --add-prunefs FS           omit also FS
  -n, --add-prunenames NAMES     omit also NAMES
  -e, --add-prunepaths PATHS     omit also PATHS
  -U, --database-root PATH       the subtree to store in database (default "/")
  -h, --help                     print this help
  -o, --output FILE              database to update (default
                                 `%s')
      --prune-bind-mounts FLAG   omit bind mounts (default "no")
      --prunefs FS               filesystems to omit from database
      --prunenames NAMES         directory names to omit from database
      --prunepaths PATHS         paths to omit from database
  -l, --require-visibility FLAG  check visibility before reporting files
                                 (default "yes")
  -v, --verbose                  print paths of files as they are found
  -V, --version                  print version information

The configuration defaults to values read from
`%s'.
 `%s' does not seem to be a mlocate database `%s' has unknown version %u `%s' has unknown visibility flag %u `%s' is locked (probably by an earlier updatedb) `=' expected after variable name can not change directory to `%s' can not change group of file `%s' to `%s' can not change permissions of file `%s' can not drop privileges can not find group `%s' can not get current working directory can not lock `%s' can not open `%s' can not open a temporary file for `%s' can not read two databases from standard input can not stat () `%s' configuration is too large error replacing `%s' file name length %zu in `%s' is too large file name length %zu is too large invalid empty directory name in `%s' invalid regexp `%s': %s invalid value `%s' of --%s invalid value `%s' of PRUNE_BIND_MOUNTS missing closing `"' no pattern to search for specified non-option arguments are not allowed with --%s unexpected EOF reading `%s' unexpected data after variable value unexpected operand on command line unknown variable `%s' value in quotes expected after `=' variable `%s' was already defined variable name expected warning: Line number overflow Project-Id-Version: 1.0
Report-Msgid-Bugs-To: https://fedorahosted.org/mlocate/
POT-Creation-Date: 2010-09-14 15:56+0200
PO-Revision-Date: 2009-09-21 23:26+0900
Last-Translator: Hyu_gabaru Ryu_ichi <hyu_gabaru@yahoo.co.jp>
Language-Team: Japanese <fedora-trans-ja@redhat.com>
Language: ja
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=1; plural=0;
 	ファイル名に %'ju バイト
 	データベースに保存するのに %'ju バイト使いました
 	%'ju 辞書
 	%'ju ファイル
 
バグを %s へ報告してください。
 --%s が 2 回指定されています --%s は以前のコマンドラインパラメーターを上書きします Copyright (C) 2007 Red Hat, Inc. All rights reserved.
このソフトウェアは GPL v.2 に基づいて提供されています。

このプログラムは法律が許す範囲で無保証で提供されます。 データベース %s:
 `%s' 読込みで入出力エラー `%s' 中をシークしている時に入出力エラー `%s' に書いている時に入出力エラー 標準出力へ書いている時に入出力エラー 利用方法: locate [オプション]... [パターン]...
mlocate データベースで項目を探します。

  -b, --basename         バス名のベース名のみに一致
  -c, --count            見つかった項目数のみ印刷
  -d, --database DBPATH  省略値のデータベース(%s) 
                         の代わりに DBPATH を使う
  -e, --existing         現在存在するファイル用の項目数のみ印刷
  -L, --follow           ファイルの存在のチェック(省略値)時に後続する
                         シンボリックリンクに従う
  -h, --help             このヘルプを印刷
  -i, --ignore-case      パターンの照合時に大小文字を区別しない
  -l, --limit, -n LIMIT  出力 (又は 計数) を LIMIT 項目に限定
  -m, --mmap             無視される、後方互換のため
  -P, --nofollow, -H     ファイルの存在チェック時に後続するシンボリックリンク
                         に従わない
  -0, --null             出力で項目を NUL で区切る
  -S, --statistics       項目を探さず、個々の使用したデータベースの統計情報
                         を印刷
  -q, --quiet            データベース読込みに関するエラーメッセージを報告しない
  -r, --regexp REGEXP    パターンの代わりに基本正規表現 REGEXP で探す
      --regex            パターンは拡張正規表現
  -s, --stdio            無視される、後方互換のため
  -V, --version          バージョン情報を印刷
  -w, --wholename        全パス名に一致 (省略値)
 利用方法: updatedb [オプション]...
mlocate データベースを更新します。

  -f, --add-prunefs FS           同じ FS を除外する
  -n, --add-prunenames NAMES     同じ NAMES を除外する
  -e, --add-prunepaths PATHS     同じ PATHS を除外する
  -U, --database-root PATH       データベース中の保存するサブツリー (省略値 "/")
  -h, --help                     このヘルプを印刷する
  -o, --output FILE              更新するデータベース (省略値
                                 `%s')
      --prune-bind-mounts FLAG   bind マウントを除外する (省略値 "no")
      --prunefs FS               データベースから除外するファイルシステム
      --prunenames NAMES         データベースから除外する辞書名
      --prunepaths PATHS         データベースから除外するパス
  -l, --require-visibility FLAG  ファイルを報告する前に可視性をチェックする
                                 (省略値 "yes")
  -v, --verbose                  見つかったファイルのバスを印刷する
  -V, --version                  バージョン情報を印刷する

設定はファイル`%s'
から読み込んだ値を省略値とします。
 `%s' は mlocate データベースではないようです `%s' は不明なバージョン %u です `%s' には不明な可視性フラグ %u があります `%s' はロックされています (おそらく以前の updatedb によって) 変数名の後には  `=' が期待されています 辞書を `%s' に変更できません ファイルのグループ `%s' を `%s' へ変更できません ファイル `%s' のパーミッションを変更できません 特権を落とすことはできません グループ `%s' を見つけられません 現在の作業ディレクトリーを得られません `%s' をロックできません `%s' を開けません `%s' 用の一時ファイルを開けません 標準入力から 2 つのデータベースを読めません stat () `'%s' できません 設定が大きすぎます `%s' の置き換えでエラー `%2$s' 中のファイル名長 %1$zu は大きすぎます ファイル名長 %zu は大きすぎます `'%s' 中の不当な空の辞書名 不当な正規表現 `%s': %s --%2$s の不当な値 `%1$s' PRUNE_BIND_MOUNTS の不当な値 `'%s' 閉じる `"' がありません 探すパターンが指定されていません オプションでないパラメーターは --%s と一緒は認められません `%s' を読んでいる時に予期しない EOF 変数値の後の期待されていないデータ コマンドライン上に期待しないオペランド 不明な変数 `%s' `=' の後には引用符で囲まれた値が期待されています 変数 `%s' は既に定義されています 変数名が期待されています 警告: 行番号があふれています 