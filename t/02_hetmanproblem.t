use v6;
use Test;

use Millina::Simulation;
use Millina::Object;

plan 1;

enum State <Free Attacked Hetman>;

class Player is Object{

}

class Tile {
    has $.state;
}

class HetmanSimulation does Simulation {

    method start {
        my $startx = a..h.pick;
        my $starty = 1..8.pick;
    }
}

my $simulation = HetmanSimulation.new;
$simulation.register(Player.new);

for 1..8 -> $y { 
    for a..h -> $x {
         $simulation.register($tile.new(x => $x, y => $y, state=> Free));
    }
}
ok(False);
