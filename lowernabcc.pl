# lowernabcc.pl
# 大文字NABCC点字を小文字NABCCに置き換えるperlスクリプト。
# 使い方:
# perl lowernabcc.pl input.txt output.txt

$in = $ARGV[0];
die "入力ファイルを指定してください\n" unless $in;

$out = $ARGV[1];
die "出力ファイルを指定してください\n" unless $out;

open(IN, "< $in");
open(OUT, "> $out");


while($source = <IN>){
$source =~ tr/A-Z]\\[@^/a-z}|{`~/;
$dest .= $source;
}

print OUT ($dest);

close(IN);
close(OUT);

exit;
