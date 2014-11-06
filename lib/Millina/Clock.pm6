use v6;

role Millina::Clock {
    method tick {...}
    method end returns Bool {...}

}

class Millina::SimpleClock does Millina::Clock {

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

