#!/bin/bash
# Copyright (c) 2021, Oracle and/or its affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

#read arguments from stdin
read parametersPath repoPath testbranchName

cat <<EOF > ${parametersPath}
{
    "\$schema": "https://schema.management.azure.com/schemas/2015-01-01/deploymentParameters.json#",
    "contentVersion": "1.0.0.0",
    "parameters": {
        "_artifactsLocation": {
            "value": "https://raw.githubusercontent.com/${repoPath}/${testbranchName}/weblogic-azure-vm/arm-oraclelinux-wls-admin/src/main/arm/"
        },
        "_artifactsLocationSasToken": {
            "value": ""
        },
        "adminPasswordOrKey": {
            "value": "GEN-UNIQUE"
        },
        "adminUsername": {
            "value": "GEN-UNIQUE"
        },
        "databaseType": {
            "value": "postgresql"
        },
        "dbPassword": {
            "value": "GEN-UNIQUE"
        },
        "dbUser": {
            "value": "GEN-UNIQUE"
        },
        "dsConnectionURL": {
            "value": "GEN-UNIQUE"
        },
        "enableAAD": {
            "value": false
        },
        "enableDB": {
            "value": true
        },
        "jdbcDataSourceName": {
            "value": "jdbc/postgresql"
        },
        "vmSizeSelect": {
            "value": "Standard_D2as_v4"
        },        
        "wlsPassword": {
            "value": "GEN-UNIQUE"
        },
        "wlsUserName": {
            "value": "GEN-UNIQUE"
        }
    }
}
EOF
