use v6;

use Millina::Object;
use Millina::Interaction;

unit role Millina::Simulation;

has Millina::Object @.objects;
has Millina::Interaction @.events;

method go {...}


multi method register(Millina::Object $object){
    @!objects.push($object);
}

method propagate_interaction(Millina::Interaction $interaction){
    @!objects.>>.receive_interaction($interaction);
}
