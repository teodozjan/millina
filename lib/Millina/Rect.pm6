use v6;

use Millina::Area;
use Millina::Vector;

class Millina::Rect does Millina::Area;

has Real @.x is rw;
has Real @.y is rw;

method move(Millina::Vector $vec) {
    @!x = @!x.map: {$_ + $vec.x};
    @!y = @!y.map: {$_ + $vec.y};
}


#= Scale Rect by moving uper corner
method scale(Real $r) {
    @!x[1] = @!x[1] * $r;
    @!y[1] = @!y[1] * $r;
}

multi method overlap(Millina::Rect $area --> Bool) {
   
    for $area.x -> $x {
	for $area.y ->  $y {
	    return True if ($x <= @!x[1] && $x >= @!x[0] &&  $y <= @!y[1] && $y >= @!y[0]);
        }

    }

False;
}

