#!/usr/bin/env perl
use strict;
use warnings;

use Test::More;
use Test::Script;
use File::Find::Rule;

sub check {
    my $filename = shift;
    script_compiles($filename);
}    # check()

my $rule = File::Find::Rule->new;
$rule->file;
$rule->name( '*.pm', '*.pl' );

my @files = $rule->in('./');
for (@files) {
    check($_);
}

done_testing();
