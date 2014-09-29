use v6;

use Millina::Object;
use Millina::Interaction;

role Simulation;

has Object @.objects;
has Interaction @.events;

method go {...}


multi method register(Object $object){
    @!objects.push($object);
}

method propagate_interaction(Interaction $interaction){
    @!objects.>>.receive_interaction($interaction);
}
