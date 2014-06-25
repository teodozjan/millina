use v6;
use Test;

plan 2;

use Millina::Rect;
use Millina::Vector;
use Millina::Target;

subtest {
    plan 16;

    my Rect $area = Rect.new(
	x => [-1,4],
	y => [2,5],
    );

    my Vector $vector .= new(x=> 1, y => 2);

    $area.move($vector);
    
    my Rect $moved .= new(
	x => [0,5],
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

    my Rect $big .= new(
	x => [-10, +10],
	y => [-10, +10]
    ); 

    my Rect $inside_center .= new(
	x => [-1, +1],
	y => [-1, +1]
    ); 

    my Rect $inside_left_top .= new(
	x => [-10, -9],
	y => [+9, +10]
    ); 

    my Rect $inside_right_top .= new(
	x => [+9, +10],
	y => [+9, +10]
    ); 

    my Rect $inside_left_bottom .= new(
	x => [-10, -9],
	y => [-10, -9]
    ); 

    my Rect $inside_right_bottom .= new(
	x => [+9, +10],
	y => [-10, -9]
    ); 

    my Rect $outside .= new(
	x => [+20, +20],
	y => [+20, +20]
    ); 

    my Rect $corner_right .= new(
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
}, 'Rectangles';


subtest {
    plan 3;

    my Rect $corner_right .= new(
	x => [+10, +10],
	y => [+10, +10]
	    ); 
    class X does Object{};
    my X $x1 .= new;
    my X $x2 .= new;

    my Target $target1 .= new(target => $x1);
    my Target $target11 .= new(target => $x1);
    my Target $target2 .= new(target => $x2);
   
    nok($target1.overlap($corner_right), 'Different types');

    ok($target1.overlap($target11), 'Same objAT');
    nok($target1.overlap($target2), 'Different instances of identical objects')

}, 'Area';