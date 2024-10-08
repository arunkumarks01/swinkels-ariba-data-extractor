
namespace sap.ariba.type;

type cus_String {
    value         : String(1000);
    name          : String(200);
}


aspect customFields {
        CusField1                           : cus_String;
        CusField2                           : cus_String;
        CusField3                           : cus_String;
        CusField4                           : cus_String;
        CusField5                           : cus_String;
        CusField6                           : cus_String;
        CusField7                           : cus_String;
        CusField8                           : cus_String;
        CusField9                           : cus_String;
        CusField10                          : cus_String;
        CusField11                          : cus_String;
        CusField12                          : cus_String;
        CusField13                          : cus_String;        
        CusField14                          : cus_String;     
        CusField15                          : cus_String;     
        CusField16                          : cus_String;     
        CusField17                          : cus_String;     
        CusField18                          : cus_String;     
        CusField19                          : cus_String;     
        CusField20                          : cus_String;
        CusField21                          : cus_String;
        CusField22                          : cus_String;
        CusField23                          : cus_String;        
        CusField24                          : cus_String;     
        CusField25                          : cus_String;     
        CusField26                          : cus_String;     
        CusField27                          : cus_String;     
        CusField28                          : cus_String;     
        CusField29                          : cus_String;     
        CusField30                          : cus_String;
        CusField31                          : cus_String;
        CusField32                          : cus_String;
        CusField33                          : cus_String;        
        CusField34                          : cus_String;     
        CusField35                          : cus_String;     
        CusField36                          : cus_String;     
        CusField37                          : cus_String;     
        CusField38                          : cus_String;     
        CusField39                          : cus_String;    
        CusField40                          : cus_String;
        CusFieldVector1_1                   : cus_String;
        CusFieldVector1_2                   : cus_String;
        CusFieldVector1_3                   : cus_String;
        CusFieldVector1_4                   : cus_String;
        CusFieldVector1_5                   : cus_String;
        CusFieldVector2_1                   : cus_String;
        CusFieldVector2_2                   : cus_String;
        CusFieldVector2_3                   : cus_String;
        CusFieldVector2_4                   : cus_String;
        CusFieldVector2_5                   : cus_String;
}


type parameters {
    Param1                  : String(255) default '';
    Param2                  : String(255) default '';
    Param3                  : String(255) default '';
    Param4                  : String(255) default '';
    Param5                  : String(255) default '';
    Param6                  : String(255) default '';
    Param7                  : String(255) default '';
    Param8                  : String(255) default '';
    Param9                  : String(255) default '';
    Param10                 : String(255) default '';
}

type template{
    UniqueId: String(255) default '';
    Action: actiontype;
    IsSystemTemplate: Boolean  default false;
    RecipientGroup:String(255) default '';
    ProjectType:String(255) default '';
}

type abstractDocument{
    InternalId: String(100);
}

type actiontype{
    UniqueName: String(255) default '';
    TopValueTypeName:String(255) default '';
    Name: actiontypename;
}

type actiontypename{
    DefaultStringTranslation:String(255) default '';
}

type nextVersion{
    InternalId:String(50);
    Title:parentWorkspaceTitle;
}

type documentId{
    InternalId : String(50);
    Title : documentIdTitle;
    DocumentVersion : Integer;
    IsReportVersion: Boolean;
    TimeCreated: DateTime;
    TimeUpdated: DateTime;
}

type documentIdTitle{
    DefaultStringTranslation : String(500);
}

type contextObject{
    InternalId: String(50) default '';
}

type effectiveUser {
    UniqueName                  : String(255) default '';
    Name                        : String(255) default '';
    FirstName                   : String(255) default '';
    Phone                       : String(70) default '';
    LastName                    : String(255) default '';
    Fax                         : String(70) default '';
    MiddleName                  : String(255) default '';
    EmailAddress                : String(255) default '';
}


type documentTaskApproverBC{
    EmailAddress: String(255);
}

type plan{
    Title : actiontypename;
    UniqueId:  String(255);
    ProcessId: String(50);
    Workspace: parentWorkspace;
}


type documentVersionReferenceBO{
    documentMinorVersion: Integer;
    documentVersion: Integer;
    documentId: String(50);
}

type survey{
    SurveyId                : String(255);
    VersionNumber           : Double;
    SourceSystem            : String(100);
}

type contractor{
    ContractorSystemId                : String(255);
}

