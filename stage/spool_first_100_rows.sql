set markup csv on delimiter , quote off
set heading off
set headsep off
set feedback off
set pagesize 0
set trimspool on
set linesize 200

spool /home/oracle/stage/gathered_data.csv

select id, descr, to_char(ref_date, 'YYYY.MM.DD HH24:MI:SS') from testtable fetch first 100 rows only;

spool off

exit
