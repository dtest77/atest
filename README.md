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

