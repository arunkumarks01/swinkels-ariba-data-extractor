namespace sap.ariba;


entity GenericBenchmarks {
    key Version                     : String(100);
    key Metric_ID                   : String(100);
    key Industry                    : String(255);
        Key_Performance_Indicator   : String(255);
        Process_Area                : String(100);
        Solution                    : String(100);
        KPI_Category                : String(100);
        Data_Source                 : String(100);
        Whats_Better                : String(100);
        Unit                        : String(50);
        Top_25                      : Double;
        Average                     : Double;
        Bottom_25                   : Double;
        Top_Decile                  : Double;
        Count                       : Double;
        Max                         : Double;
        Min                         : Double;
        Median                      : Double;
}


entity CustomerLevelKPIBenchmarks {
    key Dummy_Customer_ID           : String(100);
    key Metric_Start_Period         : String(100);
    key Metric_End_Period           : String(255);
    key Metric_ID                   : String(100);

        IndustryL1                  : String(255);
        IndustryL2                  : String(255);
        Region                      : String(100);
        Process_Area                : String(100);
        Data_Source                 : String(100);
        Metric_Name                 : String(255);
        Metric_Value_in_USD         : Double;
}
