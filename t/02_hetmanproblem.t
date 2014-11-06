use v6;
use Test;

plan 1;


use Millina::Simulation;
use Millina::Object;


enum State <Free Attacked Hetman>;

class Player does Millina::Object{

}

class Tile does Millina::Object{
    has $.state;
}

class HetmanSimulation does Millina::Simulation {

    method go {
        my $startx = 'a'..'h'.pick;
        my $starty = 1..8.pick;
    }
}

my $simulation = HetmanSimulation.new;
$simulation.register(Player.new);

for (1..8) -> $y { 
    for ('a'..'h') -> $x {
         $simulation.register(Tile.new(x => $x, y => $y, state=> Free));
    }
}
ok($simulation);
