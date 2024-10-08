namespace sap.ariba;
using { managed, cuid } from '@sap/cds/common';

using sap.ariba.type as types from '../types';


/**
    Name:                   Supplier Registration Project
    Class Name:             ariba.analytics.fact.SupplierRegistrationProject
    Description:            Supplier Registration Project
    Database Table Name:    FACT_SUPPLIER_REGISTRATION_P
*/
entity SupplierRegistrationProjects: managed  {
    key Realm                           : String(50);
    key ProjectId                       : String(50);

        LoadCreateTime                  : DateTime;
        LoadUpdateTime                  : DateTime;
        Description                     : String(1000);
        AclId                           : Integer;
        Duration                        : Double;
        BeginDate                       : types.day;
        DueDate                         : types.day;
        EndDate                         : types.day;
        Status                          : String(30);
        State                           : String(20);
        OnTimeOrLate                    : String(10);
        Owner                           : types.user;
        ProjectInfo                     : types.projectInfo;
        DependsOnProject                : types.projectInfo;
        ContainerProject                : types.projectInfo;
        Process                         : types.process;
        IsTestProject                   : Boolean;
        SourceSystem                    : types.sourceSystem;
        ProcessStatus                   : String(50);
        SMProjectInfo                   : types.projectInfo;
        Supplier                        : types.supplier;
        QuestionnaireSubmissionDate     : types.day;
        ReinviteDate                    : types.day;
        ReinviteCount                   : Integer;
        ApprovedDate                    : types.day;
        UpdateApprovedDate              : types.day;
        DeniedDate                      : types.day;
        UpdateDeniedDate                : types.day;
        RegistrationStatus              : String(255);
        RegistrationUpdateStatus        : String(255);

        Region                          : Composition of many SupplierRegistrationProjects_Region on Region.SupplierRegistrationProject = $self;
        Commodity                       : Composition of many SupplierRegistrationProjects_Commodity on Commodity.SupplierRegistrationProject = $self;
        Organization                    : Composition of many SupplierRegistrationProjects_Organization on Organization.SupplierRegistrationProject = $self;
        AllOwners                       : Composition of many SupplierRegistrationProjects_AllOwners on AllOwners.SupplierRegistrationProject = $self;

}

entity SupplierRegistrationProjects_Commodity: cuid {
    Commodity                   : types.commodity;
    SupplierRegistrationProject : Association to SupplierRegistrationProjects;
}

entity SupplierRegistrationProjects_Region:  cuid {
    Region                      : types.region;
    SupplierRegistrationProject : Association to SupplierRegistrationProjects;
}

entity SupplierRegistrationProjects_Organization:  cuid {
    Organization                : types.organization;
    SupplierRegistrationProject : Association to SupplierRegistrationProjects;
}

entity SupplierRegistrationProjects_AllOwners:  cuid {
    AllOwners                   : types.user;
    SupplierRegistrationProject : Association to SupplierRegistrationProjects;
}