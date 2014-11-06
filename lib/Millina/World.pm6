use v6;
use Millina::Simulation;
use Millina::Clock;
use Millina::Interaction;

class Millina::World does Millina::Simulation;

has Millina::Clock $.clock;

method go {self.step until self.end}

method end { $!clock.end }

method step {
    die if self.end;
    self.tick;
}

method dispatch(Millina::Interaction $interaction) {
    for self.objects -> $obj {	
	#$obj.notify;
    }
}
