use Bio::Seq;
use Bio::SeqIO;
use Bio::Factory::EMBOSS;


#$input_handler = Bio::SeqIO->new(-file => $ARGV[0], -format => 'genbank');
#$nucleotids = $input_handler->next_seq;
#$aminoacids = $nucleotids->translate();

$factory = new Bio::Factory::EMBOSS; 
$transeq = $factory->program('transeq'); 

$transeq->run({ -frame => 6,
                -sequence => $ARGV[0],
                -outseq  => $ARGV[1]});

#$seqio = Bio::SeqIO->new( -file => $compseqoutfile );

#$output_handler = Bio::SeqIO->new(-file => ">$ARGV[1]", -format => 'fasta');
#$output_handler->write_seq($aminoacids);
