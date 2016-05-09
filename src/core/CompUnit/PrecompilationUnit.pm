subset CompUnit::PrecompilationId of Str:D
    where { 2 < .chars < 64 && $_ ~~ /^<[A..Za..z0..9._-]>+$/ };

role CompUnit::PrecompilationDependency {
    method id(--> CompUnit::PrecompilationId) { ... }
    method src(--> Str) { ... }
    method spec(--> CompUnit::DependencySpecification) { ... }
    method Str() {
        "$.id $.src $.spec"
    }
    method serialize(--> Str) { ... }
    method deserialize(Str, --> CompUnit::PrecompilationDependency) { ... }
}

role CompUnit::PrecompilationUnit {
    method id(--> CompUnit::PrecompilationId) { ... }
    method path(--> IO::Path) { ... }
    method modified(--> Instant) { ... }
    method dependencies(--> Array[CompUnit::PrecompilationDependency]) { ... }
    method bytecode(--> Buf) { ... }
}

# vim: ft=perl6 expandtab sw=4