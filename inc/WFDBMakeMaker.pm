package inc::WFDBMakeMaker;
use Moose;
 
extends 'Dist::Zilla::Plugin::MakeMaker::Awesome';
 
override _build_WriteMakefile_args => sub { +{
    %{ super() },
    LIBS => [ '-lpcre' ],
    OBJECT => 'wfdb_perl_wrap.o'
} };
 
__PACKAGE__->meta->make_immutable;
