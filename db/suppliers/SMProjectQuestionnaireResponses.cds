namespace sap.ariba;
using { managed, cuid } from '@sap/cds/common';

using sap.ariba.type as types from '../types';


/**
    Name:	                SM Project Questionnaire Response
    Class Name:	            ariba.analytics.fact.SMSurveyResponse
    Description:	        SM Project Questionnaire Response
    Database Table Name:	FACT_SM_SURVEY_RESPONSE
*/
entity SMProjectQuestionnaireResponses: managed  {
    key Realm                           : String(50);
    key QuestionId                      : String(255);
    key UserId                          : String(50);
    key SurveyId                        : String(255);
    key VersionNumber                   : Double;

        LoadCreateTime                  : DateTime;
        LoadUpdateTime                  : DateTime;
        Survey                          : types.survey;
        SourceSystem                    : types.sourceSystem;
        Respondent                      : types.respondent;
        TemplateQuestion                : types.question;
        QuestionOrderNumber             : Integer;
        SurveyStartDate                 : types.day;
        SurveyEndDate                   : types.day;
        Project                         : types.projectInfo;
        Supplier                        : types.supplier;
        Owner                           : types.owner;
        IsInternalRespondent            : Boolean;
        RespondentDepartment            : types.organization;
        IsQuantitative                  : Boolean;
        StringValue                     : String(1000);
        AclId                           : Integer;
        BooleanValue                    : Boolean;
        DateValue                       : DateTime;
        SensitiveDataMaskPattern        : String(1000);
        QuantitativeCount               : Integer;
        Value                           : Double;
        Weight                          : Double;
        Target                          : Double;
        Grade                           : Double;
        SystemGrade                     : Double;

        ResponseCommodityValue          : Composition of many SMProjectQuestionnaireResponses_ResponseCommodityValue on ResponseCommodityValue.SMProjectQuestionnaireResponse = $self;
        ResponseRegionValue             : Composition of many SMProjectQuestionnaireResponses_ResponseRegionValue on ResponseRegionValue.SMProjectQuestionnaireResponse = $self;
        ResponseDepartmentValue         : Composition of many SMProjectQuestionnaireResponses_ResponseDepartmentValue on ResponseDepartmentValue.SMProjectQuestionnaireResponse = $self;
        ResponseSupplierValue           : Composition of many SMProjectQuestionnaireResponses_ResponseSupplierValue on ResponseSupplierValue.SMProjectQuestionnaireResponse = $self;
        V_responsetextmultivalue        : Composition of many SMProjectQuestionnaireResponses_V_responsetextmultivalue on V_responsetextmultivalue.SMProjectQuestionnaireResponse = $self;
}


entity SMProjectQuestionnaireResponses_ResponseCommodityValue: cuid {
    ResponseCommodityValue          : types.responseCommodityValue;
    SMProjectQuestionnaireResponse  : Association to SMProjectQuestionnaireResponses;
}

entity SMProjectQuestionnaireResponses_ResponseRegionValue: cuid {
    ResponseRegionValue             : types.region;
    SMProjectQuestionnaireResponse  : Association to SMProjectQuestionnaireResponses;
}

entity SMProjectQuestionnaireResponses_ResponseDepartmentValue: cuid {
    ResponseDepartmentValue         : types.organization;
    SMProjectQuestionnaireResponse  : Association to SMProjectQuestionnaireResponses;
}

entity SMProjectQuestionnaireResponses_ResponseSupplierValue: cuid {
    ResponseSupplierValue           : types.supplier;
    SMProjectQuestionnaireResponse  : Association to SMProjectQuestionnaireResponses;
}

entity SMProjectQuestionnaireResponses_V_responsetextmultivalue: cuid {
    V_responsetextmultivalue        : String(255);
    SMProjectQuestionnaireResponse  : Association to SMProjectQuestionnaireResponses;
}
