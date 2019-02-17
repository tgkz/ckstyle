#!/bin/sh
echo CHECK1: 全角カッコの対応
grep -n （.*） $1
echo 
echo CHECK2: 半角カッコの対応
grep -n \(.*\) $1
echo
echo CHECK3: 半角カッコの前の空白が無い行を調べる
echo CHECK3-1: 半角カッコの前は空白か行頭であるべき
grep -n \(.*\) $1 | grep -v ' ('
echo
echo CHECK3: 半角カッコの後ろの空白が無い行を調べる
echo CHECK3-2: 半角カッコ閉じの次は空白が基本、しかし、コンマ、ピリオド、コロン、セミコロンは空白を空けずにカッコ閉じの直後にあるべき

grep -n \(.*\) $1 | grep -v ') '
