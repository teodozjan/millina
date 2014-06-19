use v6;
use Test;

plan 2;

use Millina::Plane;
use Millina::Vector;

my Plane $area = Plane.new(
    x => [-1,4],
    y => [2,5],
     );

my $vector = Vector.new(x=> 1, y => 2);

$area.move($vector);

my Plane $moved = Plane.new(
    x=> [0,5],
    y => [4,7]
    );

is_deeply($area.x,  $moved.x, 'Plane move x axis');
is_deeply($area.y,  $moved.y, 'Plane move y axis');


$moved.multiply(0.5);


