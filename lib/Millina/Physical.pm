use Millina::Area;
use Millina::Plane;

role Physical;

has Area $.location;


submethod BUILD {
    $!location = Plane.new( 
	x1 => -1000, x2 => +1000,
	y1 => -1000, y2 => +1000,
	z1 => -1000, z2 => +1000);
}


