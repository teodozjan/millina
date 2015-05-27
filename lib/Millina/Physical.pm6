use v6;

use Millina::Area;
use Millina::Rect;

unit role Millina::Physical;

has Millina::Area $.location;


submethod BUILD {
    $!location = Millina::Rect.new( 
	x1 => -1000, x2 => +1000,
	y1 => -1000, y2 => +1000,
	z1 => -1000, z2 => +1000);
}


