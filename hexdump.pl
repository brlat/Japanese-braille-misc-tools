# hexdump.pl
# バイナリデータを16進数に変換する。
# スクリーンリーダーの読み上げを聞いて確認しやすいように、1バイトずつ改行して出力する。
# 使い方:
# perl hexdump.pl input.txt output.txt

$in = "$ARGV[0]";
die "入力ファイルを指定してください\n" unless $in;

$out = "$ARGV[1]";
die "出力出力ファイルを指定してください\n" unless $out;

open(IN, "<$in");

binmode(IN);

open(OUT, ">$out");

while (read(IN,$b,1)) {
$bytedata = unpack("H2", $b);
print OUT ("$bytedata\n");
}

close(IN);
close(OUT);
exit;
