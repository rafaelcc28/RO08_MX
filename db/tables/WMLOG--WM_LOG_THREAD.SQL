DROP TABLE WMLOG.WM_LOG_THREAD CASCADE CONSTRAINTS;

CREATE TABLE WMLOG.WM_LOG_THREAD
(
  THREAD_ID  NUMBER,
  PARENT_ID  NUMBER                             NOT NULL,
  NAME       VARCHAR2(100 BYTE),
  START_DT   DATE,
  END_DT     DATE,
  STATUS     VARCHAR2(1 BYTE),
  ATT1       VARCHAR2(500 BYTE),
  ATT2       VARCHAR2(500 BYTE),
  ATT3       VARCHAR2(500 BYTE),
  ATT4       VARCHAR2(500 BYTE),
  ATT5       VARCHAR2(500 BYTE),
  ATT6       NUMBER,
  ATT7       DATE,
  ATT8       DATE
)
TABLESPACE WMLOG_DATA
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          4M
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE;


CREATE UNIQUE INDEX WMLOG.PK_WM_LOG_THREAD ON WMLOG.WM_LOG_THREAD
(THREAD_ID)
LOGGING
TABLESPACE WMLOG_DATA
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          2M
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

ALTER TABLE WMLOG.WM_LOG_THREAD ADD (
  CONSTRAINT PK_WM_LOG_THREAD
  PRIMARY KEY
  (THREAD_ID)
  USING INDEX WMLOG.PK_WM_LOG_THREAD
  ENABLE VALIDATE);


CREATE INDEX WMLOG.IND_RO8WEB_2 ON WMLOG.WM_LOG_THREAD
(NAME)
LOGGING
TABLESPACE WMLOG_DATA
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          3M
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

CREATE INDEX WMLOG.IND_WM_LOG_THREAD_PARENT_ID ON WMLOG.WM_LOG_THREAD
(PARENT_ID)
LOGGING
TABLESPACE WMLOG_DATA
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          2M
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

CREATE OR REPLACE TRIGGER WMLOG.WM_LOG_THREAD_DUPS_TRG
BEFORE DELETE OR INSERT OR UPDATE
ON WMLOG.WM_LOG_THREAD 
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
DISABLE
DECLARE
/******************************************************************************
   NAME:       WM_LOG_THREAD_DUPS_TRG
   PURPOSE:    Bloquear ejecucion de Threads, para permitir solo una ejecucion
               Concurrente
   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        11/03/2013             1. Created this trigger.

   NOTES:
******************************************************************************/
BEGIN

   IF  INSERTING THEN
   
       IF :NEW.NAME IS NOT NULL 
           AND SUBSTR(:NEW.NAME,0,4)='RO8-' 
           AND :NEW.END_DT IS NULL 
       THEN
            --Agregar bloqueo de Thread por nommbre
           INSERT INTO WM_LOG_THREAD_LOCK(THREAD_ID,THREAD_NAME,STATUS)
             VALUES (:NEW.THREAD_ID,:NEW.NAME,:NEW.STATUS);
       END IF;
         
   END IF;
   
   IF  UPDATING THEN
        
        IF :OLD.NAME IS NOT NULL 
            AND SUBSTR(:OLD.NAME,0,4)='RO8-' 
            AND :OLD.END_DT IS NULL
            AND :NEW.END_DT IS NOT NULL-- Indicador de Fin de Thread 
        THEN
            --Eliminar bloqueo del Thread por nombre
            DELETE FROM WM_LOG_THREAD_LOCK WHERE THREAD_NAME=:OLD.NAME;
        END IF;
        
   END IF; 
        
   IF  DELETING THEN
      IF    :OLD.NAME IS NOT NULL 
            AND SUBSTR(:OLD.NAME,0,4)='RO8-'
            AND :OLD.END_DT IS NULL  
      THEN
            --Eliminar bloqueo del Thread por nombre
            DELETE FROM WM_LOG_THREAD_LOCK WHERE THREAD_NAME=:OLD.NAME;
      END IF;
   END IF;
    
EXCEPTION
 WHEN OTHERS THEN 
   RAISE;
END WM_LOG_THREAD_DUPS_TRG;
/


GRANT SELECT ON WMLOG.WM_LOG_THREAD TO WMVIEW;
