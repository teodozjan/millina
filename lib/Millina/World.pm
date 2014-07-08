use v6;

class World does Simulation;

has Clock $.clock;

method go {self.step until self.end}

method end { $!clock.end }

method step {
    die if self.end;
    self.tick;

    for(self.objects -> $obj) {
	$obj.live;	
    }
}

method dispatch(Interaction $interaction) {
    for(self.objects -> $obj) {	
	$obj.notify;
    }

}