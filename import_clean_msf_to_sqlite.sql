
create table msf (
ROWID integer,
PERMNO integer,
DATE text,
NAMEENDT text,
SHRCD integer,
EXCHCD integer,
SICCD integer,
NCUSIP text,
TICKER text,
COMNAM text,
SHRCLS text,
TSYMBOL text,
NAICS text,
PRIMEXCH text,
TRDSTAT text,
SECSTAT text,
PERMCO integer,
ISSUNO integer,
HEXCD integer,
HSICCD integer,
CUSIP text,
DCLRDT text,
DLAMT real,
DLPDT text,
DLSTCD integer,
NEXTDT text,
PAYDT text,
RCRDDT text,
SHRFLG integer,
HSICMG integer,
HSICIG integer,
DISTCD integer,
DIVAMT real,
FACPR real,
FACSHR real,
ACPERM integer,
ACCOMP integer,
SHRENDDT text,
NWPERM integer,
DLRETX real,
DLPRC real,
DLRET real,
TRTSCD integer,
NMSIND real,
MMCNT real,
NSDINX real,
BIDLO real,
ASKHI real,
PRC real,
VOL real,
RET real,
BID real,
ASK real,
SHROUT real,
CFACPR real,
CFACSHR real,
ALTPRC real,
SPREAD real,
ALTPRCDT text,
RETX real,
vwretd real,
vwretx real,
ewretd real,
ewretx real,
sprtrn real);

.mode csv
.import /Users/ltakeuchi/Python/wrds_data/cleaned_msf.csv msf
select count(*) from msf;
delete from msf where permno='PERMNO';

CREATE INDEX permno_date_idx ON msf(PERMNO, DATE);



