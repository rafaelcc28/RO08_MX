DROP TABLE GL.GL_INTERFACE CASCADE CONSTRAINTS;

CREATE TABLE GL.GL_INTERFACE
(
  STATUS                         VARCHAR2(50 BYTE) NOT NULL,
  LEDGER_ID                      NUMBER(15)     DEFAULT -1,
  ACCOUNTING_DATE                DATE           NOT NULL,
  CURRENCY_CODE                  VARCHAR2(15 BYTE) NOT NULL,
  DATE_CREATED                   DATE           NOT NULL,
  CREATED_BY                     NUMBER(15)     NOT NULL,
  ACTUAL_FLAG                    VARCHAR2(1 BYTE) NOT NULL,
  USER_JE_CATEGORY_NAME          VARCHAR2(25 BYTE) NOT NULL,
  USER_JE_SOURCE_NAME            VARCHAR2(25 BYTE) NOT NULL,
  CURRENCY_CONVERSION_DATE       DATE,
  ENCUMBRANCE_TYPE_ID            NUMBER,
  BUDGET_VERSION_ID              NUMBER,
  USER_CURRENCY_CONVERSION_TYPE  VARCHAR2(30 BYTE),
  CURRENCY_CONVERSION_RATE       NUMBER,
  AVERAGE_JOURNAL_FLAG           VARCHAR2(1 BYTE),
  ORIGINATING_BAL_SEG_VALUE      VARCHAR2(25 BYTE),
  SEGMENT1                       VARCHAR2(25 BYTE),
  SEGMENT2                       VARCHAR2(25 BYTE),
  SEGMENT3                       VARCHAR2(25 BYTE),
  SEGMENT4                       VARCHAR2(25 BYTE),
  SEGMENT5                       VARCHAR2(25 BYTE),
  SEGMENT6                       VARCHAR2(25 BYTE),
  SEGMENT7                       VARCHAR2(25 BYTE),
  SEGMENT8                       VARCHAR2(25 BYTE),
  SEGMENT9                       VARCHAR2(25 BYTE),
  SEGMENT10                      VARCHAR2(25 BYTE),
  SEGMENT11                      VARCHAR2(25 BYTE),
  SEGMENT12                      VARCHAR2(25 BYTE),
  SEGMENT13                      VARCHAR2(25 BYTE),
  SEGMENT14                      VARCHAR2(25 BYTE),
  SEGMENT15                      VARCHAR2(25 BYTE),
  SEGMENT16                      VARCHAR2(25 BYTE),
  SEGMENT17                      VARCHAR2(25 BYTE),
  SEGMENT18                      VARCHAR2(25 BYTE),
  SEGMENT19                      VARCHAR2(25 BYTE),
  SEGMENT20                      VARCHAR2(25 BYTE),
  SEGMENT21                      VARCHAR2(25 BYTE),
  SEGMENT22                      VARCHAR2(25 BYTE),
  SEGMENT23                      VARCHAR2(25 BYTE),
  SEGMENT24                      VARCHAR2(25 BYTE),
  SEGMENT25                      VARCHAR2(25 BYTE),
  SEGMENT26                      VARCHAR2(25 BYTE),
  SEGMENT27                      VARCHAR2(25 BYTE),
  SEGMENT28                      VARCHAR2(25 BYTE),
  SEGMENT29                      VARCHAR2(25 BYTE),
  SEGMENT30                      VARCHAR2(25 BYTE),
  ENTERED_DR                     NUMBER,
  ENTERED_CR                     NUMBER,
  ACCOUNTED_DR                   NUMBER,
  ACCOUNTED_CR                   NUMBER,
  TRANSACTION_DATE               DATE,
  REFERENCE1                     VARCHAR2(100 BYTE),
  REFERENCE2                     VARCHAR2(240 BYTE),
  REFERENCE3                     VARCHAR2(100 BYTE),
  REFERENCE4                     VARCHAR2(100 BYTE),
  REFERENCE5                     VARCHAR2(240 BYTE),
  REFERENCE6                     VARCHAR2(100 BYTE),
  REFERENCE7                     VARCHAR2(100 BYTE),
  REFERENCE8                     VARCHAR2(100 BYTE),
  REFERENCE9                     VARCHAR2(100 BYTE),
  REFERENCE10                    VARCHAR2(240 BYTE),
  REFERENCE11                    VARCHAR2(240 BYTE),
  REFERENCE12                    VARCHAR2(100 BYTE),
  REFERENCE13                    VARCHAR2(100 BYTE),
  REFERENCE14                    VARCHAR2(100 BYTE),
  REFERENCE15                    VARCHAR2(100 BYTE),
  REFERENCE16                    VARCHAR2(100 BYTE),
  REFERENCE17                    VARCHAR2(100 BYTE),
  REFERENCE18                    VARCHAR2(100 BYTE),
  REFERENCE19                    VARCHAR2(100 BYTE),
  REFERENCE20                    VARCHAR2(100 BYTE),
  REFERENCE21                    VARCHAR2(240 BYTE),
  REFERENCE22                    VARCHAR2(240 BYTE),
  REFERENCE23                    VARCHAR2(240 BYTE),
  REFERENCE24                    VARCHAR2(240 BYTE),
  REFERENCE25                    VARCHAR2(240 BYTE),
  REFERENCE26                    VARCHAR2(240 BYTE),
  REFERENCE27                    VARCHAR2(240 BYTE),
  REFERENCE28                    VARCHAR2(240 BYTE),
  REFERENCE29                    VARCHAR2(240 BYTE),
  REFERENCE30                    VARCHAR2(240 BYTE),
  JE_BATCH_ID                    NUMBER(15),
  PERIOD_NAME                    VARCHAR2(15 BYTE),
  JE_HEADER_ID                   NUMBER(15),
  JE_LINE_NUM                    NUMBER(15),
  CHART_OF_ACCOUNTS_ID           NUMBER(15),
  FUNCTIONAL_CURRENCY_CODE       VARCHAR2(15 BYTE),
  CODE_COMBINATION_ID            NUMBER(15),
  DATE_CREATED_IN_GL             DATE,
  WARNING_CODE                   VARCHAR2(4 BYTE),
  STATUS_DESCRIPTION             VARCHAR2(240 BYTE),
  STAT_AMOUNT                    NUMBER,
  GROUP_ID                       NUMBER(15),
  REQUEST_ID                     NUMBER(15),
  SUBLEDGER_DOC_SEQUENCE_ID      NUMBER,
  SUBLEDGER_DOC_SEQUENCE_VALUE   NUMBER,
  ATTRIBUTE1                     VARCHAR2(150 BYTE),
  ATTRIBUTE2                     VARCHAR2(150 BYTE),
  GL_SL_LINK_ID                  NUMBER,
  GL_SL_LINK_TABLE               VARCHAR2(30 BYTE),
  ATTRIBUTE3                     VARCHAR2(150 BYTE),
  ATTRIBUTE4                     VARCHAR2(150 BYTE),
  ATTRIBUTE5                     VARCHAR2(150 BYTE),
  ATTRIBUTE6                     VARCHAR2(150 BYTE),
  ATTRIBUTE7                     VARCHAR2(150 BYTE),
  ATTRIBUTE8                     VARCHAR2(150 BYTE),
  ATTRIBUTE9                     VARCHAR2(150 BYTE),
  ATTRIBUTE10                    VARCHAR2(150 BYTE),
  ATTRIBUTE11                    VARCHAR2(150 BYTE),
  ATTRIBUTE12                    VARCHAR2(150 BYTE),
  ATTRIBUTE13                    VARCHAR2(150 BYTE),
  ATTRIBUTE14                    VARCHAR2(150 BYTE),
  ATTRIBUTE15                    VARCHAR2(150 BYTE),
  ATTRIBUTE16                    VARCHAR2(150 BYTE),
  ATTRIBUTE17                    VARCHAR2(150 BYTE),
  ATTRIBUTE18                    VARCHAR2(150 BYTE),
  ATTRIBUTE19                    VARCHAR2(150 BYTE),
  ATTRIBUTE20                    VARCHAR2(150 BYTE),
  CONTEXT                        VARCHAR2(150 BYTE),
  CONTEXT2                       VARCHAR2(150 BYTE),
  INVOICE_DATE                   DATE,
  TAX_CODE                       VARCHAR2(15 BYTE),
  INVOICE_IDENTIFIER             VARCHAR2(20 BYTE),
  INVOICE_AMOUNT                 NUMBER,
  CONTEXT3                       VARCHAR2(150 BYTE),
  USSGL_TRANSACTION_CODE         VARCHAR2(30 BYTE),
  DESCR_FLEX_ERROR_MESSAGE       VARCHAR2(240 BYTE),
  JGZZ_RECON_REF                 VARCHAR2(240 BYTE),
  REFERENCE_DATE                 DATE,
  SET_OF_BOOKS_ID                NUMBER(15)     DEFAULT -1,
  BALANCING_SEGMENT_VALUE        VARCHAR2(25 BYTE),
  MANAGEMENT_SEGMENT_VALUE       VARCHAR2(25 BYTE),
  FUNDS_RESERVED_FLAG            VARCHAR2(1 BYTE),
  CODE_COMBINATION_ID_INTERIM    NUMBER(15)
)
TABLESPACE APPS_TS_INTERFACE
PCTFREE    10
INITRANS   200
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE;


