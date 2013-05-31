# Perl code for calculating the filter checksum. From: http://adblockplus.org/en/faq_internal
use Digest::MD5 qw(md5_base64);

if ($#ARGV != 0) {
	print "Usage: calc-checksum [filename]\n";
	exit;
}

my $filename = $ARGV[0];

my $data;
open(my $fh, '<', $filename) or die "Could not open file $filename";
{
	local $/;
	$data = <$fh>;
}
close($fh);

# Normalize data
$data =~ s/\r//g;
$data =~ s/\n+/\n/g;

# Remove existing checksum
$data =~ s/^\s*!\s*checksum[\s\-:]+[\w\+\/=]+.*\n//mi;

# Calculate new checksum
my $checksum = md5_base64($data);

print $checksum . "\n"
