#package Real{
use Real::Person;
role Real::Woman{
    my %sexDistribution = {"Male" => 6, "Female" => 4};
    #method getPregnant(Real::Man $man){}
    method giveBirth(){
	my Real::Person $child = Real::Person.new;
	
	my $sex = %sexDistribution.pick;
	if $sex ~~ "Male" {
			   $child does Real::Man
			  } else {
			    $child does Real::Woman
			  }
	$child;
    }

}
#}



