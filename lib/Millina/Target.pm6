use v6;
use Millina::Area;
use Millina::Object;

class Millina::Target does Millina::Area;

has Millina::Object $.target;

multi method overlap(Millina::Target $area --> Bool) {
    $!target === $area.target;
}
