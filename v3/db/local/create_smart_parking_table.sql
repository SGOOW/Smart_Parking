--------------------------------------------------------
--  DDL for Table SMART_PARKING
--------------------------------------------------------

  CREATE TABLE "GSMUSER"."SMART_PARKING" 
   (	"ROW_ID" NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"CARPARK_ID" VARCHAR2(20 BYTE), 
	"CREATED_DATE_TIME" TIMESTAMP (6), 
	"TOTAL_SLOTS" NUMBER, 
	"AVAILABLE_SLOTS" NUMBER, 
	"CARPARK_STATUS" VARCHAR2(4000 BYTE), 
	"MODIFIED_DATE_TIME" TIMESTAMP (6), 
	"CARPARK_IMAGE" BLOB, 
	"PRECISE_COUNTER" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 LOB ("CARPARK_IMAGE") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 106496 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  Constraints for Table SMART_PARKING
--------------------------------------------------------

  ALTER TABLE "GSMUSER"."SMART_PARKING" MODIFY ("ROW_ID" NOT NULL ENABLE);
