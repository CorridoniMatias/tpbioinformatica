use Bio::Tools::Run::StandAloneBlastPlus;

$fac = Bio::Tools::Run::StandAloneBlastPlus->new(
  -db_name => 'swissprot',
  -remote => 1
);

$fac->blastp( -query => $ARGV[0], -outfile => $ARGV[1]);
