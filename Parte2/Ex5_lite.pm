use Bio::Factory::EMBOSS;

$factory = new Bio::Factory::EMBOSS; 

$patmatmotifs = $factory->program('patmatmotifs');
$patmatmotifs->run({ -sequence => $ARGV[0],
                     -outfile => $ARGV[1],
                     -full });