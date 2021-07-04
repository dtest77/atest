#!/bin/bash

export ORACLE_HOME=/u01/app/oracle/product/19.0.0/client
export TNS_ADMIN=$ORACLE_HOME/network/admin
export PATH=/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/home/oracle/.local/bin:/home/oracle/bin:$ORACLE_HOME/bin

sqlplus -s ANTEST/Ansibletest_77@tcps://adb.uk-london-1.oraclecloud.com:1522/gd25a7a2496af97_orcl_high.adb.oraclecloud.com?wallet_location=$TNS_ADMIN @/home/oracle/stage/create_test_tbl.sql

sqlplus -s ANTEST/Ansibletest_77@tcps://adb.uk-london-1.oraclecloud.com:1522/gd25a7a2496af97_orcl_high.adb.oraclecloud.com?wallet_location=$TNS_ADMIN @/home/oracle/stage/spool_first_100_rows.sql
