
using sap.ariba as entities from '../db';


@(requires: ['authenticated-user', 'identified-user', 'system-user'])
service athena @(path:'/athena')    {

    @readonly
    entity GenericBenchmarks as projection on entities.GenericBenchmarks;

    @readonly
    entity CustomerLevelKPIBenchmarks as projection on entities.CustomerLevelKPIBenchmarks;
}