#!/bin/sh
# series of translation check tools, icludes: ckbracket.sh, ckstyle, katawod
echo Target filename: "$1"
echo -n "Check Date: "; date
echo "File info: "
ls -l "$1"
echo

docx2txt "$1" $$.txt
echo PASS1: カッコの対応表示
ckbrakets.sh $$.txt
echo
echo PASS2: スタイルのチェック CKSTYLE:
echo
ckstyle $$.txt

echo PASS3: カタカナの抽出:
kataword $$.txt

rm $$.txt
