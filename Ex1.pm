use Bio::Seq;
use Bio::SeqIO;
use Bio::Factory::EMBOSS;

$factory = new Bio::Factory::EMBOSS; 
$transeq = $factory->program('transeq'); 

$transeq->run({ -frame => 6,
                -sequence => $ARGV[0],
                -outseq  => $ARGV[1]});
