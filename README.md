# Ansible test

Use Ansible:
 * to install database client on "app server"
 * to create table, generate sample data in database
 * to execute code to retrieve subset (first 100 rows) of generated data from database thought "app-server" in CVS format
 * store gathered data on ansible server file /tmp/gathered_data.csv
 
Information about table and generated sample data:
 * at least 3 columns: type of number, date, character (size 100 bytes)
 * data volume one million rows

**Setup:**
 * Ansible control server Linux (redhat 7.6)
 * App server Linux (oracle 7.7)
 * Oracle Autonomous Database 19c

## 1. Prepare

* download "stage" folder to the ansible control server /tmp
* download Oracle Client LINUX.X64_193000_client_home.zip to the ansible control server /tmp
* configure an Ansible host file -> add App server to [webservers]

## 2. Run the playbook to install Oracle Client

On Ansible control server run install_oc.yaml

## 3. Run the playbook to create the sample table and gather the data

On Ansible control server run ora_scripts.yaml

## 4. Save the gathered data

copy the file /tmp/gathered_data.csv from Ansible control server to "result" folder


