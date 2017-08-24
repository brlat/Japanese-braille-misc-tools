# eib形式の漢点字データを6点式の漢点字のNABCCファイルに変換します。
# 使い方:
# perl eib2brl.pl ファイル名
# .eibの拡張子は無しで、その前のファイル名だけを指定します。
# 指定したファイル名の拡張子に.brlをつけたファイル名で出力します。

$filename = $ARGV[0];
die "No input filename given.\n" unless $filename;
$in = $filename . ".eib";

$out = $filename . ".brl";

open(IN, "< $in");
open(OUT, "> $out");

$header_byte = 442;

read(IN,$b,$header_byte);

$charcount = 0;

while (read(IN,$b,1)){ # 1
$nabcc = unpack("H2", $b);

$nabcc =~ s/23/4/;
$nabcc =~ s/03/;/;
$nabcc =~ s/32/6/;
$nabcc =~ s/21/5/;
$nabcc =~ s/33/7/;
$nabcc =~ s/02/"/;

$nabcc =~ s/00/ /;

$nabcc =~ s/30/2/;
$nabcc =~ s/9a/~9/;
$nabcc =~ s/1a/9a/;
$nabcc =~ s/28/1a/;

$nabcc =~ s/6a/ha/;
$nabcc =~ s/3a/6a/;
$nabcc =~ s/2a/3a/;
$nabcc =~ s/38/2a/;

$nabcc =~ s/6b/|a/;


$nabcc =~ s/88/~ /;
$nabcc =~ s/80/` /;
$nabcc =~ s/08/ a/;
$nabcc =~ s/40/a/;
$nabcc =~ s/c8/~a/;
$nabcc =~ s/c0/`a/;

$nabcc =~ s/60/b/;
$nabcc =~ s/e8/~b/;
$nabcc =~ s/e0/`b/;

$nabcc =~ s/44/c/;
$nabcc =~ s/cc/~c/;
$nabcc =~ s/c4/`c/;

$nabcc =~ s/46/d/;
$nabcc =~ s/ce/~d/;
$nabcc =~ s/c6/`d/;

$nabcc =~ s/42/e/;
$nabcc =~ s/ca/~e/;
$nabcc =~ s/4c/ca/;

$nabcc =~ s/c2/`e/;

$nabcc =~ s/64/f/;
$nabcc =~ s/ec/~f/;
$nabcc =~ s/e4/`f/;

$nabcc =~ s/66/g/;
$nabcc =~ s/ee/~g/;
$nabcc =~ s/e6/`g/;
$nabcc =~ s/6e/ga/;
$nabcc =~ s/62/h/;
$nabcc =~ s/e2/`h/;
$nabcc =~ s/24/i/;
$nabcc =~ s/ac/~i/;
$nabcc =~ s/a4/`i/;
$nabcc =~ s/2c/ia/;
$nabcc =~ s/26/j/;
$nabcc =~ s/ae/~j/;
$nabcc =~ s/a6/`j/;
$nabcc =~ s/2e/ja/;

$nabcc =~ s/50/k/;
$nabcc =~ s/d8/~k/;
$nabcc =~ s/d0/`k/;
$nabcc =~ s/58/ka/;
$nabcc =~ s/70/l/;
$nabcc =~ s/f8/~l/;
$nabcc =~ s/f0/`l/;
$nabcc =~ s/78/la/;
$nabcc =~ s/54/m/;
$nabcc =~ s/dc/~m/;
$nabcc =~ s/d4/`m/;
$nabcc =~ s/5c/ma/;
$nabcc =~ s/56/n/;
$nabcc =~ s/de/~n/;
$nabcc =~ s/d6/`n/;
$nabcc =~ s/5e/na/;
$nabcc =~ s/52/o/;
$nabcc =~ s/d2/`o/;
$nabcc =~ s/74/p/;
$nabcc =~ s/fc/~p/;
$nabcc =~ s/f4/`p/;
$nabcc =~ s/7c/pa/;
$nabcc =~ s/76/q/;
$nabcc =~ s/fe/~q/;
$nabcc =~ s/f6/`q/;
$nabcc =~ s/7e/qa/;
$nabcc =~ s/72/r/;
$nabcc =~ s/f2/`r/;
$nabcc =~ s/34/s/;
$nabcc =~ s/bc/~s/;
$nabcc =~ s/b4/`s/;
$nabcc =~ s/3c/sa/;
$nabcc =~ s/36/t/;
$nabcc =~ s/be/~t/;
$nabcc =~ s/b6/`t/;
$nabcc =~ s/3e/ta/;
$nabcc =~ s/51/u/;
$nabcc =~ s/d9/~u/;
$nabcc =~ s/d1/`u/;
$nabcc =~ s/59/ua/;
$nabcc =~ s/71/v/;
$nabcc =~ s/f9/~v/;
$nabcc =~ s/f1/`v/;
$nabcc =~ s/79/va/;
$nabcc =~ s/55/x/;
$nabcc =~ s/dd/~x/;
$nabcc =~ s/d5/`x/;
$nabcc =~ s/5d/xa/;
$nabcc =~ s/57/y/;
$nabcc =~ s/df/~y/;
$nabcc =~ s/d7/`y/;
$nabcc =~ s/5f/ya/;
$nabcc =~ s/53/z/;
$nabcc =~ s/db/~z/;
$nabcc =~ s/d3/`z/;
$nabcc =~ s/5b/za/;

$nabcc =~ s/75/\&/;
$nabcc =~ s/fd/~\&/;
$nabcc =~ s/f5/`\&/;
$nabcc =~ s/7d/\&a/;
$nabcc =~ s/77/=/;
$nabcc =~ s/ff/~=/;
$nabcc =~ s/f7/`=/;
$nabcc =~ s/7f/=a/;
$nabcc =~ s/73/\(/;
$nabcc =~ s/fb/~\(/;
$nabcc =~ s/f3/`\(/;
$nabcc =~ s/7b/\(a/;
$nabcc =~ s/35/!/;
$nabcc =~ s/bd/~!/;
$nabcc =~ s/b5/`!/;
$nabcc =~ s/3d/!a/;
$nabcc =~ s/37/\)/;
$nabcc =~ s/bf/~\)/;
$nabcc =~ s/b7/`\)/;
$nabcc =~ s/3f/\)a/;


$nabcc =~ s/27/w/;
$nabcc =~ s/af/~w/;
$nabcc =~ s/a7/`w/;
$nabcc =~ s/2f/wa/;
$nabcc =~ s/20/1/;
$nabcc =~ s/a8/~1/;
$nabcc =~ s/a0/`1/;


$nabcc =~ s/b8/~2/;
$nabcc =~ s/b0/`2/;

$nabcc =~ s/22/3/;
$nabcc =~ s/aa/~3/;
$nabcc =~ s/48/aa/;

$nabcc =~ s/a2/`3/;


$nabcc =~ s/ab/~4/;
$nabcc =~ s/a3/`4/;

$nabcc =~ s/a9/~5/;
$nabcc =~ s/a1/`5/;

$nabcc =~ s/b2/`6/;

$nabcc =~ s/bb/~7/;
$nabcc =~ s/b3/`7/;

$nabcc =~ s/31/8/;
$nabcc =~ s/b9/~8/;
$nabcc =~ s/b1/`8/;

$nabcc =~ s/12/9/;

$nabcc =~ s/92/`9/;

$nabcc =~ s/13/0/;
$nabcc =~ s/9b/~0/;
$nabcc =~ s/93/`0/;

$nabcc =~ s/14/\//;
$nabcc =~ s/9c/~\//;
$nabcc =~ s/94/`\//;
$nabcc =~ s/1c/\/a/;
$nabcc =~ s/15/+/;
$nabcc =~ s/9d/~+/;
$nabcc =~ s/95/`+/;
$nabcc =~ s/1d/+a/;
$nabcc =~ s/16/>/;
$nabcc =~ s/9e/~>/;
$nabcc =~ s/96/`>/;
$nabcc =~ s/1e/>a/;
$nabcc =~ s/17/#/;
$nabcc =~ s/9f/~#/;
$nabcc =~ s/97/`#/;
$nabcc =~ s/1f/#a/;
$nabcc =~ s/10/'/;
$nabcc =~ s/98/\n/; # new line
$nabcc =~ s/90/`'/;
$nabcc =~ s/18/'a/;
$nabcc =~ s/11/-/;
$nabcc =~ s/99/~-/;
$nabcc =~ s/91/`-/;
$nabcc =~ s/19/-a/;
$nabcc =~ s/04/`/;
$nabcc =~ s/8c/~`/;
$nabcc =~ s/84/``/;

$nabcc =~ s/0c/`a/;
$nabcc =~ s/82/`"/;
$nabcc =~ s/0a/"a/;
$nabcc =~ s/1b/0a/;

$nabcc =~ s/01/,/;
$nabcc =~ s/89/~,/;
$nabcc =~ s/81/`,/;
$nabcc =~ s/09/,a/;
$nabcc =~ s/06/~/;
$nabcc =~ s/8e/~~/;
$nabcc =~ s/86/`~/;
$nabcc =~ s/0e/~a/;
$nabcc =~ s/05/./;
$nabcc =~ s/8d/~./;
$nabcc =~ s/85/`./;
$nabcc =~ s/0d/.a/;


$nabcc =~ s/8b/~;/;
$nabcc =~ s/83/`;/;
$nabcc =~ s/0b/;a/;
$nabcc =~ s/07/_/;
$nabcc =~ s/8f/~_/;
$nabcc =~ s/87/`_/;
$nabcc =~ s/0f/_a/;


$nabcc =~ s/41/*/;
$nabcc =~ s/c9/~*/;
$nabcc =~ s/c1/`*/;
$nabcc =~ s/49/*a/;
$nabcc =~ s/61/</;
$nabcc =~ s/e9/~</;
$nabcc =~ s/e1/`</;
$nabcc =~ s/69/<a/;
$nabcc =~ s/45/%/;
$nabcc =~ s/cd/~%/;
$nabcc =~ s/c5/`%/;
$nabcc =~ s/4d/%a/;
$nabcc =~ s/47/?/;
$nabcc =~ s/cf/~?/;
$nabcc =~ s/c7/`?/;
$nabcc =~ s/4f/?a/;
$nabcc =~ s/43/:/;
$nabcc =~ s/cb/~:/;
$nabcc =~ s/c3/`:/;
$nabcc =~ s/4b/:a/;

$nabcc =~ s/65/\$/;
$nabcc =~ s/ed/~\$/;
$nabcc =~ s/e5/`\$/;
$nabcc =~ s/6d/\$a/;
$nabcc =~ s/67/}/;
$nabcc =~ s/ef/~}/;
$nabcc =~ s/e7/`}/;
$nabcc =~ s/6f/}a/;
$nabcc =~ s/63/|/;
$nabcc =~ s/eb/~|/;
$nabcc =~ s/e3/`|/;
$nabcc =~ s/25/{/;
$nabcc =~ s/ad/~{/;
$nabcc =~ s/a5/`{/;
$nabcc =~ s/2d/{a/;

$nabcc =~ s/ba/~6/;
$nabcc =~ s/68/ba/;


$nabcc =~ s/da/~o/;
$nabcc =~ s/4e/da/;

$nabcc =~ s/fa/~r/;
$nabcc =~ s/6c/fa/;

$nabcc =~ s/ea/~h/;
$nabcc =~ s/4a/ea/;
$nabcc =~ s/2b/4a/;
$nabcc =~ s/5a/oa/;
$nabcc =~ s/29/5a/;
$nabcc =~ s/7a/ra/;
$nabcc =~ s/3b/7a/;
$nabcc =~ s/8a/~"/;
$nabcc =~ s/39/8a/;

$nabcc_line = $nabcc_line . $nabcc;
$charcount++;

if($charcount == 41){
$nabcc_line =~ s/ +$//;
print (OUT "$nabcc_line");
$nabcc_line = "";
$charcount = 0;
}
} # 1

close(IN);
close(OUT);

exit;