type scorecard{
    ScorecardId             : String(255);
    VersionNumber           : Double;
    SourceSystem            : String(100);
}
type scorecardKPI{
    KPIId                   : String(255);
    SourceSystem            : String(100);
}

type userdata {
    UserId                  : String(50);
    PasswordAdapter         : String(50);
    SourceSystem            : String(100);
}

type question {
    QuestionId               : String(255);
    SourceSystem            : String(100);
}

type srProject {
    ProjectId               : String(50);
    SourceSystem            : String(100);
}

type projectOwner {
    UserId                  : String(50);
    SourceSystem            : String(100);
}


type company {
    CompanyId               : String(50);
    BusinessUnitId          : String(50);
}

type day {
    day                     : DateTime;
}

type sourceSystem {
    SourceSystemId          : String(100);
}

type companyCode {
    CompanyCodeId           : String(255);
}

type supplier {
    SourceSystem            : String(100);
    SupplierId              : String(50);
    SupplierLocationId      : String(50);
}

type contact {
    SourceSystem            : String(100);
    UserId                  : String(50);
    PasswordAdapter         : String(50);
}

type taxCode {
    SourceSystem            : String(20);
    TaxCodeId               : String(50);
}

type operationalTaxCode {
    UniqueName            : String(10);
}

type poToInvoiceInterval {
    Category                : String(20);
    RangeDescription        : String(50);
}

type procurementSystem {
    ProcurementSystem       : String(255);
}

type matchedContract {
    SourceSystem            : String(100);
    ContractId              : String(50);
}

type contract {
    SourceSystem            : String(100);
    ContractId              : String(50);
}

type procurementUnit {
    SourceSystem            : String(100);
    UniqueName              : String(50);
}

type percentRangeDim {
    RangeDescription        : String(50);
}

type asset {
    AssetId                 : String(50);
}

type product {
    ProductId               : String(50);
}

type accountingProject {
    ProjectId               : String(50);
}

type accountingRegion {
    RegionId                : String(50);
}

type subAccount {
    SubAccountId            : String(50);
}

type costCenter {
    SourceSystem            : String(100);
    CompanyCode             : String(50);
    CostCenterId            : String(50);
}

type statisticsCode {
    StatisticsCodeId        : String(50);
}

type internalOrder {
    InternalOrderId         : String(50);
}

type account {
    SourceSystem            : String(100);
    CompanyCode             : String(50);
    AccountId               : String(50);
}

type remittanceLocation {
    SourceSystem            : String(20);
    RemittanceLocationId    : String(50);
}

type commodity {
    SourceCommodityDomain   : String(150);
    CommodityId             : String(50);
}

type commodityEscalationClause {
    Domain   : String(150);
    CommodityId             : String(50);
    Frequency             : String(50);
}



type itemcommodity{
    Domain  :String(50);
    UniqueName: String(100);
}

type erpCommodity {
    SourceSystem            : String(100);
    CommodityId             : String(50);
}

type activityNumber {
    ActivityNumberId        : String(100);
    CompanyCodeId        : String(100);
    NetworkId        : String(100);
}

type activityNumberLong {
    ActivityNumberId        : String(255);
    CompanyCodeId        : String(255);
    NetworkId        : String(255);
}

type network    {
    NetworkId               : String(100);
}

type networkLong    {
    NetworkId               : String(255);
}


type unit {
    SourceSystem                        : String(100);
    UniqueName                          : String(50);
}

type region {
    RegionId                            : String(50);
}

type operationalUser {
    UniqueName                          : String(50);
    PasswordAdapter                     : String(50);
}
type rfxOwner {
    UniqueName                          : String(50);
    Name                                : String(100);
    Phone                                : String(100);
    Fax                                : String(100);
    EmailAddress                       : String(100);
}


type masterAgreement {
    UniqueName                          : String(50);
}

type operationalLineType {
    UniqueName                          : String(50);
}
type parentKit {
    UniqueName                          : String(50);
}

type user {
    SourceSystem                        : String(100);
    UserId                              : String(50);
    PasswordAdapter                     : String(50);
}

type event {
    EventId:            String(50);
    ItemId:             String(50);
    SourceSystem:       String(100);
    VersionNumber:      Double;
}

type surrogate {
    SourceSystem:       String(100);
    UserId:             String(50);
    PasswordAdapter:    String(50);
}

type range {
    RangeDescription                    : String(50);
}

