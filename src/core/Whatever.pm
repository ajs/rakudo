my class Whatever {
    multi method ACCEPTS(Whatever:D: $topic) { True }
    method new() { nqp::create(self) }

    multi method perl(Whatever:D:) { '*' }
}

my class HyperWhatever {
    multi method ACCEPTS(HyperWhatever:D: $topic) { True }
    method new() { nqp::create(self) }

    multi method perl(HyperWhatever:D:) { '**' }
}

# vim: ft=perl6 expandtab sw=4
