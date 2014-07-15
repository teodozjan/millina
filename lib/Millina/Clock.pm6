use v6;

role Clock {
    method tick {...}
    method end returns Bool {...}

}

class SimpleClock does Clock {

    has $.moment = 0;
    has $.limit = 1;

    method tick {
	++$!limit;
    }

    method end() {
	$!moment > $!limit; 
    }

  method loudtick {
	note 'Tick';
	++$!moment;
    }

}

