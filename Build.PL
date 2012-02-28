use 5.006;
use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
	module_name          => 'Log::Log4perl::Layout::PatternLayout::Redact',
	license              => 'artistic',
	dist_author          =>
	[
		'Guillaume Aubert <aubertg@cpan.org>',
		'Kate Kirby <kate@cpan.org>',
	],
	dist_version_from    => 'lib/Log/Log4perl/Layout/PatternLayout/Redact.pm',
	build_requires       =>
	{
		'Carp'                => 0,
		'Carp::Parse::Redact' => 0,
		'Data::Dumper'        => 0,
		'File::Spec'          => 0,
		'File::Temp'          => 0,
		'Log::Log4perl'       => 0,
		'Perl6::Slurp'        => 0,
		'Test::Exception'     => 0,
		'Test::More'          => 0,
		'Try::Tiny'           => 0,
	},
	requires             =>
	{
		'perl'                => 5.006,
	},
	add_to_cleanup       =>
	[
		'Log-Log4perl-Layout-PatternLayout-Redact-*',
	],
	create_makefile_pl   => 'traditional',
	recursive_test_files => 1,
);

$builder->create_build_script();
