use v6;
use Test;

plan 16;

use Millina::Rect;
use Millina::Vector;

my Millina::Rect $area .= new(x => [-1,4],y => [2,5]);

my Millina::Vector $vector .= new(x=> 1, y => 2);

$area.move($vector);

my $moved = Millina::Rect.new(
    x => [0,5],
    y => [4,7]
    );

is-deeply($area.x,  $moved.x, 'Millina::Rect move x axis');
is-deeply($area.y,  $moved.y, 'Millina::Rect move y axis');
 

    $moved.scale(0.5);
    my $scaled = Millina::Rect.new(
	x => [0, 2.5],
    y => [4, 3.5]
    ); 

    is-deeply($moved.x,  $scaled.x, 'Millina::Rect scale x axis');
    is-deeply($moved.y,  $scaled.y, 'Millina::Rect scale y axis');

    my $big = Millina::Rect.new(
	x => [-10, +10],
	y => [-10, +10]
    ); 

    my $inside_center = Millina::Rect.new(
	x => [-1, +1],
	y => [-1, +1]
    ); 

    my $inside_left_top = Millina::Rect.new(
	x => [-10, -9],
	y => [+9, +10]
    ); 

    my $inside_right_top = Millina::Rect.new(
	x => [+9, +10],
	y => [+9, +10]
    ); 

    my $inside_left_bottom = Millina::Rect.new(
	x => [-10, -9],
	y => [-10, -9]
    ); 

    my $inside_right_bottom = Millina::Rect.new(
	x => [+9, +10],
	y => [-10, -9]
    ); 

    my $outside = Millina::Rect.new(
	x => [+20, +20],
	y => [+20, +20]
    ); 

    my $corner_right = Millina::Rect.new(
	x => [+10, +10],
	y => [+10, +10]
    ); 

    nok($big.overlap($outside), "Outside");
    nok($outside.overlap($big), 'Vice versa');

    ok($big.overlap($inside_right_bottom), 'Big inside right bottom' );
    ok($inside_right_bottom.overlap($big), 'Vice versa' );

    ok($big.overlap($inside_left_bottom), 'Big inside left bottom');
    ok($inside_left_bottom.overlap($big), 'Vice versa' );

    ok($big.overlap($inside_right_top), 'Big inside right top');
    ok($inside_right_top.overlap($big), 'Vice versa' );

    ok($big.overlap($inside_left_top), 'Big inside left top');
    ok($inside_left_top.overlap($big), 'Vice versa' );

    ok($big.overlap($corner_right), 'Big in Corner');
    ok($corner_right.overlap($big), 'Vice versa' );



