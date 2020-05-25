use Bio::Seq;
use Bio::SeqIO;
use Bio::Factory::EMBOSS;

$input_handler = Bio::SeqIO->new(-file => "$ARGV[0]", -format => 'genbank');
$gen_mrna_nucleotids = $input_handler->next_seq;
$gen_mrna_aminoacids = $gen_mrna_nucleotids->translate;

# print $gen_mrna_aminoacids->seq;
# print "\n";

$output_handler = Bio::SeqIO->new(-file => ">$ARGV[1]", -format => 'fasta');
$output_handler->write_seq($gen_mrna_nucleotids);
