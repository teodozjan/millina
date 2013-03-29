use Law::InteractionDelegator;

#| Department orchestrator is tend to fill delegator with objects
class Law::DepartmentOrchestrator{

    method createDepartments{
    my Law::InteractionDelegator $delegator = Law::InteractionDelegator.getInstance;
    
    }

}
