role LawDepartment{
}
 
class LawInteractionDelegator{
       my LawInteractionDelegator $instance=LawInteractionDelegator.bless(*);
       has LawDepartment @!departments;

       method getInstance(){$instance}
       method new{!!!}
       method addDepartment(LawDepartment $dep){
       @!departments.push($dep);
     }
 }


