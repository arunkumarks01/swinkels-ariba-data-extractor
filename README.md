# Guidelines

## Code Structure Guideline

  - In Srv Hanlders, Resources Views, DB models, use a folder to group entities (ie: Po, PODelivery, POLineItems)
  - One cds model file per entity
  - Re-use common types from .db/types.cds
  - Comment with view info on the entity definition
  - One Resource views with EXT_ prefix per entity model 
  - Reference new model entity in the index entity file
  - Reference the index tentity file in the job handler and related services exposure
  - One cds service per consumer (ie: Job service, workzone service ect...)

## Deployment Guideline  

* Deploy release version mta to create services and modules 
```
cf deploy mta_archives\<versioned_mta_name>.mtar
```
* Create destinations to Realm SAP Ariba API
* Create Custom SAP Ariba Analytical API Ariba views from resources/AnalyicalAPIViews using the filename as viewname
* Configure Job Scheduler as beloow for each job
  * Create Job - /jobadmin/createJob for each view _time T=0_
  * Update Job Status - /jobadmin/UpdateJobStatus _time T=+25mins_
  * Process Finished Jobs - /jobadmin/ProcessFinishedJobs _time T+29mins_

# Future Enhancements

- [X] Scheduler service in MTA
- [X] SAP Ariba Supplier API and Supplier Risk API consumption
- [X] UNSPSC classificaiton mapping upload via csv and mixin
- [ ] UI5 Frontend for job monitoring
- [X] Handling Custom Fields
- [X] Handling expired job + Delta logic associated
- [ ] Queue mechanism in case job fails to create

