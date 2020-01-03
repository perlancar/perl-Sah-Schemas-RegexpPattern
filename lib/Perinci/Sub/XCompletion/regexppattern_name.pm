package Perinci::Sub::XCompletion::regexppattern_name;

# AUTHORITY
# DATE
# DIST
# VERSION

use 5.010001;
use strict;
use warnings;
use Log::ger;

our %SPEC;

$SPEC{gen_completion} = {
    v => 1.1,
};
sub gen_completion {
    require Complete::Regexp::Pattern;

    my %fargs = @_;

    sub {
        my %cargs = @_;
        my $word    = $cargs{word} // '';

        Complete::Regexp::Pattern::complete_regexp_pattern_pattern(
            word => $word,
        );
    },
}

1;
# ABSTRACT: Generate completion for Regexp::Pattern pattern name

=head1 ARGUMENTS