type site {
    SourceSystem                        : String(100);
    SiteId                              : String(25);
}

type location {
    LocationId                          : String(25);
    SourceSystem                        : String(100);
}

type project {
    ProjectId                           : String(50);
}
type pcard {
    EncryptedString                     : String(255);
}

type part {
    PartKey1                            : String(255);
    PartKey2                            : String(25);
    PartKey3                            : String(64);
    SourceSystem                        : String(100);
}

type uom {
    UnitOfMeasureId                     : String(255);
}


type unspsc {
    AribaCodeId                         : String(50);
}

type group {
    CompanyId                           : String(50);
    BusinessUnitId                      : String(50);
}

type requester {
    SourceSystem                : String(100);
    UserId                      : String(50);
    PasswordAdapter             : String(50);
}

type feedbackRequest {
    RequestId                   : Double;
}

type companySite {
    SourceSystem                : String(100);
    SiteId                      : String(25);
}

type amountRange {
    RangeDescription            : String(50);
}

type folder {
    FolderId                : String(25);
    SourceSystem            : String(100);
}

type projectInfo {
    ProjectId               : String(50);
    SourceSystem            : String(100);
}

type purchasingCompany: {
    CompanyId:          String(50);
    BusinessUnitId:     String(50);
}


type singleDate {
    Day:                DateTime;
}


type shipToLocation {
    LocationId:         String(50);
    SourceSystem:       String(50);
}


type priceBasisQuantityUOM: {
    UnitOfMeasureId:    String(50);
}

type accountingCompany: {
    CompanyId:          String(50);
    BusinessUnitId:     String(50);
}

type billToLocation: {
    LocationId:         String(50);
    SourceSystem:       String(50);
}

type unitOfMeasure: {
    UnitOfMeasureId:    String(50);
}

type unitOfMeasure2 {
    UniqueName:    String(50);
}


type organization {
    OrganizationId  : String(50);
}

type eventType {
    EventType       : String(20);
}


type owner {
    SourceSystem    : String(100);
    UserId          : String(50);
    PasswordAdapter : String(50);
}

type projectAddin{
    TemplateProjectAddin: alwaysnull;
    Answers: alwaysnull;
    Plan: plan;
    IsSubproject: Boolean;
    FollowOnPath: String(510);
    WorkspaceType: String(50);
}


type process {
    BaseProcessId   : String(50);
    SourceSystem    : String(100);
}

type globalBindingRules{
    DefaultGrading: Integer;
    AllowScoring : Boolean;
    AllowAnonymousScoring: Boolean;
    BiddingRulesAllowed: Boolean;
}

type exceptionType {
    ExceptionTypeId : String(255);
}

type task {
    TaskId          : String(50);
    SourceSystem    : String(100);
}

type currency {
    UniqueName      : String(50);
}

type paymentTerms {
    UniqueName      : String(50);
}

type money {
    AmountInReportingCurrency   : Double;
    ApproxAmountInBaseCurrency  : Double;
    Amount                      : Double;
    ConversionDate              : DateTime;
    Currency                    : currency;
}

type approver{
    Name: String(255);
    UniqueName: String(100);
}

type versiondClusterRoot{
    VersionId:  Integer;
}

type activeApprover {
    UniqueName      : String(255);
}

type genericRoot {
    UniqueName      : String(50);
}

type itemCategory {
    UniqueName      : String(50);
}

type purchaseOrg {
    UniqueName      : String(50);
}

type purchaseGroup {
    UniqueName      : String(50);
}

type accountCategory {
    UniqueName      : String(50);
}

type country {
    UniqueName      : String(50);
}

type address {
    State           : String(100);
    Phone           : String(50);
    Country         : country;
    PostalCode      : String(50);
    City            : String(100);
    Fax             :  String(50);
    UniqueName      : String(50);
    Lines           : String(1000);
    Name            : String(255);
}

type commodityCode {
    UniqueName      : String(50);
}

type commodityCodeName {
    UniqueName      : String(50);
    Name            : String(255);
}

type supplierUniqueName {
    UniqueName      : String(50);
    Name            : String(255);
}

type supplierLocation {
    UniqueName      : String(50);
}

type accountType {
    UniqueName: String(50);
    Name: String(255);
}

type LocaleId{
    UniqueName: String(50);
}
type commodityMap {
    CommodityCode       : commodityCodeName;
    AccountType         : accountType;
    UniqueName          : String(50);
}

