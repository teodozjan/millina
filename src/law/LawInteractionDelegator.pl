 class LawInteractionDelegator{

       my LawInteractionDelegator $instance=LawInteractionDelegator.bless(*);

       method getInstance(){$instance}
       method new{!!!}
 
}