CREATE INDEX GL.GL_INTERFACE_CAT ON GL.GL_INTERFACE
(SEGMENT3, SEGMENT5, SEGMENT4, SEGMENT2, SEGMENT1, 
SEGMENT7)
LOGGING
TABLESPACE APPS_TS_TX_IDX
PCTFREE    10
INITRANS   200
MAXTRANS   255
STORAGE    (
            INITIAL          1M
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

CREATE INDEX GL.GL_INTERFACE_CAT1 ON GL.GL_INTERFACE
(SEGMENT1)
LOGGING
TABLESPACE APPS_TS_TX_IDX
PCTFREE    10
INITRANS   200
MAXTRANS   255
STORAGE    (
            INITIAL          1M
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

CREATE INDEX GL.GL_INTERFACE_CAT2 ON GL.GL_INTERFACE
(SEGMENT2)
LOGGING
TABLESPACE APPS_TS_TX_IDX
PCTFREE    10
INITRANS   200
MAXTRANS   255
STORAGE    (
            INITIAL          1M
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

CREATE INDEX GL.GL_INTERFACE_CAT4 ON GL.GL_INTERFACE
(SEGMENT4)
LOGGING
TABLESPACE APPS_TS_TX_IDX
PCTFREE    10
INITRANS   200
MAXTRANS   255
STORAGE    (
            INITIAL          1M
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

CREATE INDEX GL.GL_INTERFACE_CAT5 ON GL.GL_INTERFACE
(SEGMENT5)
LOGGING
TABLESPACE APPS_TS_TX_IDX
PCTFREE    10
INITRANS   200
MAXTRANS   255
STORAGE    (
            INITIAL          1M
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

CREATE INDEX GL.GL_INTERFACE_N1 ON GL.GL_INTERFACE
(USER_JE_SOURCE_NAME, LEDGER_ID, SET_OF_BOOKS_ID, GROUP_ID)
LOGGING
TABLESPACE APPS_TS_INTERFACE
PCTFREE    0
INITRANS   200
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

CREATE INDEX GL.GL_INTERFACE_N2 ON GL.GL_INTERFACE
(REQUEST_ID, JE_HEADER_ID, STATUS, CODE_COMBINATION_ID)
LOGGING
TABLESPACE APPS_TS_INTERFACE
PCTFREE    0
INITRANS   200
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

CREATE INDEX GL.GL_INTERFACE_N3 ON GL.GL_INTERFACE
(SUBLEDGER_DOC_SEQUENCE_VALUE, SUBLEDGER_DOC_SEQUENCE_ID)
LOGGING
TABLESPACE APPS_TS_INTERFACE
PCTFREE    10
INITRANS   200
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

CREATE INDEX GL.GL_INTERFACE_N4 ON GL.GL_INTERFACE
(REFERENCE26, REFERENCE22, REFERENCE23)
LOGGING
TABLESPACE APPS_TS_INTERFACE
PCTFREE    10
INITRANS   200
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

CREATE INDEX GL.GL_INTERFACE_S6 ON GL.GL_INTERFACE
(REFERENCE6)
NOLOGGING
TABLESPACE APPS_TS_INTERFACE
PCTFREE    10
INITRANS   200
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

CREATE INDEX XXFC.GL_INTERFACE_XX1 ON GL.GL_INTERFACE
(USER_JE_SOURCE_NAME, REFERENCE6)
LOGGING
TABLESPACE APPS_TS_TX_IDX
PCTFREE    10
INITRANS   200
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

CREATE INDEX XXFC.IDX_INTERFACE_N21 ON GL.GL_INTERFACE
(REFERENCE21)
LOGGING
TABLESPACE APPS_TS_INTERFACE
PCTFREE    10
INITRANS   200
MAXTRANS   255
STORAGE    (
            INITIAL          128M
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

CREATE INDEX XXFC.XXFC_GL_INT_N1 ON GL.GL_INTERFACE
(STATUS, GROUP_ID, CODE_COMBINATION_ID_INTERIM, USER_JE_SOURCE_NAME)
NOLOGGING
TABLESPACE APPS_TS_INTERFACE
PCTFREE    10
INITRANS   200
MAXTRANS   255
STORAGE    (
            INITIAL          128M
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

CREATE INDEX XXFC.XXFC_GL_INT_PD_NE1 ON GL.GL_INTERFACE
(PERIOD_NAME)
NOLOGGING
TABLESPACE APPS_TS_INTERFACE
PCTFREE    10
INITRANS   200
MAXTRANS   255
STORAGE    (
            INITIAL          128M
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

CREATE INDEX GL.XXFC_GL_INTERFACE_N6 ON GL.GL_INTERFACE
(GROUP_ID, STATUS, USER_JE_SOURCE_NAME, LEDGER_ID)
NOLOGGING
TABLESPACE APPS_TS_INTERFACE
PCTFREE    10
INITRANS   200
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

CREATE INDEX GL.XXGL_INTERFACE_DATE_N1 ON GL.GL_INTERFACE
(DATE_CREATED)
LOGGING
TABLESPACE APPS_TS_TX_IDX
PCTFREE    10
INITRANS   200
MAXTRANS   255
STORAGE    (
            INITIAL          128K
            NEXT             128K
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           );

CREATE OR REPLACE TRIGGER APPS.GL_INTERFACE_MONITOR_TRG
AFTER INSERT
ON GL.GL_INTERFACE
REFERENCING NEW AS New OLD AS Old
FOR EACH ROW
DISABLE
WHEN (
NEW.USER_JE_SOURCE_NAME='Retek' OR NEW.USER_JE_SOURCE_NAME='POS'
      )
BEGIN
   IF (:NEW.USER_JE_SOURCE_NAME='Retek' OR :NEW.USER_JE_SOURCE_NAME='POS') THEN
      INSERT INTO apps.GL_INTERFACE_MONITOR_PART2 /* cho 52064166 Francisco Ruiz Se modifca esquema XXFC */
        (status,
         ledger_id,
         accounting_date,
         date_created,
         created_by,
         actual_flag,
         user_je_category_name,
         user_je_source_name,
         code_combination_id,
         segment1,
         segment2,
         segment3,
         segment4,
         segment5,
         segment6,
         segment7,
         entered_dr,
         entered_cr,
         accounted_dr,
         accounted_cr,
         group_id,
         reference1,
         reference4,
         reference6)
      VALUES
        (:NEW.status,
         :NEW.ledger_id,
         :NEW.accounting_date,
         :NEW.date_created,
         :NEW.created_by,
         :NEW.actual_flag,
         :NEW.user_je_category_name,
         :NEW.user_je_source_name,
         :NEW.code_combination_id,
         :NEW.segment1,
         :NEW.segment2,
         :NEW.segment3,
         :NEW.segment4,
         :NEW.segment5,
         :NEW.segment6,
         :NEW.segment7,
         :NEW.entered_dr,
         :NEW.entered_cr,
         :NEW.accounted_dr,
         :NEW.accounted_cr,
         :NEW.group_id,
         :NEW.reference1,
         :NEW.reference4,
         :NEW.reference6);
   END IF;
EXCEPTION
  WHEN OTHERS THEN
     NULL;
END GL_INTERFACE_MONITOR_TRG;
/


CREATE OR REPLACE TRIGGER XXFC.XXFC_GL_INTER_AIUD_BI
--REFERENCING NEW AS NEW OLD AS OLD
   BEFORE INSERT OR UPDATE OR DELETE
   ON GL.GL_INTERFACE
   FOR EACH ROW
DISABLE
WHEN ( (NEW.USER_JE_SOURCE_NAME = 'POS'
           AND NEW.USER_JE_CATEGORY_NAME = 'Forma de Pago')
         OR (OLD.USER_JE_SOURCE_NAME = 'POS'
             AND OLD.USER_JE_CATEGORY_NAME = 'Forma de Pago'))
DECLARE
   lv_StatementType   VARCHAR2 (3);
BEGIN
   IF INSERTING
   THEN
      lv_StatementType := 'INS';
   END IF;

   IF UPDATING
   THEN
      lv_StatementType := 'UPD';
   END IF;

   IF DELETING
   THEN
      lv_StatementType := 'DEL';
   END IF;

   IF ( (:NEW.USER_JE_SOURCE_NAME = 'POS'
         AND :NEW.USER_JE_CATEGORY_NAME = 'Forma de Pago')
       OR (:OLD.USER_JE_SOURCE_NAME = 'POS'
           AND :OLD.USER_JE_CATEGORY_NAME = 'Forma de Pago'))
   THEN
      INSERT INTO XXFC_GL_INTERFACE_BITACORA (STATUS_old,
                                              STATUS_new,
                                              LEDGER_ID_old,
                                              LEDGER_ID_new,
                                              ACCOUNTING_DATE_old,
                                              ACCOUNTING_DATE_new,
                                              CURRENCY_CODE_old,
                                              CURRENCY_CODE_new,
                                              DATE_CREATED_old,
                                              DATE_CREATED_new,
                                              CREATED_BY_old,
                                              CREATED_BY_new,
                                              ACTUAL_FLAG_old,
                                              ACTUAL_FLAG_new,
                                              USER_JE_CATEGORY_NAME_old,
                                              USER_JE_CATEGORY_NAME_new,
                                              USER_JE_SOURCE_NAME_old,
                                              USER_JE_SOURCE_NAME_new,
                                              CURRENCY_CONVERSION_DATE_old,
                                              CURRENCY_CONVERSION_DATE_new,
                                              ENCUMBRANCE_TYPE_ID_old,
                                              ENCUMBRANCE_TYPE_ID_new,
                                              BUDGET_VERSION_ID_old,
                                              BUDGET_VERSION_ID_new,
                                              USER_CURRENCY_CONVER_TYPE_old,
                                              USER_CURRENCY_CONVER_TYPE_new,
                                              CURRENCY_CONVERSION_RATE_old,
                                              CURRENCY_CONVERSION_RATE_new,
                                              AVERAGE_JOURNAL_FLAG_old,
                                              AVERAGE_JOURNAL_FLAG_new,
                                              ORIGINATING_BAL_SEG_VALUE_old,
                                              ORIGINATING_BAL_SEG_VALUE_new,
                                              SEGMENT1_old,
                                              SEGMENT1_new,
                                              SEGMENT2_old,
                                              SEGMENT2_new,
                                              SEGMENT3_old,
                                              SEGMENT3_new,
                                              SEGMENT4_old,
                                              SEGMENT4_new,
                                              SEGMENT5_old,
                                              SEGMENT5_new,
                                              SEGMENT6_old,
                                              SEGMENT6_new,
                                              SEGMENT7_old,
                                              SEGMENT7_new,
                                              SEGMENT8_old,
                                              SEGMENT8_new,
                                              SEGMENT9_old,
                                              SEGMENT9_new,
                                              SEGMENT10_old,
                                              SEGMENT10_new,
                                              SEGMENT11_old,
                                              SEGMENT11_new,
                                              SEGMENT12_old,
                                              SEGMENT12_new,
                                              SEGMENT13_old,
                                              SEGMENT13_new,
                                              SEGMENT14_old,
                                              SEGMENT14_new,
                                              SEGMENT15_old,
                                              SEGMENT15_new,
                                              SEGMENT16_old,
                                              SEGMENT16_new,
                                              SEGMENT17_old,
                                              SEGMENT17_new,
                                              SEGMENT18_old,
                                              SEGMENT18_new,
                                              SEGMENT19_old,
                                              SEGMENT19_new,
                                              SEGMENT20_old,
                                              SEGMENT20_new,
                                              SEGMENT21_old,
                                              SEGMENT21_new,
                                              SEGMENT22_old,
                                              SEGMENT22_new,
                                              SEGMENT23_old,
                                              SEGMENT23_new,
                                              SEGMENT24_old,
                                              SEGMENT24_new,
                                              SEGMENT25_old,
                                              SEGMENT25_new,
                                              SEGMENT26_old,
                                              SEGMENT26_new,
                                              SEGMENT27_old,
                                              SEGMENT27_new,
                                              SEGMENT28_old,
                                              SEGMENT28_new,
                                              SEGMENT29_old,
                                              SEGMENT29_new,
                                              SEGMENT30_old,
                                              SEGMENT30_new,
                                              ENTERED_DR_old,
                                              ENTERED_DR_new,
                                              ENTERED_CR_old,
                                              ENTERED_CR_new,
                                              ACCOUNTED_DR_old,
                                              ACCOUNTED_DR_new,
                                              ACCOUNTED_CR_old,
                                              ACCOUNTED_CR_new,
                                              TRANSACTION_DATE_old,
                                              TRANSACTION_DATE_new,
                                              REFERENCE1_old,
                                              REFERENCE1_new,
                                              REFERENCE2_old,
                                              REFERENCE2_new,
                                              REFERENCE3_old,
                                              REFERENCE3_new,
                                              REFERENCE4_old,
                                              REFERENCE4_new,
                                              REFERENCE5_old,
                                              REFERENCE5_new,
                                              REFERENCE6_old,
                                              REFERENCE6_new,
                                              REFERENCE7_old,
                                              REFERENCE7_new,
                                              REFERENCE8_old,
                                              REFERENCE8_new,
                                              REFERENCE9_old,
                                              REFERENCE9_new,
                                              REFERENCE10_old,
                                              REFERENCE10_new,
                                              REFERENCE11_old,
                                              REFERENCE11_new,
                                              REFERENCE12_old,
                                              REFERENCE12_new,
                                              REFERENCE13_old,
                                              REFERENCE13_new,
                                              REFERENCE14_old,
                                              REFERENCE14_new,
                                              REFERENCE15_old,
                                              REFERENCE15_new,
                                              REFERENCE16_old,
                                              REFERENCE16_new,
                                              REFERENCE17_old,
                                              REFERENCE17_new,
                                              REFERENCE18_old,
                                              REFERENCE18_new,
                                              REFERENCE19_old,
                                              REFERENCE19_new,
                                              REFERENCE20_old,
                                              REFERENCE20_new,
                                              REFERENCE21_old,
                                              REFERENCE21_new,
                                              REFERENCE22_old,
                                              REFERENCE22_new,
                                              REFERENCE23_old,
                                              REFERENCE23_new,
                                              REFERENCE24_old,
                                              REFERENCE24_new,
                                              REFERENCE25_old,
                                              REFERENCE25_new,
                                              REFERENCE26_old,
                                              REFERENCE26_new,
                                              REFERENCE27_old,
                                              REFERENCE27_new,
                                              REFERENCE28_old,
                                              REFERENCE28_new,
                                              REFERENCE29_old,
                                              REFERENCE29_new,
                                              REFERENCE30_old,
                                              REFERENCE30_new,
                                              JE_BATCH_ID_old,
                                              JE_BATCH_ID_new,
                                              PERIOD_NAME_old,
                                              PERIOD_NAME_new,
                                              JE_HEADER_ID_old,
                                              JE_HEADER_ID_new,
                                              JE_LINE_NUM_old,
                                              JE_LINE_NUM_new,
                                              CHART_OF_ACCOUNTS_ID_old,
                                              CHART_OF_ACCOUNTS_ID_new,
                                              FUNCTIONAL_CURRENCY_CODE_old,
                                              FUNCTIONAL_CURRENCY_CODE_new,
                                              CODE_COMBINATION_ID_old,
                                              CODE_COMBINATION_ID_new,
                                              DATE_CREATED_IN_GL_old,
                                              DATE_CREATED_IN_GL_new,
                                              WARNING_CODE_old,
                                              WARNING_CODE_new,
                                              STATUS_DESCRIPTION_old,
                                              STATUS_DESCRIPTION_new,
                                              STAT_AMOUNT_old,
                                              STAT_AMOUNT_new,
                                              GROUP_ID_old,
                                              GROUP_ID_new,
                                              REQUEST_ID_old,
                                              REQUEST_ID_new,
                                              SUBLEDGER_DOC_SEQ_ID_old,
                                              SUBLEDGER_DOC_SEQ_ID_new,
                                              SUBLEDGER_DOC_SEQ_VALUE_old,
                                              SUBLEDGER_DOC_SEQ_VALUE_new,
                                              ATTRIBUTE1_old,
                                              ATTRIBUTE1_new,
                                              ATTRIBUTE2_old,
                                              ATTRIBUTE2_new,
                                              GL_SL_LINK_ID_old,
                                              GL_SL_LINK_ID_new,
                                              GL_SL_LINK_TABLE_old,
                                              GL_SL_LINK_TABLE_new,
                                              ATTRIBUTE3_old,
                                              ATTRIBUTE3_new,
                                              ATTRIBUTE4_old,
                                              ATTRIBUTE4_new,
                                              ATTRIBUTE5_old,
                                              ATTRIBUTE5_new,
                                              ATTRIBUTE6_old,
                                              ATTRIBUTE6_new,
                                              ATTRIBUTE7_old,
                                              ATTRIBUTE7_new,
                                              ATTRIBUTE8_old,
                                              ATTRIBUTE8_new,
                                              ATTRIBUTE9_old,
                                              ATTRIBUTE9_new,
                                              ATTRIBUTE10_old,
                                              ATTRIBUTE10_new,
                                              ATTRIBUTE11_old,
                                              ATTRIBUTE11_new,
                                              ATTRIBUTE12_old,
                                              ATTRIBUTE12_new,
                                              ATTRIBUTE13_old,
                                              ATTRIBUTE13_new,
                                              ATTRIBUTE14_old,
                                              ATTRIBUTE14_new,
                                              ATTRIBUTE15_old,
                                              ATTRIBUTE15_new,
                                              ATTRIBUTE16_old,
                                              ATTRIBUTE16_new,
                                              ATTRIBUTE17_old,
                                              ATTRIBUTE17_new,
                                              ATTRIBUTE18_old,
                                              ATTRIBUTE18_new,
                                              ATTRIBUTE19_old,
                                              ATTRIBUTE19_new,
                                              ATTRIBUTE20_old,
                                              ATTRIBUTE20_new,
                                              CONTEXT_old,
                                              CONTEXT_new,
                                              CONTEXT2_old,
                                              CONTEXT2_new,
                                              INVOICE_DATE_old,
                                              INVOICE_DATE_new,
                                              TAX_CODE_old,
                                              TAX_CODE_new,
                                              INVOICE_IDENTIFIER_old,
                                              INVOICE_IDENTIFIER_new,
                                              INVOICE_AMOUNT_old,
                                              INVOICE_AMOUNT_new,
                                              CONTEXT3_old,
                                              CONTEXT3_new,
                                              USSGL_TRANSACTION_CODE_old,
                                              USSGL_TRANSACTION_CODE_new,
                                              DESCR_FLEX_ERROR_MESSAGE_old,
                                              DESCR_FLEX_ERROR_MESSAGE_new,
                                              JGZZ_RECON_REF_old,
                                              JGZZ_RECON_REF_new,
                                              REFERENCE_DATE_old,
                                              REFERENCE_DATE_new,
                                              SET_OF_BOOKS_ID_old,
                                              SET_OF_BOOKS_ID_new,
                                              BALANCING_SEGMENT_VALUE_old,
                                              BALANCING_SEGMENT_VALUE_new,
                                              MANAGEMENT_SEGMENT_VALUE_old,
                                              MANAGEMENT_SEGMENT_VALUE_new,
                                              FUNDS_RESERVED_FLAG_old,
                                              FUNDS_RESERVED_FLAG_new,
                                              CODE_COMBINATION_ID_INTER_old,
                                              CODE_COMBINATION_ID_INTER_new,
                                              --,
                                              SESSIONID,
                                              USERSESSIONID,
                                              SID,
                                              MODULE,
                                              USERNAME,
                                              OSUSER,
                                              TERMINAL,
                                              CREATION_DATE,
                                              CREATION_BY,
                                              STATEMENT_TYPE,
                                              CLIENT_IDEN)
         SELECT :OLD.STATUS,
                :NEW.STATUS,
                :OLD.LEDGER_ID,
                :NEW.LEDGER_ID,
                :OLD.ACCOUNTING_DATE,
                :NEW.ACCOUNTING_DATE,
                :OLD.CURRENCY_CODE,
                :NEW.CURRENCY_CODE,
                :OLD.DATE_CREATED,
                :NEW.DATE_CREATED,
                :OLD.CREATED_BY,
                :NEW.CREATED_BY,
                :OLD.ACTUAL_FLAG,
                :NEW.ACTUAL_FLAG,
                :OLD.USER_JE_CATEGORY_NAME,
                :NEW.USER_JE_CATEGORY_NAME,
                :OLD.USER_JE_SOURCE_NAME,
                :NEW.USER_JE_SOURCE_NAME,
                :OLD.CURRENCY_CONVERSION_DATE,
                :NEW.CURRENCY_CONVERSION_DATE,
                :OLD.ENCUMBRANCE_TYPE_ID,
                :NEW.ENCUMBRANCE_TYPE_ID,
                :OLD.BUDGET_VERSION_ID,
                :NEW.BUDGET_VERSION_ID,
                :OLD.USER_CURRENCY_CONVERSION_TYPE,
                :NEW.USER_CURRENCY_CONVERSION_TYPE,
                :OLD.CURRENCY_CONVERSION_RATE,
                :NEW.CURRENCY_CONVERSION_RATE,
                :OLD.AVERAGE_JOURNAL_FLAG,
                :NEW.AVERAGE_JOURNAL_FLAG,
                :OLD.ORIGINATING_BAL_SEG_VALUE,
                :NEW.ORIGINATING_BAL_SEG_VALUE,
                :OLD.SEGMENT1,
                :NEW.SEGMENT1,
                :OLD.SEGMENT2,
                :NEW.SEGMENT2,
                :OLD.SEGMENT3,
                :NEW.SEGMENT3,
                :OLD.SEGMENT4,
                :NEW.SEGMENT4,
                :OLD.SEGMENT5,
                :NEW.SEGMENT5,
                :OLD.SEGMENT6,
                :NEW.SEGMENT6,
                :OLD.SEGMENT7,
                :NEW.SEGMENT7,
                :OLD.SEGMENT8,
                :NEW.SEGMENT8,
                :OLD.SEGMENT9,
                :NEW.SEGMENT9,
                :OLD.SEGMENT10,
                :NEW.SEGMENT10,
                :OLD.SEGMENT11,
                :NEW.SEGMENT11,
                :OLD.SEGMENT12,
                :NEW.SEGMENT12,
                :OLD.SEGMENT13,
                :NEW.SEGMENT13,
                :OLD.SEGMENT14,
                :NEW.SEGMENT14,
                :OLD.SEGMENT15,
                :NEW.SEGMENT15,
                :OLD.SEGMENT16,
                :NEW.SEGMENT16,
                :OLD.SEGMENT17,
                :NEW.SEGMENT17,
                :OLD.SEGMENT18,
                :NEW.SEGMENT18,
                :OLD.SEGMENT19,
                :NEW.SEGMENT19,
                :OLD.SEGMENT20,
                :NEW.SEGMENT20,
                :OLD.SEGMENT21,
                :NEW.SEGMENT21,
                :OLD.SEGMENT22,
                :NEW.SEGMENT22,
                :OLD.SEGMENT23,
                :NEW.SEGMENT23,
                :OLD.SEGMENT24,
                :NEW.SEGMENT24,
                :OLD.SEGMENT25,
                :NEW.SEGMENT25,
                :OLD.SEGMENT26,
                :NEW.SEGMENT26,
                :OLD.SEGMENT27,
                :NEW.SEGMENT27,
                :OLD.SEGMENT28,
                :NEW.SEGMENT28,
                :OLD.SEGMENT29,
                :NEW.SEGMENT29,
                :OLD.SEGMENT30,
                :NEW.SEGMENT30,
                :OLD.ENTERED_DR,
                :NEW.ENTERED_DR,
                :OLD.ENTERED_CR,
                :NEW.ENTERED_CR,
                :OLD.ACCOUNTED_DR,
                :NEW.ACCOUNTED_DR,
                :OLD.ACCOUNTED_CR,
                :NEW.ACCOUNTED_CR,
                :OLD.TRANSACTION_DATE,
                :NEW.TRANSACTION_DATE,
                :OLD.REFERENCE1,
                :NEW.REFERENCE1,
                :OLD.REFERENCE2,
                :NEW.REFERENCE2,
                :OLD.REFERENCE3,
                :NEW.REFERENCE3,
                :OLD.REFERENCE4,
                :NEW.REFERENCE4,
                :OLD.REFERENCE5,
                :NEW.REFERENCE5,
                :OLD.REFERENCE6,
                :NEW.REFERENCE6,
                :OLD.REFERENCE7,
                :NEW.REFERENCE7,
                :OLD.REFERENCE8,
                :NEW.REFERENCE8,
                :OLD.REFERENCE9,
                :NEW.REFERENCE9,
                :OLD.REFERENCE10,
                :NEW.REFERENCE10,
                :OLD.REFERENCE11,
                :NEW.REFERENCE11,
                :OLD.REFERENCE12,
                :NEW.REFERENCE12,
                :OLD.REFERENCE13,
                :NEW.REFERENCE13,
                :OLD.REFERENCE14,
                :NEW.REFERENCE14,
                :OLD.REFERENCE15,
                :NEW.REFERENCE15,
                :OLD.REFERENCE16,
                :NEW.REFERENCE16,
                :OLD.REFERENCE17,
                :NEW.REFERENCE17,
                :OLD.REFERENCE18,
                :NEW.REFERENCE18,
                :OLD.REFERENCE19,
                :NEW.REFERENCE19,
                :OLD.REFERENCE20,
                :NEW.REFERENCE20,
                :OLD.REFERENCE21,
                :NEW.REFERENCE21,
                :OLD.REFERENCE22,
                :NEW.REFERENCE22,
                :OLD.REFERENCE23,
                :NEW.REFERENCE23,
                :OLD.REFERENCE24,
                :NEW.REFERENCE24,
                :OLD.REFERENCE25,
                :NEW.REFERENCE25,
                :OLD.REFERENCE26,
                :NEW.REFERENCE26,
                :OLD.REFERENCE27,
                :NEW.REFERENCE27,
                :OLD.REFERENCE28,
                :NEW.REFERENCE28,
                :OLD.REFERENCE29,
                :NEW.REFERENCE29,
                :OLD.REFERENCE30,
                :NEW.REFERENCE30,
                :OLD.JE_BATCH_ID,
                :NEW.JE_BATCH_ID,
                :OLD.PERIOD_NAME,
                :NEW.PERIOD_NAME,
                :OLD.JE_HEADER_ID,
                :NEW.JE_HEADER_ID,
                :OLD.JE_LINE_NUM,
                :NEW.JE_LINE_NUM,
                :OLD.CHART_OF_ACCOUNTS_ID,
                :NEW.CHART_OF_ACCOUNTS_ID,
                :OLD.FUNCTIONAL_CURRENCY_CODE,
                :NEW.FUNCTIONAL_CURRENCY_CODE,
                :OLD.CODE_COMBINATION_ID,
                :NEW.CODE_COMBINATION_ID,
                :OLD.DATE_CREATED_IN_GL,
                :NEW.DATE_CREATED_IN_GL,
                :OLD.WARNING_CODE,
                :NEW.WARNING_CODE,
                :OLD.STATUS_DESCRIPTION,
                :NEW.STATUS_DESCRIPTION,
                :OLD.STAT_AMOUNT,
                :NEW.STAT_AMOUNT,
                :OLD.GROUP_ID,
                :NEW.GROUP_ID,
                :OLD.REQUEST_ID,
                :NEW.REQUEST_ID,
                :OLD.SUBLEDGER_DOC_SEQUENCE_ID,
                :NEW.SUBLEDGER_DOC_SEQUENCE_ID,
                :OLD.SUBLEDGER_DOC_SEQUENCE_VALUE,
                :NEW.SUBLEDGER_DOC_SEQUENCE_VALUE,
                :OLD.ATTRIBUTE1,
                :NEW.ATTRIBUTE1,
                :OLD.ATTRIBUTE2,
                :NEW.ATTRIBUTE2,
                :OLD.GL_SL_LINK_ID,
                :NEW.GL_SL_LINK_ID,
                :OLD.GL_SL_LINK_TABLE,
                :NEW.GL_SL_LINK_TABLE,
                :OLD.ATTRIBUTE3,
                :NEW.ATTRIBUTE3,
                :OLD.ATTRIBUTE4,
                :NEW.ATTRIBUTE4,
                :OLD.ATTRIBUTE5,
                :NEW.ATTRIBUTE5,
                :OLD.ATTRIBUTE6,
                :NEW.ATTRIBUTE6,
                :OLD.ATTRIBUTE7,
                :NEW.ATTRIBUTE7,
                :OLD.ATTRIBUTE8,
                :NEW.ATTRIBUTE8,
                :OLD.ATTRIBUTE9,
                :NEW.ATTRIBUTE9,
                :OLD.ATTRIBUTE10,
                :NEW.ATTRIBUTE10,
                :OLD.ATTRIBUTE11,
                :NEW.ATTRIBUTE11,
                :OLD.ATTRIBUTE12,
                :NEW.ATTRIBUTE12,
                :OLD.ATTRIBUTE13,
                :NEW.ATTRIBUTE13,
                :OLD.ATTRIBUTE14,
                :NEW.ATTRIBUTE14,
                :OLD.ATTRIBUTE15,
                :NEW.ATTRIBUTE15,
                :OLD.ATTRIBUTE16,
                :NEW.ATTRIBUTE16,
                :OLD.ATTRIBUTE17,
                :NEW.ATTRIBUTE17,
                :OLD.ATTRIBUTE18,
                :NEW.ATTRIBUTE18,
                :OLD.ATTRIBUTE19,
                :NEW.ATTRIBUTE19,
                :OLD.ATTRIBUTE20,
                :NEW.ATTRIBUTE20,
                :OLD.CONTEXT,
                :NEW.CONTEXT,
                :OLD.CONTEXT2,
                :NEW.CONTEXT2,
                :OLD.INVOICE_DATE,
                :NEW.INVOICE_DATE,
                :OLD.TAX_CODE,
                :NEW.TAX_CODE,
                :OLD.INVOICE_IDENTIFIER,
                :NEW.INVOICE_IDENTIFIER,
                :OLD.INVOICE_AMOUNT,
                :NEW.INVOICE_AMOUNT,
                :OLD.CONTEXT3,
                :NEW.CONTEXT3,
                :OLD.USSGL_TRANSACTION_CODE,
                :NEW.USSGL_TRANSACTION_CODE,
                :OLD.DESCR_FLEX_ERROR_MESSAGE,
                :NEW.DESCR_FLEX_ERROR_MESSAGE,
                :OLD.JGZZ_RECON_REF,
                :NEW.JGZZ_RECON_REF,
                :OLD.REFERENCE_DATE,
                :NEW.REFERENCE_DATE,
                :OLD.SET_OF_BOOKS_ID,
                :NEW.SET_OF_BOOKS_ID,
                :OLD.BALANCING_SEGMENT_VALUE,
                :NEW.BALANCING_SEGMENT_VALUE,
                :OLD.MANAGEMENT_SEGMENT_VALUE,
                :NEW.MANAGEMENT_SEGMENT_VALUE,
                :OLD.FUNDS_RESERVED_FLAG,
                :NEW.FUNDS_RESERVED_FLAG,
                :OLD.CODE_COMBINATION_ID_INTERIM,
                :NEW.CODE_COMBINATION_ID_INTERIM,
                --
                SYS_CONTEXT ('userenv', 'sessionid') SessionId,
                SYS_CONTEXT ('userenv', 'session_userid') UserSessionId,
                SYS_CONTEXT ('userenv', 'sid') sid,
                SYS_CONTEXT ('userenv', 'module') Module,
                SYS_CONTEXT ('userenv', 'session_user') userName,
                SYS_CONTEXT ('userenv', 'os_user') osUser,
                SUBSTR (SYS_CONTEXT ('userenv', 'host'), 1, 256) Terminal,
                SYSDATE creation_date,
                APPS.FND_GLOBAL.USER_ID creation_by,
                lv_StatementType,
                SUBSTR (SYS_CONTEXT ('userenv', 'client_identifier'), 1, 256)
           FROM DUAL;
   END IF;
EXCEPTION
   WHEN OTHERS
   THEN
      RAISE_APPLICATION_ERROR (-20001, 'Error: ' || SQLERRM);
END;
/


GRANT DELETE, INSERT, SELECT, UPDATE ON GL.GL_INTERFACE TO WMUSER;