type coreUnitOfMeasure {
    UniqueName          : String(50);
}

type alwaysnull {

}

type description {
    Description             : String(4000);
    ItemNumber              : String(255);
    SupplierPartNumber      : String(255);
    SupplierPartAuxiliaryID : String(255);
    UnitOfMeasure           : unitOfMeasure2;
    CommonCommodityCode     : commodityCodeName;
    Price                   : money;
    CustomPrice             : money;
    IndexContractPrice      : money;
    ContractPrice           : money;
    NonContractPrice        : money;
    SupplierURL             : String(255);
    LeadTime                : Integer;
    Language                : String(5);
    ShortName               : String(80);
    QueryID                 : String(20);
    ExpirationDate          : DateTime;
    PriceBasisQuantity      : Double;
    PriceBasisQuantityUOM   : unitOfMeasure2;
    ConversionFactor        : Double;
    PriceBasisQuantityDesc  : String(2000);
    ExtAttributesBitMask    : Integer;
    ExtendedDescription     : String(2000);
    KitUniqueName           : String(255);
}

type contractDescription {
    ManPartNumber           : String(100);
    ManName                 : String(255);
    UnitOfMeasure           : unitOfMeasure2;
    SupplierPartNumber      : String(255);
    SupplierPartAuxiliaryID : String(255);
    LeadTime                : Integer;
    Description             : String(4000);
    Price                   : money;
}

type invoiceLineItem {
    NumberInCollection  : Integer;
    InvoiceLineNumber   : Integer;
}

type invoiceDescription {
    Description             : String(4000);
    ItemNumber              : String(255);
    SupplierPartNumber      : String(255);
    SupplierPartAuxiliaryID : String(255);
    UnitOfMeasure           : unitOfMeasure2;
    CommonCommodityCode     : commodityCodeName;
    Price                   : money;
    CustomPrice             : money;
    IndexContractPrice      : money;
    ContractPrice           : money;
    NonContractPrice        : money;
    SupplierURL             : String(255);
    LeadTime                : Integer;
    Language                : String(5);
    ShortName               : String(80);
    QueryID                 : String(20);
    ExpirationDate          : DateTime;
    PriceBasisQuantity      : Double;
    PriceBasisQuantityUOM   : unitOfMeasure2;
    ConversionFactor        : Double;
    PriceBasisQuantityDesc  : String(2000);
    ExtAttributesBitMask    : Integer;
    ExtendedDescription     : String(2000);
    KitUniqueName           : String(255);
    LineItem                : invoiceLineItem;
}


type runtimeData{
    RFXSupplierStatusData : rfxSupplierStatusData;
}

type rfxSupplierStatusData{
    RFXSupplierStatus : rfxSupplierStatus;
}

type rfxSupplierStatus{
    IntendToBid : Boolean;
    DeclineToRespondReason : String(255);
    HasBid: Boolean;
    InvitedUser: alwaysnull;
    Awarded: Boolean;
    IntendToRespond: Integer;
}

type parentWorkspace{
    Title : parentWorkspaceTitle;
    InternalId: String(50);
    TemplateObject: contextObject;
    Supplier: parentWorkspaceSupplier;
    TimeCreated: DateTime;
    Timepdated: DateTime;
    PublishType: Integer;
    Realm: String(50);
    Status: String(50);
    Unit:Integer;
    SMVendorID: String(50);
    RequestStatus:String(50);
    RegistrationStatus:String(50);
    RegistrationUpdateStatus:String(50);

}

type invitedUser{
    Fax: String(100);
    Phone: String(100);  
    Name: String(100);   
    FirstName: String(100);   
    MiddleName: String(100);   
    LastName: String(100);   
    UniqueName : String(100);
    EmailAddress: String(100);
}
type rfxContent{
    Category: String(50);
    ItemId: String(50);
    RootItemId: String(50);

}

type rfxSupplierData{
    NumberOfRemovedBids         : Integer;
    TimeCreated                 : DateTime;
    AcceptedSupplierAgreement   : Integer;
    NumberOfBidExtension        : Integer;
    NumberOfSurrogateBids       : Integer;
    InvitedUser                 : effectiveUser;
    IntendToBid                 : Boolean;
    NumberOfSubmittedBids       : Integer;
    HasBid                      : Boolean;
    Awarded                     : Boolean;
    TimeUpdated                 : DateTime;
    IntendToRespond             : Integer;

}


