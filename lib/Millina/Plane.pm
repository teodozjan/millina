use Millina::Area;
use Millina::Vector;

class Plane does Area;

has Real @.x is rw;
has Real @.y is rw;

method move(Vector $vec) {
@!x = @!x.map: {$_ + $vec.x};
@!y = @!y.map: {$_ + $vec.y};
}


#TODO rethink what means two times bigger
method scale(Real $r) {
@!x = @!x.map: {$_ * $r.x};
@!y =@!y.map: {$_ * $r.y};
}


