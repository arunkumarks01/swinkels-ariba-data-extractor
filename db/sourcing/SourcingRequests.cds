namespace sap.ariba;
using { managed, cuid } from '@sap/cds/common';

using sap.ariba.type as types from '../types';


entity SourcingRequests: managed,types.customFields   {
    key Realm                               : String(50);
    key ProjectId                           : String(50);

        LoadCreateTime                      : DateTime;
        LoadUpdateTime                      : DateTime;
        Description                         : String(1000);
        AclId                               : Double;
        Duration                            : Double;
        BeginDate                           : types.day;
        DueDate                             : types.day;
        EndDate                             : types.day;
        Status                              : String(30);
        State                               : String(20);
        OnTimeOrLate                        : String(10);
        Owner                               : types.user;
        ProjectInfo                         : types.projectInfo;
        DependsOnProject                    : types.projectInfo;
        ContainerProject                    : types.projectInfo;
        Process                             : types.process;
        IsTestProject                       : Boolean;
        SourceSystem                        : types.sourceSystem;
        ProcessStatus                       : String(50);
        BaselineSpend                       : Double;
        ActualSaving                        : Double;
        TargetSavingsPct                    : Double;
        ContractMonths                      : Double;
        Currency                            : String(1000);
        EventType                           : types.eventType;
        ContractEffectiveDate               : types.day;
        ResultsDescription                  : String(1000);
        AwardJustification                  : String(1000);
        PlannedStartDate                    : types.day;
        PlannedEndDate                      : types.day;
        SourcingMechanism                   : String(50);
        ExecutionStrategy                   : String(50);
        ProjectReason                       : String(50);
        PlannedEventType                    : types.eventType;
        Origin                              : Integer;

        Organization                        : Composition of many SourcingRequests_Organization on Organization.SourcingRequests = $self;
        Suppliers                           : Composition of many SourcingRequests_Suppliers on Suppliers.SourcingRequests = $self;
        AllOwners                           : Composition of many SourcingRequests_AllOwners on AllOwners.SourcingRequests = $self;
        Commodity                           : Composition of many SourcingRequests_Commodity on Commodity.SourcingRequests = $self;
        Region                              : Composition of many SourcingRequests_Region on Region.SourcingRequests = $self;
}

entity SourcingRequests_Organization:  cuid {
    Organization        : types.organization;
    SourcingRequests    : Association to SourcingRequests;
}

entity SourcingRequests_Commodity: cuid {
    Commodity           : types.commodity;
    SourcingRequests    : Association to SourcingRequests;
}

entity SourcingRequests_Region:  cuid {
    Region              : types.region;
    SourcingRequests    : Association to SourcingRequests;
}

entity SourcingRequests_Suppliers:  cuid {
    Suppliers           : types.supplier;
    SourcingRequests    : Association to SourcingRequests;
}

entity SourcingRequests_AllOwners:  cuid {
    AllOwners           : types.owner;
    SourcingRequests    : Association to SourcingRequests;
}