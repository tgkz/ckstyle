# ckstyle
ckstyle checks Japanese document with own style pattern
日本語のテキストを独自のスタイルチェックルールに従ってチェックし、その結果を表示します。

## ルール例：

及び、且つ、而も、又は、或いは、即ち　はひらがなを推奨

の通り　はひらがなを推奨

種類などを示す　通りはひらがなを推奨

本、部、冊などの数を示す場合は全角数字でなく半角数字を推奨

ルールは今後随時追加していきます。

## Sample results

摘出した問題は以下の形式で表示されます：
```
行番号 : ソース行
＊＊問題のパターン：問題のメッセージ
　（同一行に複数の問題がある場合には連続して報告されます）
```
以下は実例です。

```
003: 接続詞のテスト：　A 及び
** 及び : 接続詞 および はひらがなにしましょう
005: 接続詞のテスト：　A 且つ B
** 且つ : 接続詞 かつ はひらがなにしましょう
007: 接続詞のテスト：　而も　こんな漢字を使うのですか？
** 而も : 接続詞 しかも はひらがになしましょう
009: 接続詞のテスト：　A 又は　B
** 又は : 接続詞 または はひらがなにしましょう
011: 接続詞のテスト：　A 或いは B
** 或いは : 接続詞 あるいは はひらがなにしましょう
013: 接続詞のテスト：　即ち
** 即ち : 接続詞 すなわち はひらがなにしましょう
016: ひらがな綴りのテスト：　この文章は見ての通りであり、再考が必要だ
** の通り : 参照などを示す とおり は漢字ではなくひらがなにしましょう
018: ひらがな綴りのテスト：　動作を要求して下さい、というのは再考が必要だ
** して下さい : 動作を要求する ください はひらがなにしましょう
021: ひらがな綴りのテスト：　xx する事は　
** る事は : 用語でない場合には ひらがなの こと を使いましょう
022: ひらがな綴りのテスト：　xx な事が　
** な事が : 用語でない場合には ひらがなの こと を使いましょう
023: ひらがな綴りのテスト：　xx の事で　
** の事で : 用語でない場合には ひらがなの こと を使いましょう
025: ひらがな綴りのテスト：　xx する為に
** る為に : 用語でない場合には ひらがなの ため を使いましょう
026: ひらがな綴りのテスト：　xx な為では
** な為で : 用語でない場合には ひらがなの ため を使いましょう
027: ひらがな綴りのテスト：　xx の為と
** の為と : 用語でない場合には ひらがなの ため を使いましょう
030: 漢数字のテスト： ３本のバット
** ３本 : 日本語の数字を表す場合は半角数字を使いましょう
031: 漢数字のテスト： ０本の矢
** ０本 : 日本語の数字を表す場合は半角数字を使いましょう
032: 漢数字のテスト： ５本の矢
** ５本 : 日本語の数字を表す場合は半角数字を使いましょう
034: 漢数字のテスト： ０部門
** ０部 : 日本語の数字を表す場合は半角数字を使いましょう
035: 漢数字のテスト： ５部門
** ５部 : 日本語の数字を表す場合は半角数字を使いましょう
036: 漢数字のテスト： ９部門
** ９部 : 日本語の数字を表す場合は半角数字を使いましょう
038: 漢数字のテスト： １２０冊の本
** ０冊 : 日本語の数字を表す場合は半角数字を使いましょう
```

