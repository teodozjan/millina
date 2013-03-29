role Law::Department{
}

#! This class will decide which department should take case 
class Law::InteractionDelegator{
       my Law::InteractionDelegator $instance = Law::InteractionDelegator.bless(*);
       has Law::Department @!departments;

       method getInstance(){$instance}
       method new{!!!}
       method addDepartment(Law::Department $dep){
       @!departments.push($dep);
     }
 }


