namespace sap.ariba;
using { managed, cuid } from '@sap/cds/common';

using sap.ariba.type as types from '../types';


/**
    Name:	                ContractWorkspace (Strategic Sourcing)
    Description:	        ContractWorkspace
    Database Source:    	Operational Reporting API
*/

entity ContractWorkspace: managed {
    key Realm                               : String(50);
    key InternalId                          : String(50);
    DocumentId                              : types.documentId;
    Status                                  : String(30);
    LastModifiedBy                          : types.effectiveUser;
    Owner                                   : types.effectiveUser;
    Description                             : String(4000);
    Title                                   : String(255);
    TimeUpdated                             : DateTime;
    LastModified                            : DateTime;
    TimeCreated                             : DateTime;
    Active                                  : Boolean;
    ProjectAddin                            : types.projectAddin;
    ParentWorkspace                         : types.abstractDocument;
    Version                                 : Integer;
    ParentDocument                          : types.abstractDocument;
    ProcessId                               : String(50);
}
