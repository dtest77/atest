CREATE TABLE TESTTABLE
(
  ID		NUMBER,
  DESCR		VARCHAR2(100 BYTE),
  REF_DATE	DATE
);


DECLARE

  i	NUMBER;

BEGIN

  FOR i IN 1..1000000
    LOOP

      INSERT INTO TESTTABLE (ID, DESCR, REF_DATE) VALUES (i, DBMS_RANDOM.string('A', DBMS_RANDOM.value(1, 50)), (sysdate + DBMS_RANDOM.value(-365, 366)));  

    END LOOP;

  COMMIT;

END;
/

exit
