use v6;
use Test;

plan 1;


use Millina::Simulation;
use Millina::Object;


enum State <Free Attacked Hetman>;
my @rows = 1..8;
my @cols = 'a'..'h';

class Player does Millina::Object{

}

class Tile does Millina::Object{
    has $.state;
    has $.x;
    has $.y;
}

class HetmanSimulation does Millina::Simulation {

    method go {
        my $startx = @cols.pick;
        my $starty = @rows.pick;

    
    }
}

my $simulation = HetmanSimulation.new;
$simulation.register(Player.new);

say "Prepare board";
for @rows -> $y { 
    for @cols -> $x {
         $simulation.register(Tile.new(x => $x, y => $y, state=> Free));
    }
}


$simulation.go;
 
say $simulation.objects.perl;





ok($simulation);
