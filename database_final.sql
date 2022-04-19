--------------------------------------------------------
--  File created - Tuesday-April-19-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence ADOPTION_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ILYES"."ADOPTION_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ANIMALS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ILYES"."ANIMALS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence BENEFICIAIRES_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ILYES"."BENEFICIAIRES_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence DONS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ILYES"."DONS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence EMPLOYE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ILYES"."EMPLOYE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence LIVRAISON_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ILYES"."LIVRAISON_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table ADOPTION
--------------------------------------------------------

  CREATE TABLE "ILYES"."ADOPTION" 
   (	"IDO" NUMBER, 
	"IDA" NUMBER, 
	"CIN" NUMBER, 
	"DATES" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table ANIMALS
--------------------------------------------------------

  CREATE TABLE "ILYES"."ANIMALS" 
   (	"IDA" NUMBER, 
	"NOM" VARCHAR2(80 BYTE), 
	"RACE" VARCHAR2(80 BYTE), 
	"ESPECE" VARCHAR2(80 BYTE), 
	"AGE" NUMBER, 
	"STATUS" NUMBER DEFAULT 1, 
	"DATE_ARR" DATE, 
	"IMAGE" BLOB
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" 
 LOB ("IMAGE") STORE AS BASICFILE (
  TABLESPACE "SYSTEM" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table BENEFICIAIRES
--------------------------------------------------------

  CREATE TABLE "ILYES"."BENEFICIAIRES" 
   (	"CIN" NUMBER, 
	"NOM" VARCHAR2(80 BYTE), 
	"PRENOM" VARCHAR2(80 BYTE), 
	"AGE" NUMBER, 
	"ADRESSE" VARCHAR2(200 BYTE), 
	"TYPE" VARCHAR2(80 BYTE), 
	"NUM" NUMBER, 
	"STATUS" NUMBER DEFAULT 1
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table DONS
--------------------------------------------------------

  CREATE TABLE "ILYES"."DONS" 
   (	"ID" NUMBER, 
	"NOM_DON" VARCHAR2(80 BYTE), 
	"ADRESSE" VARCHAR2(200 BYTE), 
	"EMAIL" VARCHAR2(80 BYTE), 
	"DATE_DON" DATE, 
	"MONTANT" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table EMPLOYE
--------------------------------------------------------

  CREATE TABLE "ILYES"."EMPLOYE" 
   (	"IDE" NUMBER, 
	"NOM" VARCHAR2(80 BYTE), 
	"PRENOM" VARCHAR2(80 BYTE), 
	"EMAIL" VARCHAR2(80 BYTE), 
	"LOGIN" VARCHAR2(80 BYTE), 
	"MDP" VARCHAR2(80 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table LIVRAISON
--------------------------------------------------------

  CREATE TABLE "ILYES"."LIVRAISON" 
   (	"IDL" NUMBER, 
	"DATEL" DATE, 
	"ADRESSE_DEP" VARCHAR2(200 BYTE), 
	"ADRESSE" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index BENEFICIAIRES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ILYES"."BENEFICIAIRES_PK" ON "ILYES"."BENEFICIAIRES" ("CIN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index TABLE1_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ILYES"."TABLE1_PK" ON "ILYES"."LIVRAISON" ("IDL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index DONS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ILYES"."DONS_PK" ON "ILYES"."DONS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index EMPLOYE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ILYES"."EMPLOYE_PK" ON "ILYES"."EMPLOYE" ("IDE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index ANIMALS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ILYES"."ANIMALS_PK" ON "ILYES"."ANIMALS" ("IDA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index BENEFICIAIRES_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "ILYES"."BENEFICIAIRES_UK1" ON "ILYES"."BENEFICIAIRES" ("ADRESSE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index ADOPTION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ILYES"."ADOPTION_PK" ON "ILYES"."ADOPTION" ("IDO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Trigger ADOPTION_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ILYES"."ADOPTION_TRG" 
BEFORE INSERT ON ADOPTION 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.IDO IS NULL THEN
      SELECT ADOPTION_SEQ.NEXTVAL INTO :NEW.IDO FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "ILYES"."ADOPTION_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger ANIMALS_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ILYES"."ANIMALS_TRG" 
BEFORE INSERT ON ANIMALS 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.IDA IS NULL THEN
      SELECT ANIMALS_SEQ.NEXTVAL INTO :NEW.IDA FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "ILYES"."ANIMALS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BENEFICIAIRES_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ILYES"."BENEFICIAIRES_TRG" 
BEFORE INSERT ON BENEFICIAIRES 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.CIN IS NULL THEN
      SELECT BENEFICIAIRES_SEQ.NEXTVAL INTO :NEW.CIN FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "ILYES"."BENEFICIAIRES_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger DONS_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ILYES"."DONS_TRG" 
BEFORE INSERT ON DONS 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.ID IS NULL THEN
      SELECT DONS_SEQ.NEXTVAL INTO :NEW.ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "ILYES"."DONS_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger EMPLOYE_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ILYES"."EMPLOYE_TRG" 
BEFORE INSERT ON EMPLOYE 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.IDE IS NULL THEN
      SELECT EMPLOYE_SEQ.NEXTVAL INTO :NEW.IDE FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "ILYES"."EMPLOYE_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger LIVRAISON_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ILYES"."LIVRAISON_TRG" 
BEFORE INSERT ON LIVRAISON 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.IDL IS NULL THEN
      SELECT LIVRAISON_SEQ.NEXTVAL INTO :NEW.IDL FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "ILYES"."LIVRAISON_TRG" ENABLE;
--------------------------------------------------------
--  Constraints for Table BENEFICIAIRES
--------------------------------------------------------

  ALTER TABLE "ILYES"."BENEFICIAIRES" MODIFY ("STATUS" NOT NULL ENABLE);
  ALTER TABLE "ILYES"."BENEFICIAIRES" ADD CONSTRAINT "BENEFICIAIRES_UK1" UNIQUE ("ADRESSE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ILYES"."BENEFICIAIRES" ADD CONSTRAINT "BENEFICIAIRES_PK" PRIMARY KEY ("CIN")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ILYES"."BENEFICIAIRES" MODIFY ("NUM" NOT NULL ENABLE);
  ALTER TABLE "ILYES"."BENEFICIAIRES" MODIFY ("TYPE" NOT NULL ENABLE);
  ALTER TABLE "ILYES"."BENEFICIAIRES" MODIFY ("ADRESSE" NOT NULL ENABLE);
  ALTER TABLE "ILYES"."BENEFICIAIRES" MODIFY ("AGE" NOT NULL ENABLE);
  ALTER TABLE "ILYES"."BENEFICIAIRES" MODIFY ("PRENOM" NOT NULL ENABLE);
  ALTER TABLE "ILYES"."BENEFICIAIRES" MODIFY ("NOM" NOT NULL ENABLE);
  ALTER TABLE "ILYES"."BENEFICIAIRES" MODIFY ("CIN" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DONS
--------------------------------------------------------

  ALTER TABLE "ILYES"."DONS" ADD CONSTRAINT "DONS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ILYES"."DONS" MODIFY ("MONTANT" NOT NULL ENABLE);
  ALTER TABLE "ILYES"."DONS" MODIFY ("DATE_DON" NOT NULL ENABLE);
  ALTER TABLE "ILYES"."DONS" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "ILYES"."DONS" MODIFY ("ADRESSE" NOT NULL ENABLE);
  ALTER TABLE "ILYES"."DONS" MODIFY ("NOM_DON" NOT NULL ENABLE);
  ALTER TABLE "ILYES"."DONS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ANIMALS
--------------------------------------------------------

  ALTER TABLE "ILYES"."ANIMALS" ADD CONSTRAINT "ANIMALS_PK" PRIMARY KEY ("IDA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ILYES"."ANIMALS" MODIFY ("DATE_ARR" NOT NULL ENABLE);
  ALTER TABLE "ILYES"."ANIMALS" MODIFY ("STATUS" NOT NULL ENABLE);
  ALTER TABLE "ILYES"."ANIMALS" MODIFY ("AGE" NOT NULL ENABLE);
  ALTER TABLE "ILYES"."ANIMALS" MODIFY ("ESPECE" NOT NULL ENABLE);
  ALTER TABLE "ILYES"."ANIMALS" MODIFY ("RACE" NOT NULL ENABLE);
  ALTER TABLE "ILYES"."ANIMALS" MODIFY ("NOM" NOT NULL ENABLE);
  ALTER TABLE "ILYES"."ANIMALS" MODIFY ("IDA" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table LIVRAISON
--------------------------------------------------------

  ALTER TABLE "ILYES"."LIVRAISON" ADD CONSTRAINT "TABLE1_PK" PRIMARY KEY ("IDL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ILYES"."LIVRAISON" MODIFY ("ADRESSE" NOT NULL ENABLE);
  ALTER TABLE "ILYES"."LIVRAISON" MODIFY ("ADRESSE_DEP" NOT NULL ENABLE);
  ALTER TABLE "ILYES"."LIVRAISON" MODIFY ("DATEL" NOT NULL ENABLE);
  ALTER TABLE "ILYES"."LIVRAISON" MODIFY ("IDL" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EMPLOYE
--------------------------------------------------------

  ALTER TABLE "ILYES"."EMPLOYE" ADD CONSTRAINT "EMPLOYE_PK" PRIMARY KEY ("IDE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ILYES"."EMPLOYE" MODIFY ("MDP" NOT NULL ENABLE);
  ALTER TABLE "ILYES"."EMPLOYE" MODIFY ("LOGIN" NOT NULL ENABLE);
  ALTER TABLE "ILYES"."EMPLOYE" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "ILYES"."EMPLOYE" MODIFY ("PRENOM" NOT NULL ENABLE);
  ALTER TABLE "ILYES"."EMPLOYE" MODIFY ("NOM" NOT NULL ENABLE);
  ALTER TABLE "ILYES"."EMPLOYE" MODIFY ("IDE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ADOPTION
--------------------------------------------------------

  ALTER TABLE "ILYES"."ADOPTION" ADD CONSTRAINT "ADOPTION_PK" PRIMARY KEY ("IDO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "ILYES"."ADOPTION" MODIFY ("DATES" NOT NULL ENABLE);
  ALTER TABLE "ILYES"."ADOPTION" MODIFY ("CIN" NOT NULL ENABLE);
  ALTER TABLE "ILYES"."ADOPTION" MODIFY ("IDA" NOT NULL ENABLE);
  ALTER TABLE "ILYES"."ADOPTION" MODIFY ("IDO" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table ADOPTION
--------------------------------------------------------

  ALTER TABLE "ILYES"."ADOPTION" ADD CONSTRAINT "ADOPTION_FK1" FOREIGN KEY ("IDA")
	  REFERENCES "ILYES"."ANIMALS" ("IDA") ON DELETE CASCADE ENABLE;
  ALTER TABLE "ILYES"."ADOPTION" ADD CONSTRAINT "ADOPTION_FK2" FOREIGN KEY ("CIN")
	  REFERENCES "ILYES"."BENEFICIAIRES" ("CIN") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table LIVRAISON
--------------------------------------------------------

  ALTER TABLE "ILYES"."LIVRAISON" ADD CONSTRAINT "LIVRAISON_FK1" FOREIGN KEY ("ADRESSE")
	  REFERENCES "ILYES"."BENEFICIAIRES" ("ADRESSE") ON DELETE CASCADE ENABLE;