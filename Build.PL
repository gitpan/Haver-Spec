#!/usr/bin/perl
require 5.008;
use Module::Build;
my $build = Module::Build->new(
	module_name        => 'Haver::Spec',
	dist_version       => '0.08',
	dist_author        => 'Dylan Hardison <dylan@haverdev.org>',
	license            => 'gpl',
	requires           => { },
	create_makefile_pl => 'passthrough',
	# XXX: This is a hack, feel free to remove it...
	($ENV{USER} eq 'dylan') ? (sign => 1) : (),
);
$build->create_build_script();
