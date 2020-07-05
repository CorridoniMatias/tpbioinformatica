use Bio::Factory::EMBOSS;

$factory = new Bio::Factory::EMBOSS; 

$pros_extract = $factory->program('prosextract');
$pros_extract->run();

$patmatmotifs = $factory->program('patmatmotifs');
$patmatmotifs->run({ -sequence => $ARGV[0],
                     -outfile => $ARGV[1],
                     -full });