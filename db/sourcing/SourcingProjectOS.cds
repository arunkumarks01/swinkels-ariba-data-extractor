namespace sap.ariba;
using { managed, cuid } from '@sap/cds/common';

using sap.ariba.type as types from '../types';


/**
    Name:	                SourcingProject (Strategic Sourcing)
    Description:	        SourcingProject
    Database Source:    	Operational Reporting API
*/

entity SourcingProject: managed {
    key Realm                               : String(50); 
    key InternalId                              : String(2000);
    DocumentId                              : types.documentId;
    UniqueId                                : String(200);
    LastModifiedBy                          : types.effectiveUser;
    Owner                                   : types.effectiveUser;
    Description                             : String(4000);           
    ProcessStatus                           : String(50);
    CreateDate                              : DateTime;
    LastModified                            : DateTime;
    TimeCreated                             : DateTime;
    PlannedStartDate                        : DateTime;
    ContractEffectiveDate                   : DateTime;
    ProjectAddin                            : types.projectAddin;
    AwardJustification                      : String(1000);
    ContractMonths                          : Double;
    Changed                                 : Boolean;
    ParentDocument                          : types.abstractDocument;
    Currency                                : types.currency;
    DocumentVersion                         : Integer;
    ExecutionStrategy                       : String(50);
    Status                                  : String(30);   
    IsVersionPinned                         : Boolean;
    Title                                   : String(255);
    ProjectReason                           : String(50);
    TimeUpdated                             : DateTime;
    BaselineSpend                           : types.money;
    TemplateObject                          : types.abstractDocument;
    ResultsDescription                      : String(1000);
    Active                                  : Boolean;
    ParentWorkspace                         : types.parentWorkspace;
    ActualSaving                            : types.money;
    BaseLanguage                            : types.LocaleId;
    NextVersion                             : types.abstractDocument;
    PlannedEndDate                          : DateTime;
    Alert                                   : String(20);
    ProcessId                               : String(50);
    ExternalSystemCorrelationId             : String(255);
    TargetSavingPct                         : Double;

    SubContent         : Composition of many SourcingProject_SubContent on SubContent.SourcingProject = $self;
    Client             : Composition of many SourcingProject_Client on Client.SourcingProject = $self;
    Region             : Composition of many SourcingProject_Region on Region.SourcingProject = $self;
    Commodity          : Composition of many SourcingProject_Commodity on Commodity.SourcingProject = $self;
     
 
    Suppliers          : Composition of many SourcingProject_Suppliers on Suppliers.SourcingProject = $self;
    
}


entity SourcingProject_SubContent:  cuid {
    SourcingProject   : Association to SourcingProject;
    InternalId        : String(50);
    Title             : String(255);
}
entity SourcingProject_Client:  cuid {
    SourcingProject   : Association to SourcingProject;
    DepartmentID       : String(50);
    Description        : String(255);
}
entity SourcingProject_Region:  cuid {
    SourcingProject   : Association to SourcingProject;
    Region            : String(50);
    Description       : String(255);
}
entity SourcingProject_Commodity:  cuid {
    SourcingProject   : Association to SourcingProject;
    Domain            : String(50);
    UniqueName        : String(50);
    Name              : String(255);
}
entity SourcingProject_Suppliers:  cuid {
    SourcingProject   : Association to SourcingProject;
    SystemID          : String(64);
    Name              : String(255);
}