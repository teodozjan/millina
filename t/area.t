use v6;
use Test;

plan 5;

use Millina::Rect;
use Millina::Vector;

my Rect $area = Rect.new(
    x => [-1,4],
    y => [2,5],
     );

my Vector $vector .= new(x=> 1, y => 2);

$area.move($vector);

my Rect $moved .= new(
    x=> [0,5],
    y => [4,7]
    );

is_deeply($area.x,  $moved.x, 'Rect move x axis');
is_deeply($area.y,  $moved.y, 'Rect move y axis');


$moved.scale(0.5);
my Rect $scaled .= new(
x => [0, 2.5],
y => [4, 3.5]
); 

is_deeply($moved.x,  $scaled.x, 'Rect scale x axis');
is_deeply($moved.y,  $scaled.y, 'Rect scale y axis');

ok(False, 'No test for overlap');
