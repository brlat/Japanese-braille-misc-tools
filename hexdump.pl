# hexdump.pl
# �o�C�i���f�[�^��16�i���ɕϊ�����B
# �X�N���[�����[�_�[�̓ǂݏグ�𕷂��Ċm�F���₷���悤�ɁA1�o�C�g�����s���ďo�͂���B
# �g����:
# perl hexdump.pl input.txt output.txt

$in = "$ARGV[0]";
die "���̓t�@�C�����w�肵�Ă�������\n" unless $in;

$out = "$ARGV[1]";
die "�o�͏o�̓t�@�C�����w�肵�Ă�������\n" unless $out;

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
