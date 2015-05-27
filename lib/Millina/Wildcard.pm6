use v6;

use Millina::Area;

unit class Millina::Wildcard is Millina::Area;

multi method overlap(Millina::Area $area) {return True;}
