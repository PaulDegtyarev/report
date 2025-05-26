INSERT INTO SIEBEL.S_PARTY  (
                  CONFLICT_ID, --'0'*/
                  DB_LAST_UPD_SRC, --'ScriptingBusComp_PreInvokeMethod'*/
                  DB_LAST_UPD, --current_date*/
                  LAST_UPD, --SYSDATE*/
                  CREATED, --SYSDATE*/
                  LAST_UPD_BY, --'1-1C5HWUN'*/
                  CREATED_BY, --'1-1C5HWUN'*/
                  MODIFICATION_NUM, --'0'*/
                  ROW_ID, --'9-AUTOTST1'*/
                  ED_DELETED_FLG, --'N'*/
                  ED_ENABLED_FLG, --'Y'*/
                  PARTY_UID, --'KMR20020043'*/
                  NAME, --'Нет данных, AUTOTEST13CLIENT'*/
                  PARTY_TYPE_CD) --null*/) --'Person')*/
            VALUES ('0', 'ScriptingBusComp_PreInvokeMethod', current_date, SYSDATE, SYSDATE, '1-1C5HWUN', '1-1C5HWUN', '0', '9-AUTOTST1', 'N', 'Y', 'KMR20020043', 'Нет данных, AUTOTEST13CLIENT', 'Person');

             INSERT INTO SIEBEL.CX_CONMTCH_PARM  (
                  CONFLICT_ID, --'0'*/
                  DB_LAST_UPD_SRC, --'ScriptingService_PreInvokeMethod'*/
                  DB_LAST_UPD, --current_date*/
                  LAST_UPD, --SYSDATE*/
                  CREATED, --SYSDATE*/
                  LAST_UPD_BY, --'1-1C5HWUN'*/
                  CREATED_BY, --'1-1C5HWUN'*/
                  MODIFICATION_NUM, --'0'*/
                  ROW_ID, --'9-AUTOTST12'*/
                  ADV_FLG, --'N'*/
                  EXT_SYS_ID, --'1-YCYL00'*/
                  FST_NAME, --'AUTOTEST13CLIENT'*/
                  HOME_PH_NUM, --'+79998883333'*/
                  CELL_PH_NUM, --'+79998883333'*/
                  SUBSID, --'KMR'*/
                  WORK_PH_NUM) --null*/) --'+79998883333')*/
            VALUES ('0', 'ScriptingService_PreInvokeMethod', current_date, SYSDATE, SYSDATE, '1-1C5HWUN', '1-1C5HWUN', '0', '9-AUTOTST12', 'N', '1-YCYL00', 'AUTOTEST13CLIENT', '+79998883333', '+79998883333', 'KMR', '+79998883333');

             INSERT INTO SIEBEL.S_CONTACT_BU  (
                  CONFLICT_ID, --'0'*/
                  DB_LAST_UPD_SRC, --'ScriptingBusComp_PreInvokeMethod'*/
                  DB_LAST_UPD, --current_date*/
                  LAST_UPD, --SYSDATE*/
                  CREATED, --SYSDATE*/
                  LAST_UPD_BY, --'1-1C5HWUN'*/
                  CREATED_BY, --'1-1C5HWUN'*/
                  MODIFICATION_NUM, --'0'*/
                  ROW_ID, --'9-AUTOTS2'*/
                  CONTACT_ID, --'9-AUTOTST1'*/
                  BU_ID,
                PROVIDER_FLG ,
                  CON_LAST_NAME ,
                  CON_EMP_FLG ,
                  CON_FST_NAME) --null*/) --'1-DE8J')*/
            VALUES ('0', 'ScriptingBusComp_PreInvokeMethod', current_date, SYSDATE, SYSDATE, '1-1C5HWUN', '1-1C5HWUN', '0', '9-AUTOTS2', '9-AUTOTST1', '1-DE8J','N','Нет данных','N','AUTOTEST13CLIENT');

             INSERT INTO SIEBEL.S_CONTACT_FNX  (
                  ACCESS_LVL_CD, --'Basic'*/
                  NO_YRS_SCHOOL, --'0'*/
                  NUM_DEPENDS, --'0'*/
                  ROW_ID, --'9-AUTOTST1'*/
                  MODIFICATION_NUM, --'0'*/
                  CREATED_BY, --'1-1C5HWUN'*/
                  LAST_UPD_BY, --'1-1C5HWUN'*/
                  CREATED, --SYSDATE*/
                  LAST_UPD, --SYSDATE*/
                  DB_LAST_UPD, --current_date*/
                  DB_LAST_UPD_SRC, --'ScriptingBusComp_PreInvokeMethod'*/
                  CONFLICT_ID, --'0'*/
                  PAR_ROW_ID) --null*/) --'9-AUTOTST1')*/
            VALUES ('Basic', '0', '0', '9-AUTOTST1', '0', '1-1C5HWUN', '1-1C5HWUN',SYSDATE, SYSDATE, current_date, 'ScriptingBusComp_PreInvokeMethod', '0', '9-AUTOTST1');

             INSERT INTO SIEBEL.S_CONTACT  (
                  SUPPRESS_MSG_FLG, --'N'*/
                  X_CELL_PHONE_VALID_FLG, --'Y'*/
                  SUSP_WTCH_FLG, --'N'*/
                  PR_SH_PER_ADDR_ID, --'No Match Row Id'*/
                  SEND_FIN_FLG, --'N'*/
                  X_OPTIN_EMAIL, --'N'*/
                  X_OPTIN_SMS, --'N'*/
                  SUPPRESS_CALL_FLG, --'N'*/
                  SUPPRESS_MAIL_FLG, --'N'*/
                  CON_CD, --'потенциальный клиент'*/
                  WEBDAV_RESOURCE, --'9-AUTOTST1.vcf'*/
                  WEBDAV_UID, --'9-AUTOTST1'*/
                  PR_AFFL_ID, --'No Match Row Id'*/
                  PR_CON_ADDR_ID, --'No Match Row Id'*/
                  X_OPTIN_MEGAZINE_FLG, --'N'*/
                  PR_ALT_PH_NUM_ID, --'No Match Row Id'*/
                  PR_EMAIL_ADDR_ID, --'No Match Row Id'*/
                  SUSPECT_FLG, --'N'*/
                  ENTERPRISE_FLAG, --'N'*/
                  PR_SYNC_USER_ID, --'No Match Row Id'*/
                  CUST_STAT_CD, --'Active'*/
                  RELIABILITY_CD, --'Unknown'*/
                  PRIV_FLG, --'N'*/
                  PR_MKT_SEG_ID, --'No Match Row Id'*/
                  PR_REGION_ID, --'No Match Row Id'*/
                  ACTIVE_FLG, --'Y'*/
                  X_SUP_NO_MARKET, --'N'*/
                  X_SUP_MPS, --'N'*/
                  X_SUP_TPS, --'N'*/
                  X_SUP_IN_DISPUTE, --'N'*/
                  X_OPTIN_PRODUCT_FLG, --'N'*/
                  X_OPTIN_RETAIL_FLG, --'N'*/
                  SEMINAR_INVIT_FLG, --'N'*/
                  X_LAST_NAME_UP, --'НЕТ ДАННЫХ'*/
                  X_FST_NAME_UP, --'AUTOTEST13CLIENT'*/
                  X_OPTIN_OFFER_FLG, --'N'*/
                  X_OPTIN_NEWS_FLG, --'N'*/
                  X_OPTIN_EVENTS_FLG, --'N'*/
                  X_OPTIN_RESEARCH_FLG, --'N'*/
                  PTSHP_CONTACT_FLG, --'N'*/
                  PTSHP_KEY_CON_FLG, --'N'*/
                  ANNL_INCM_CURCY_CD, --'RUB'*/
                  ANNL_INCM_EXCH_DT, -- SYSDATE*/
                  OWNER_PER_ID, --'1-1C5HWUN'*/
                  EMAIL_SR_UPD_FLG, --'N'*/
                  DISA_CLEANSE_FLG, --'N'*/
                  FST_NAME, --'AUTOTEST13CLIENT'*/
                  PR_GRP_OU_ID, --'No Match Row Id'*/
                  PERSON_UID, --'KMR20020043'*/
                  PR_PER_PAY_PRFL_ID, --'No Match Row Id'*/
                  LAST_NAME, --'Нет данных'*/
                  OWNER_LOGIN, --'KMRAKHOKHLOV'*/
                  PR_PER_ADDR_ID, --'No Match Row Id'*/
                  PR_RESP_ID, --'No Match Row Id'*/
                  EMP_NUM, --'9-AUTOTST1'*/
                  OK_TO_SAMPLE_FLG, --'Y'*/
                  EMP_FLG, --'N'*/
                  SPEAKER_FLG, --'N'*/
                  SUPPRESS_EMAIL_FLG, --'N'*/
                  SUPPRESS_FAX_FLG, --'N'*/
                  INVSTGTR_FLG, --'Y'*/
                  PR_STATE_LIC_ID, --'No Match Row Id'*/
                  PR_TERR_ID, --'No Match Row Id'*/
                  PR_SECURITY_ID, --'No Match Row Id'*/
                  PRIVACY_CD, --'Opt-Out: All Parties'*/
                  PR_NOTE_ID, --'No Match Row Id'*/
                  PR_INDUST_ID, --'No Match Row Id'*/
                  X_OPTOUT_3RD_PARTY, --'N'*/
                  X_SUP_NO_DEALER, --'N'*/
                  X_OPTOUT_HMUK, --'N'*/
                  CON_EXPER_CD, --'Simple Account'*/
                  PR_REP_SYS_FLG, --'N'*/
                  PR_REP_MANL_FLG, --'N'*/
                  PR_REP_DNRM_FLG, --'N'*/
                  PR_OPTY_ID, --'No Match Row Id'*/
                  CALL_FLG, --'N'*/
                  PR_DEPT_OU_ID, --'No Match Row Id'*/
                  ASGN_USR_EXCLD_FLG, --'N'*/
                  PR_POSTN_ID, --'No Match Row Id'*/
                  CREATOR_LOGIN, --'KMRAKHOKHLOV'*/
                  BU_ID, --'1-DE8J'*/
                  PR_PROD_LN_ID, --'No Match Row Id'*/
                  CELL_PH_NUM, --'+79998883333'*/
                  PROVIDER_FLG, --'N'*/
                  X_BLOCKED_FLG, --'N'*/
                  X_CUST_CREATE_DT, -- SYSDATE*/
                  X_OPTIN_CONTESTS_FLG, --'N'*/
                  X_OPTIN_RIO_CLUB_FLG, --'N'*/
                  X_UNRAE_FLG, --'N'*/
                  X_DECEASED_FLG, --'N'*/
                  X_ROBINSON_FLG, --'N'*/
                  ROW_ID, --'9-AUTOTST1'*/
                  MODIFICATION_NUM, --'0'*/
                  CREATED_BY, --'1-1C5HWUN'*/
                  LAST_UPD_BY, --'1-1C5HWUN'*/
                  CREATED, --SYSDATE*/
                  LAST_UPD, --SYSDATE*/
                  DB_LAST_UPD, --current_date*/
                  DB_LAST_UPD_SRC, --'ScriptingBusComp_PreInvokeMethod'*/
                  CONFLICT_ID, --'0'*/
                  PAR_ROW_ID, --'9-AUTOTST1')*/
              MEMBER_FLG, --'N'*/
              EMAIL_ADDR,
            X_UPPER_EMAIL)  --null*/)
            VALUES ('N', 'Y', 'N', 'No Match Row Id', 'N', 'N', 'N', 'N', 'N', 'потенциальный клиент', '9-AUTOTST1.vcf', '9-AUTOTST1', 'No Match Row Id', 'No Match Row Id', 'N', 'No Match Row Id', 'No Match Row Id', 'N', 'N', 'No Match Row Id', 'Active', 'Unknown', 'N', 'No Match Row Id', 'No Match Row Id', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'НЕТ ДАННЫХ', 'AUTOTEST13CLIENT', 'N', 'N', 'N', 'N', 'N', 'N', 'RUB',  SYSDATE, '1-1C5HWUN', 'N', 'N', 'AUTOTEST13CLIENT', 'No Match Row Id', 'KMR20020043', 'No Match Row Id', 'Нет данных', 'KMRAKHOKHLOV', 'No Match Row Id', 'No Match Row Id', '9-AUTOTST1', 'Y', 'N', 'N', 'N', 'N', 'Y', 'No Match Row Id', 'No Match Row Id', 'No Match Row Id', 'Opt-Out: All Parties', 'No Match Row Id', 'No Match Row Id', 'N', 'N', 'N', 'Simple Account', 'N', 'N', 'N', 'No Match Row Id', 'N', 'No Match Row Id', 'N', 'No Match Row Id', 'KMRAKHOKHLOV', '1-DE8J', 'No Match Row Id', '+79998883333', 'N', 'N',  SYSDATE, 'N', 'N', 'N', 'N', 'N',  '9-AUTOTST1', '0', '1-1C5HWUN', '1-1C5HWUN',SYSDATE, SYSDATE, current_date, 'ScriptingBusComp_PreInvokeMethod', '0', '9-AUTOTST1','N','AUTOTEST13@MAIL.RU','AUTOTEST13@MAIL.RU');

             INSERT INTO SIEBEL.S_CONTACT_ATX  (
                  DSCNT_USED_FLG, --'N'*/
                  ROW_ID, --'9-AUTOTST1'*/
                  MODIFICATION_NUM, --'0'*/
                  CREATED_BY, --'1-1C5HWUN'*/
                  LAST_UPD_BY, --'1-1C5HWUN'*/
                  CREATED, --SYSDATE*/
                  LAST_UPD, --SYSDATE*/
                  DB_LAST_UPD, --current_date*/
                  DB_LAST_UPD_SRC, --'ScriptingBusComp_PreInvokeMethod'*/
                  CONFLICT_ID, --'0'*/
                  PAR_ROW_ID) --null*/) --'9-AUTOTST1')*/
            VALUES ('N', '9-AUTOTST1', '0', '1-1C5HWUN', '1-1C5HWUN',SYSDATE, SYSDATE, current_date, 'ScriptingBusComp_PreInvokeMethod', '0', '9-AUTOTST1');

             INSERT INTO SIEBEL.S_CONTACT_TNTX  (
                  CON_CREATED_DT, --SYSDATE*/
                  CON_LASTUPD_DT, --SYSDATE*/
                  PR_SOFTWR_ID, --'No Match Row Id'*/
                  PR_COURSE_ID, --'No Match Row Id'*/
                  PR_DESIGNTN_ID, --'No Match Row Id'*/
                  PR_MBRSHP_ID, --'No Match Row Id'*/
                  PR_HOBBY_ID, --'No Match Row Id'*/
                  ROW_ID, --'9-AUTOTST1'*/
                  MODIFICATION_NUM, --'0'*/
                  CREATED_BY, --'1-1C5HWUN'*/
                  LAST_UPD_BY, --'1-1C5HWUN'*/
                  CREATED, --SYSDATE*/
                  LAST_UPD, --SYSDATE*/
                  DB_LAST_UPD, --current_date*/
                  DB_LAST_UPD_SRC, --'ScriptingBusComp_PreInvokeMethod'*/
                  CONFLICT_ID, --'0'*/
                  PAR_ROW_ID) --null*/) --'9-AUTOTST1')*/
            VALUES (SYSDATE, SYSDATE, 'No Match Row Id', 'No Match Row Id', 'No Match Row Id', 'No Match Row Id', 'No Match Row Id', '9-AUTOTST1', '0', '1-1C5HWUN', '1-1C5HWUN', SYSDATE, SYSDATE, current_date, 'ScriptingBusComp_PreInvokeMethod', '0', '9-AUTOTST1');



             INSERT INTO SIEBEL.S_CONTACT_LOYX  (
                  SUPPRESS_SMS_FLG, --'N'*/
                  ROW_ID, --'9-AUTOTST1'*/
                  MODIFICATION_NUM, --'0'*/
                  CREATED_BY, --'1-1C5HWUN'*/
                  LAST_UPD_BY, --'1-1C5HWUN'*/
                  CREATED, --SYSDATE*/
                  LAST_UPD, --SYSDATE*/
                  DB_LAST_UPD, --current_date*/
                  DB_LAST_UPD_SRC, --'ScriptingBusComp_PreInvokeMethod'*/
                  CONFLICT_ID, --'0'*/
                  PAR_ROW_ID) --null*/) --'9-AUTOTST1')*/
            VALUES ('N', '9-AUTOTST1', '0', '1-1C5HWUN', '1-1C5HWUN',SYSDATE, SYSDATE, current_date, 'ScriptingBusComp_PreInvokeMethod', '0', '9-AUTOTST1');

            INSERT INTO SIEBEL.S_CONTACT_X  (
                  ATTRIB_44, --'KMRAKHOKHLOV'*/
                  ATTRIB_32, --SYSDATE*/
                  X_MOBILE_APP_FLG, --'N'*/
                  ATTRIB_35, --'Внутреннее'*/
                  ATTRIB_45, --'CRM'*/
                  ATTRIB_41, --'неизвестный'*/
                  ATTRIB_27, -- SYSDATE*/
                  ATTRIB_07, --'RUB'*/
                  ATTRIB_50, --'Unknown'*/
                  ATTRIB_06, --'Y'*/
                  ROW_ID, --'9-AUTOTST1'*/
                  MODIFICATION_NUM, --'0'*/
                  CREATED_BY, --'1-1C5HWUN'*/
                  LAST_UPD_BY, --'1-1C5HWUN'*/
                  CREATED, --SYSDATE*/
                  LAST_UPD, --SYSDATE*/
                  DB_LAST_UPD, --current_date*/
                  DB_LAST_UPD_SRC, --'ScriptingBusComp_PreInvokeMethod'*/
                  CONFLICT_ID, --'0'*/
                  PAR_ROW_ID ,
                ATTRIB_40) --null*/) --'9-AUTOTST1')*/
            VALUES ('KMRAKHOKHLOV', SYSDATE, 'N', 'Внутреннее', 'CRM', 'неизвестный',  SYSDATE, 'RUB', 'Unknown', 'Y', '9-AUTOTST1', '0', '1-1C5HWUN', '1-1C5HWUN',SYSDATE, SYSDATE, current_date, 'ScriptingBusComp_PreInvokeMethod', '0', '9-AUTOTST1','Y');

             INSERT INTO SIEBEL.S_PS_CONTACT  (
                  ATTACH_CNTR, --'0'*/
                  PR_IDENTITY_ID, --'No Match Row Id'*/
                  CURRENT_STAY_ID, --'No Match Row Id'*/
                  STUDENT_FLG, --'N'*/
                  VETERAN_FLG, --'N'*/
                  PR_IMAGE_ID, --'No Match Row Id'*/
                  WATCHLIST_FLG, --'N'*/
                  ROW_ID, --'9-AUTOTST1'*/
                  MODIFICATION_NUM, --'0'*/
                  CREATED_BY, --'1-1C5HWUN'*/
                  LAST_UPD_BY, --'1-1C5HWUN'*/
                  CREATED, --SYSDATE*/
                  LAST_UPD, --SYSDATE*/
                  DB_LAST_UPD, --current_date*/
                  DB_LAST_UPD_SRC, --'ScriptingBusComp_PreInvokeMethod'*/
                  CONFLICT_ID, --'0'*/
                  PAR_ROW_ID) --null*/) --'9-AUTOTST1')*/
            VALUES ('0', 'No Match Row Id', 'No Match Row Id', 'N', 'N', 'No Match Row Id', 'N', '9-AUTOTST1', '0', '1-1C5HWUN', '1-1C5HWUN',SYSDATE, SYSDATE, current_date, 'ScriptingBusComp_PreInvokeMethod', '0', '9-AUTOTST1');

            INSERT INTO SIEBEL.S_CONTACT_PSX  (
                  X_SOFT_BOUNCE, --'N'*/
                  X_SOFT_COUNTER, --'0'*/
                  X_BOUNCE_NULL, --'N'*/
                  X_TRIGGER_TEST_FLG, --'N'*/
                  ATTRIB_01, --'N'*/
                  ATTRIB_05, --'N'*/
                  ATTRIB_07, --'N'*/
                  ATTRIB_08, --'N'*/
                  ATTRIB_04, --'N'*/
                  ATTRIB_06, --'N'*/
                  ATTRIB_02, --'N'*/
                  ATTRIB_03, --'N'*/
                  ROW_ID, --'9-AUTOTST1'*/
                  MODIFICATION_NUM, --'0'*/
                  CREATED_BY, --'1-1C5HWUN'*/
                  LAST_UPD_BY, --'1-1C5HWUN'*/
                  CREATED, --SYSDATE*/
                  LAST_UPD, --SYSDATE*/
                  DB_LAST_UPD, --current_date*/
                  DB_LAST_UPD_SRC, --'ScriptingBusComp_PreInvokeMethod'*/
                  CONFLICT_ID, --'0'*/
                  PAR_ROW_ID) --null*/) --'9-AUTOTST1')*/
            VALUES ('N', '0', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', '9-AUTOTST1', '0', '1-1C5HWUN', '1-1C5HWUN',SYSDATE, SYSDATE, current_date, 'ScriptingBusComp_PreInvokeMethod', '0', '9-AUTOTST1');

             INSERT INTO SIEBEL.S_CONTACT_UCMX  (
                  PR_NAME_ID, --'No Match Row Id'*/
                  PR_IDENTITY_ID, --'No Match Row Id'*/
                  ROW_ID, --'9-AUTOTST1'*/
                  MODIFICATION_NUM, --'0'*/
                  CREATED_BY, --'1-1C5HWUN'*/
                  LAST_UPD_BY, --'1-1C5HWUN'*/
                  CREATED, --SYSDATE*/
                  LAST_UPD, --SYSDATE*/
                  DB_LAST_UPD, --current_date*/
                  DB_LAST_UPD_SRC, --'ScriptingBusComp_PreInvokeMethod'*/
                  CONFLICT_ID, --'0'*/
                  PAR_ROW_ID) --null*/) --'9-AUTOTST1')*/
            VALUES ('No Match Row Id', 'No Match Row Id', '9-AUTOTST1', '0', '1-1C5HWUN', '1-1C5HWUN',SYSDATE, SYSDATE, current_date, 'ScriptingBusComp_PreInvokeMethod', '0', '9-AUTOTST1');

             INSERT INTO SIEBEL.CX_CONTACT_KEY  (
                  CONFLICT_ID, --'0'*/
                  DB_LAST_UPD_SRC, --'ScriptingBusComp_WriteRecord'*/
                  DB_LAST_UPD, --current_date*/
                  LAST_UPD, --'04/30/2025 07:03:09'*/
                  CREATED, --'04/30/2025 07:03:09'*/
                  LAST_UPD_BY, --'1-1C5HWUN'*/
                  CREATED_BY, --'1-1C5HWUN'*/
                  MODIFICATION_NUM, --'0'*/
                  ROW_ID, --'9-AUTOTS3'*/
                  ADDR_ID, --'No Match Row Id'*/
                  ANONYMIZED_FLG, --'N'*/
                  CON_ID, --'9-AUTOTST1'*/
                  EXCL_MATCH_FLG, --'N'*/
                  REV_ANONYM_FLG, --'N'*/
                  SUBSID_ID, --'1-DE8J'*/
                  CELL_PH_NUM, --'+79998883333'*/
                  PERSON_UID, --'KMR20020043'*/
                  LAST_NAME, --'НЕТДАННЫХ'*/
                  FST_NAME) --null*/) --'AUTOTEST13CLIENT')*/
            VALUES ('0', 'ScriptingBusComp_WriteRecord', current_date, SYSDATE, SYSDATE, '1-1C5HWUN', '1-1C5HWUN', '0', '9-AUTOTS3', 'No Match Row Id', 'N', '9-AUTOTST1', 'N', 'N', '1-DE8J', '+79998883333', 'KMR20020043', 'НЕТДАННЫХ', 'AUTOTEST13CLIENT');

             INSERT INTO SIEBEL.CX_AGREE_HIST  (
                  CONFLICT_ID, --'0'*/
                  DB_LAST_UPD_SRC, --'ScriptingService_PreInvokeMethod'*/
                  DB_LAST_UPD, --current_date*/
                  LAST_UPD, --'04/30/2025 07:03:09'*/
                  CREATED, --'04/30/2025 07:03:09'*/
                  LAST_UPD_BY, --'1-1C5HWUN'*/
                  CREATED_BY, --'1-1C5HWUN'*/
                  MODIFICATION_NUM, --'0'*/
                  ROW_ID, --'9-AUTOTS4'*/
                  VALUE_ACCEPTED, --'Y'*/
                  SOURCE_SYSTEM, --'Siebel'*/
                  SUB_SOURCE_COMMENT, --'KMRAKHOKHLOV'*/
                  AGREE_DATE, -- SYSDATE*/
                  CONTACT_ID, --'9-AUTOTST1'*/
                  AGREEMENT_CODE) --null*/) --'Personal Data Agreement')*/
            VALUES ('0', 'ScriptingService_PreInvokeMethod', current_date, SYSDATE, SYSDATE, '1-1C5HWUN', '1-1C5HWUN', '0', '9-AUTOTS4', 'Y', 'Siebel', 'KMRAKHOKHLOV',  SYSDATE, '9-AUTOTST1', 'Personal Data Agreement')