type parentWorkspaceSupplier{
    Name: String(255);
    SystemID: String(50);
}

type parentWorkspaceTitle{
    DefaultStringTranslation: String(255);
}

type rfxclusterroot{
    Invitees: alwaysnull;
    Category: String(50);
    RootItemId: String(50);
    ItemId: String(50);
}

type rfxquantity{
    Amount: Double;
}
type serviceDetails {
    MaxAmount               : money;
    ExpectedAmount          : money;
    RequiresServiceEntry    : Boolean;
    ServiceLine             : Boolean;
    ServiceStartDate        : DateTime;
    ServiceEndDate          : DateTime;
}

type taxDetail {
    Purpose                             : String(128);
    Category                            : String(50);
    Percent                             : Double;
    PerUnit                             : Double;
    TaxableAmount                       : money;
    TaxAmount                           : money;
    AlternateTaxAmount                  : money;
    TaxLocation                         : String(50);
    Description                         : String(255);
    TaxPointDate                        : DateTime;
    PaymentDate                         : DateTime;
    ExemptDetail                        : String(50);
    IsTriangularTransaction             : Boolean;
    TriangularTransactionLawReference   : String(255);
    AbatementPercent                    : Double;
    IsDeductible                        : Boolean;
    Component                           : taxDetailComponent;
    FormulaString                       : String(1000);
}

type taxDetailComponent {
    UniqueName              : String(50);
}

type chargeDetail {
    ChargeType              : chargeType;
    ChargeAmount            : money;
    TaxCode                 : chargeTaxCode;
    TaxAmount               : money;
    ANChargeName            : String(50);
    ANChargeDescription     : String(250);
}

type chargeType{
    UniqueName              : String(50);
}

type chargeTaxCode{
    UniqueName              : String(50);
}

type accountingType {
    Type            : accountings;
}

type accountings {
    UniqueName              : String(50);
}

type comment {
    Date                    : DateTime;
    User                    : operationalUser;
    Title                   : String(255);
    ExternalComment         : Boolean;
    Text                    : String(1000);
}

type operationalCostCenter {
    UniqueName              : String(50);
    CostCenterDescription   : String(1000);
    CompanyCode             : operationalCompanyCode;
    ProcurementUnit         : procurementUnit;
}

type generalLedger {
    GeneralLedgerDescription    : String(255);
    GeneralLedgerDescription2   : String(255);
    UniqueName                  : String(50);
    CompanyCode                 : operationalCompanyCode;
    FieldStatusGroup            : String(50);
    ExternalId                  : String(50);
}

type operationalAsset {
    SubNumber                   : String(50);
    UniqueName                  : String(50);
    Name                        : String(255);
    CompanyCode                 : operationalCompanyCode;
}

type operationalInternalOrder {
    UniqueName      : String(50);
    Description     : String(1000);
}

type operationalCompanyCode {
    UniqueName           : String(50);
}

type operationalSplitAccountingsType {
    UniqueName                          : String(50);
}

type soldTo {
    Name        : String(255);
    Address      : address;
}

type servicePeriod {
    Period      : String(100);
    FromDate    : DateTime;
    ToDate      : DateTime;
}

type wbsElement {
    UniqueName                  : String(50);
    CompanyCodeUniqueNameList   : String(100);
    Description                 : String(1000);
    ProjectNumber               : String(50);
}

type taxType {
    UniqueName      : String(50);
}

type operationalOrder {
    UniqueName      : String(50);
}

type operationalOrderLineItem {
    NumberInCollection  : Integer;
}

type expectedTax {
    TaxCode         : operationalTaxCode;
    IsAccrual       : Boolean;
    Component       : String(50);
    TaxableAmount   : money;
    TaxRate         : Double;
    TaxType         : taxType;
}

type supplierOrderInfo {
    MANumber        : String(50);
    OrderNumber     : String(50);
    ReceiptNumber   : String(50);
}

type genericName {
    Name            : String(255);
}

type milestone {
    Title               : String(255);
    Verifier            : operationalUser;
    SupplierContact     : String(50);
    NotificationList    : String(50);
    NotificationDays    : String(50);
    Status              : String(50);
}

type respondent {
    SourceSystem        : String(100);
    UserId              : String(50);
    PasswordAdapter     : String(50);
}

type responseCommodityValue {
    CommodityId             : String(50);
    SourceCommodityDomain   : String(150);
}

type parentAgreement {
    UniqueName              : String(50);
}
