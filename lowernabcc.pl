# lowernabcc.pl
# �啶��NABCC�_����������NABCC�ɒu��������perl�X�N���v�g�B
# �g����:
# perl lowernabcc.pl input.txt output.txt

$in = $ARGV[0];
die "���̓t�@�C�����w�肵�Ă�������\n" unless $in;

$out = $ARGV[1];
die "�o�̓t�@�C�����w�肵�Ă�������\n" unless $out;

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
