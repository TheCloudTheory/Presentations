import * as azure from "@pulumi/azure";

const resourceGroup = new azure.core.ResourceGroup("cloudyna2019-euw-rg");

const account = new azure.storage.Account("cloudynademo5", {
    resourceGroupName: resourceGroup.name,
    accountTier: "Standard",
    accountReplicationType: "LRS"
});

// Export the connection string for the storage account
export const connectionString = account.primaryConnectionString;
