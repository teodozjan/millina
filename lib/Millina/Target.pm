use v6;
use Millina::Area;
use Millina::Object;

class Target does Area;

has Object $.target;

multi method overlap(Target $area --> Bool) {
    $!target === $area.target;
}
