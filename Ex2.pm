use Bio::Tools::Run::StandAloneBlastPlus;

$fac = Bio::Tools::Run::StandAloneBlastPlus->new(
  -db_name => 'swissprot'
);

$fac->blastp( -query => $ARGV[0], -outfile => $ARGV[1]);
