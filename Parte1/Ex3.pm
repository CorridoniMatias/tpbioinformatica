use Bio::Tools::Run::Alignment::Clustalw;
use Bio::Seq;
use Bio::SeqIO;

$factory = Bio::Tools::Run::Alignment::Clustalw->new(-matrix => 'BLOSUM');
$ktuple = 1;
$factory->ktuple($ktuple);

$input_handler = Bio::SeqIO->new(-file => $ARGV[0], -format => 'fasta');
@seq_array = ();

while (my $inseq = $input_handler->next_seq) {
    push(@seq_array, $inseq)
}

# @seq_array is an array of Bio::Seq objects
$seq_array_ref = \@seq_array;

$aln = $factory->align($seq_array_ref);
print $aln;
