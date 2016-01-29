OPTIONS (
skip=1,
errors=0,
direct=true,
multithreading=true 
)
LOAD DATA
INFILE 'ICUSTAYS.csv' "str '\n'"
BADFILE 'logfile.bad'
DISCARDFILE 'logfile.discard'
APPEND
INTO TABLE icustays
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"' AND '"'
TRAILING nullcols
(
ROW_ID, 
SUBJECT_ID,
HADM_ID,
ICUSTAY_ID,
DBSOURCE,
FIRST_CAREUNIT,
LAST_CAREUNIT,
FIRST_WARDID,
LAST_WARDID,
INTIME DATE "YYYY-MM-DD HH24:MI:SS",
OUTTIME DATE "YYYY-MM-DD HH24:MI:SS",
LOS
)