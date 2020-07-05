use Bio::SearchIO; 
use Bio::SeqIO;
use Bio::DB::GenPept;
use Bio::Root::Exception;
use Error qw(:try);

$report_obj = new Bio::SearchIO(-format => 'blast',
                                -file   => $ARGV[1]);
$gp = Bio::DB::GenPept->new();

$output_handler = Bio::SeqIO->new(-file => ">$ARGV[2]", -format => 'fasta');

while( $result = $report_obj->next_result ) {
    while( $hit = $result->next_hit ) {
        if (index($hit->description, $ARGV[0]) != -1) {
            print "Hubo un hit en la accession ", $hit->name, "\n";
            print "\t(", $hit->description, ")\n";
            try {
                $seq = $gp->get_Seq_by_version($hit->accession);
                $output_handler->write_seq($seq);
            } catch Bio::Root::Exception with {
                print "Accession ", $hit->accession, " no encontrada en GenPept\n";
            };

        }
    }
} 