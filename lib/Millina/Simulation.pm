use v6;

role Simulation;

has @.interactions;
has @.objects;

method go {...}
method step  {...}
method end {...}