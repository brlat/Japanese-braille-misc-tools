use Convert::Braille;
use utf8;

$filename = $ARGV[0];
die "No input filename.\n" unless $filename;
$in = $filename . ".brl";

$out = $filename . ".utf8.txt";

open(IN, "< $in");
open(OUT, "> $out");

binmode(OUT, ":utf8");

while ($asciiBraille_line = <IN>){ # 1
$utf8brl_line = brailleAsciiToUnicode ($asciiBraille_line);

$utf8brl_line =~ tr/⠄⠠/⠠⠄/;

print (OUT "$utf8brl_line");
} # 1

close(IN);
close(OUT);

exit;
