"use strict";

const cds = require("@sap/cds");
const logger = require("../../utils/logger");
const utils = require("../../utils/Utils");

const { TaskApprovals } = cds.entities('sap.ariba');

//Amount fields in object
function _getAmountPropertiesForDataCleaning () {
    return [
    ];
}

function _FlatteningData (oData) {

    //Structure flattening
    oData.SourceSystemId = oData.SourceSystem.SourceSystemId;
    return oData;
}

function insertData(aData, realm)  {
    return new Promise(async function(resolve, reject)    {

        const srv = cds.transaction(aData);
        if (!aData || aData.length === 0) {
            resolve(0);
            return;
        }        logger.info(`Processing ${aData.length} records`);
        var aCleaningProperties = _getAmountPropertiesForDataCleaning();
        let i=0;
        for(const oData of aData) {

            var oDataCleansed = utils.cleanData(aCleaningProperties, oData, realm);
            var oDataCleansed = _FlatteningData(oDataCleansed);
            var oDataCleansed = utils.processCustomFields(oDataCleansed);

            try {
                //Select record by Unique key
                let res =  await srv.run ( SELECT.from (TaskApprovals).where(
                    {
                        Realm : oDataCleansed.Realm ,
                        TaskId : oDataCleansed.TaskId,
                        RequestId : oDataCleansed.RequestId,
                        ApproverId : oDataCleansed.ApproverId,
                        SourceSystemId : oDataCleansed.SourceSystemId
                    })
                 );

                if(res.length==0){
                     //New record, insert
                    await srv.run( INSERT .into (TaskApprovals) .entries (oDataCleansed) );

                } else {
                    //Update existing record
                    await srv.run ( UPDATE (TaskApprovals) .set (oDataCleansed) .where(
                        {
                            Realm : oDataCleansed.Realm ,
                            TaskId : oDataCleansed.TaskId,
                            RequestId : oDataCleansed.RequestId,
                            ApproverId : oDataCleansed.ApproverId,
                            SourceSystemId : oDataCleansed.SourceSystemId
                        })
                    );

                }

            } catch (e) {
                logger.error(`Error on inserting data in database, aborting file processing, details ${e} `);
                await srv.rollback();
                //abort full file
                reject(e);
                break;
            }
            //Monitoring
            i++;
            if(i%500 ==0){
                logger.info(`Upsert ${i} records`);
            }

        }
        await srv.commit();
        resolve(aData.length);
    });

}




module.exports = {
    insertData
}