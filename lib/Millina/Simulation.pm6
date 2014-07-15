use v6;

role Simulation;

has Set $.interactions;
has Set $.objects;

method go {...}
method step  {...}
method end {...}

multi method register(Object $object){
    $!objects.push($object);
}

multi method register(Interaction $int){
    $!interactions.push($int)
}