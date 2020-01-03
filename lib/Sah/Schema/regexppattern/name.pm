package Sah::Schema::regexppattern::name;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = ['str', {
    summary => "Name of pattern, with module prefix but without the 'Regexp::Pattern'",
    match => qr/\A\w+((::|/|\.)\w+)+\z/,
    'x.completion' => ['regexppattern_name'],
}, {}];

1;
# ABSTRACT:
