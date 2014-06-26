use v6;

use Millina::Area;

class Wildcard is Area;

multi method overlap(Area $area) {return True;}