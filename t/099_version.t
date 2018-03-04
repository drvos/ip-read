use strict;
use warnings;

use Test::More;

eval {
    use Test::Version 1.004000 qw( version_all_ok ),
      {
        is_strict   => 1,
        has_version => 1,
        consistent  => 1,
      };
};
plan skip_all => "Test::Version 1.004000 required for testing version numbers"
  if $@;
version_all_ok();
done_testing;
