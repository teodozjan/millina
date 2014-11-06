use v6;
use Test;

plan 3;

use Millina::Rect;
use Millina::Object;
use Millina::Target;

my Millina::Rect $corner_right .= new(x => [+10, +10], y => [+10, +10]); 

my $x1 = Millina::Object.new;
my $x2 = Millina::Object.new;

my $target1  = Millina::Target.new(target => $x1);
my $target11 = Millina::Target.new(target => $x1);
my $target2  = Millina::Target.new(target => $x2);

nok($target1.overlap($corner_right), 'Different types');

ok($target1.overlap($target11), 'Same objAT');
nok($target1.overlap($target2), 'Different instances of identical objects')




