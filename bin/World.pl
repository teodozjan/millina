use Real::Person;
# days?
my Real::Person $adam;
my Real::Person $eve;

my @people = ($adam, $eve);

for 1..365 {
    for @people -> Real::Person $person {
	$person.live();
    }
  print ".";


}
