 INSERT INTO SIEBEL.S_PARTY  (
      CONFLICT_ID,
      DB_LAST_UPD_SRC,
      DB_LAST_UPD,
      LAST_UPD,
      CREATED,
      LAST_UPD_BY,
      CREATED_BY,
      MODIFICATION_NUM,
      ROW_ID,
      ED_DELETED_FLG,
      ED_ENABLED_FLG,
      PARTY_UID,
      NAME,
      PARTY_TYPE_CD)
VALUES ('0', 'ScriptingBusComp_PreInvokeMethod', current_date, SYSDATE, SYSDATE, '1-1C5HWUN', '1-1C5HWUN', '0', '2-AUTOTST', 'N', 'Y', 'KMR20020020', 'Нет данных, AUTOTEST1CLIENT', 'Person');

 INSERT INTO SIEBEL.CX_CONMTCH_PARM  (
      CONFLICT_ID,
      DB_LAST_UPD_SRC,
      DB_LAST_UPD,
      LAST_UPD,
      CREATED,
      LAST_UPD_BY,
      CREATED_BY,
      MODIFICATION_NUM,
      ROW_ID,
      ADV_FLG,
      EXT_SYS_ID,
      FST_NAME,
      HOME_PH_NUM,
      CELL_PH_NUM,
      SUBSID,
      WORK_PH_NUM)
VALUES ('0', 'ScriptingService_PreInvokeMethod', current_date, SYSDATE, SYSDATE, '1-1C5HWUN', '1-1C5HWUN', '0', '2-AUTOTST2', 'N', '1-YCYL00', 'AUTOTEST1CLIENT', '+79998882200', '+79998882200', 'KMR', '+79998882200');



 INSERT INTO SIEBEL.S_CONTACT_BU  (
      CONFLICT_ID,
      DB_LAST_UPD_SRC,
      DB_LAST_UPD,
      LAST_UPD,
      CREATED,
      LAST_UPD_BY,
      CREATED_BY,
      MODIFICATION_NUM,
      ROW_ID,
      CONTACT_ID,
      BU_ID,
	  PROVIDER_FLG ,
      CON_LAST_NAME ,
      CON_EMP_FLG ,
      CON_FST_NAME)
VALUES ('0', 'ScriptingBusComp_PreInvokeMethod', current_date, SYSDATE, SYSDATE, '1-1C5HWUN', '1-1C5HWUN', '0', '2-AUTOTS2', '2-AUTOTST', '1-DE8J','N','Нет данных','N','AUTOTEST1CLIENT');

 INSERT INTO SIEBEL.S_CONTACT_FNX  (
      ACCESS_LVL_CD,
      NO_YRS_SCHOOL,
      NUM_DEPENDS,
      ROW_ID,
      MODIFICATION_NUM,
      CREATED_BY,
      LAST_UPD_BY,
      CREATED,
      LAST_UPD,
      DB_LAST_UPD,
      DB_LAST_UPD_SRC,
      CONFLICT_ID,
      PAR_ROW_ID)
VALUES ('Basic', '0', '0', '2-AUTOTST', '0', '1-1C5HWUN', '1-1C5HWUN',SYSDATE, SYSDATE, current_date, 'ScriptingBusComp_PreInvokeMethod', '0', '2-AUTOTST');

 INSERT INTO SIEBEL.S_CONTACT  (
      SUPPRESS_MSG_FLG,
      X_CELL_PHONE_VALID_FLG,
      SUSP_WTCH_FLG,
      PR_SH_PER_ADDR_ID,
      SEND_FIN_FLG,
      X_OPTIN_EMAIL,
      X_OPTIN_SMS,
      SUPPRESS_CALL_FLG,
      SUPPRESS_MAIL_FLG,
      CON_CD,
      WEBDAV_RESOURCE,
      WEBDAV_UID,
      PR_AFFL_ID,
      PR_CON_ADDR_ID,
      X_OPTIN_MEGAZINE_FLG,
      PR_ALT_PH_NUM_ID,
      PR_EMAIL_ADDR_ID,
      SUSPECT_FLG,
      ENTERPRISE_FLAG,
      PR_SYNC_USER_ID,
      CUST_STAT_CD,
      RELIABILITY_CD,
      PRIV_FLG,
      PR_MKT_SEG_ID,
      PR_REGION_ID,
      ACTIVE_FLG,
      X_SUP_NO_MARKET,
      X_SUP_MPS,
      X_SUP_TPS,
      X_SUP_IN_DISPUTE,
      X_OPTIN_PRODUCT_FLG,
      X_OPTIN_RETAIL_FLG,
      SEMINAR_INVIT_FLG,
      X_LAST_NAME_UP,
      X_FST_NAME_UP,
      X_OPTIN_OFFER_FLG,
      X_OPTIN_NEWS_FLG,
      X_OPTIN_EVENTS_FLG,
      X_OPTIN_RESEARCH_FLG,
      PTSHP_CONTACT_FLG,
      PTSHP_KEY_CON_FLG,
      ANNL_INCM_CURCY_CD,
      ANNL_INCM_EXCH_DT,
      OWNER_PER_ID,
      EMAIL_SR_UPD_FLG,
      DISA_CLEANSE_FLG,
      FST_NAME,
      PR_GRP_OU_ID,
      PERSON_UID,
      PR_PER_PAY_PRFL_ID,
      LAST_NAME,
      OWNER_LOGIN,
      PR_PER_ADDR_ID,
      PR_RESP_ID,
      EMP_NUM,
      OK_TO_SAMPLE_FLG,
      EMP_FLG,
      SPEAKER_FLG,
      SUPPRESS_EMAIL_FLG,
      SUPPRESS_FAX_FLG,
      INVSTGTR_FLG,
      PR_STATE_LIC_ID,
      PR_TERR_ID,
      PR_SECURITY_ID,
      PRIVACY_CD,
      PR_NOTE_ID,
      PR_INDUST_ID,
      X_OPTOUT_3RD_PARTY,
      X_SUP_NO_DEALER,
      X_OPTOUT_HMUK,
      CON_EXPER_CD,
      PR_REP_SYS_FLG,
      PR_REP_MANL_FLG,
      PR_REP_DNRM_FLG,
      PR_OPTY_ID,
      CALL_FLG,
      PR_DEPT_OU_ID,
      ASGN_USR_EXCLD_FLG,
      PR_POSTN_ID,
      CREATOR_LOGIN,
      BU_ID,
      PR_PROD_LN_ID,
      CELL_PH_NUM,
      PROVIDER_FLG,
      X_BLOCKED_FLG,
      X_CUST_CREATE_DT,
      X_OPTIN_CONTESTS_FLG,
      X_OPTIN_RIO_CLUB_FLG,
      X_UNRAE_FLG,
      X_DECEASED_FLG,
      X_ROBINSON_FLG,
      ROW_ID,
      MODIFICATION_NUM,
      CREATED_BY,
      LAST_UPD_BY,
      CREATED,
      LAST_UPD,
      DB_LAST_UPD,
      DB_LAST_UPD_SRC,
      CONFLICT_ID,
      PAR_ROW_ID)
VALUES ('N', 'Y', 'N', 'No Match Row Id', 'N', 'N', 'N', 'N', 'N', 'потенциальный клиент', '2-AUTOTST.vcf', '2-AUTOTST', 'No Match Row Id', 'No Match Row Id', 'N', 'No Match Row Id', 'No Match Row Id', 'N', 'N', 'No Match Row Id', 'Active', 'Unknown', 'N', 'No Match Row Id', 'No Match Row Id', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'Y', 'НЕТ ДАННЫХ', 'AUTOTEST1CLIENT', 'N', 'N', 'N', 'N', 'N', 'N', 'RUB',  SYSDATE, '1-1C5HWUN', 'N', 'N', 'AUTOTEST1CLIENT', 'No Match Row Id', 'KMR20020020', 'No Match Row Id', 'Нет данных', 'KMRAKHOKHLOV', 'No Match Row Id', 'No Match Row Id', '2-AUTOTST', 'Y', 'N', 'N', 'N', 'N', 'Y', 'No Match Row Id', 'No Match Row Id', 'No Match Row Id', 'Opt-Out: All Parties', 'No Match Row Id', 'No Match Row Id', 'N', 'N', 'N', 'Simple Account', 'N', 'N', 'N', 'No Match Row Id', 'N', 'No Match Row Id', 'N', 'No Match Row Id', 'KMRAKHOKHLOV', '1-DE8J', 'No Match Row Id', '+79998882200', 'N', 'N',  SYSDATE, 'N', 'N', 'N', 'N', 'N', '2-AUTOTST', '0', '1-1C5HWUN', '1-1C5HWUN',SYSDATE, SYSDATE, current_date, 'ScriptingBusComp_PreInvokeMethod', '0', '2-AUTOTST');

 INSERT INTO SIEBEL.S_CONTACT_ATX  (
      DSCNT_USED_FLG, --'N'*/
      ROW_ID, --'2-AUTOTST'*/
      MODIFICATION_NUM, --'0'*/
      CREATED_BY, --'1-1C5HWUN'*/
      LAST_UPD_BY, --'1-1C5HWUN'*/
      CREATED, --SYSDATE*/
      LAST_UPD, --SYSDATE*/
      DB_LAST_UPD, --current_date*/
      DB_LAST_UPD_SRC, --'ScriptingBusComp_PreInvokeMethod'*/
      CONFLICT_ID, --'0'*/
      PAR_ROW_ID)
VALUES ('N', '2-AUTOTST', '0', '1-1C5HWUN', '1-1C5HWUN',SYSDATE, SYSDATE, current_date, 'ScriptingBusComp_PreInvokeMethod', '0', '2-AUTOTST');

 INSERT INTO SIEBEL.S_CONTACT_TNTX  (
      CON_CREATED_DT, --SYSDATE*/
      CON_LASTUPD_DT, --SYSDATE*/
      PR_SOFTWR_ID, --'No Match Row Id'*/
      PR_COURSE_ID, --'No Match Row Id'*/
      PR_DESIGNTN_ID, --'No Match Row Id'*/
      PR_MBRSHP_ID, --'No Match Row Id'*/
      PR_HOBBY_ID, --'No Match Row Id'*/
      ROW_ID, --'2-AUTOTST'*/
      MODIFICATION_NUM, --'0'*/
      CREATED_BY, --'1-1C5HWUN'*/
      LAST_UPD_BY, --'1-1C5HWUN'*/
      CREATED, --SYSDATE*/
      LAST_UPD, --SYSDATE*/
      DB_LAST_UPD, --current_date*/
      DB_LAST_UPD_SRC, --'ScriptingBusComp_PreInvokeMethod'*/
      CONFLICT_ID, --'0'*/
      PAR_ROW_ID)
VALUES (SYSDATE, SYSDATE, 'No Match Row Id', 'No Match Row Id', 'No Match Row Id', 'No Match Row Id', 'No Match Row Id', '2-AUTOTST', '0', '1-1C5HWUN', '1-1C5HWUN', SYSDATE, SYSDATE, current_date, 'ScriptingBusComp_PreInvokeMethod', '0', '2-AUTOTST');



 INSERT INTO SIEBEL.S_CONTACT_LOYX  (
      SUPPRESS_SMS_FLG, --'N'*/
      ROW_ID, --'2-AUTOTST'*/
      MODIFICATION_NUM, --'0'*/
      CREATED_BY, --'1-1C5HWUN'*/
      LAST_UPD_BY, --'1-1C5HWUN'*/
      CREATED, --SYSDATE*/
      LAST_UPD, --SYSDATE*/
      DB_LAST_UPD, --current_date*/
      DB_LAST_UPD_SRC, --'ScriptingBusComp_PreInvokeMethod'*/
      CONFLICT_ID, --'0'*/
      PAR_ROW_ID)
VALUES ('N', '2-AUTOTST', '0', '1-1C5HWUN', '1-1C5HWUN',SYSDATE, SYSDATE, current_date, 'ScriptingBusComp_PreInvokeMethod', '0', '2-AUTOTST');

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
      ROW_ID, --'2-AUTOTST'*/
      MODIFICATION_NUM, --'0'*/
      CREATED_BY, --'1-1C5HWUN'*/
      LAST_UPD_BY, --'1-1C5HWUN'*/
      CREATED, --SYSDATE*/
      LAST_UPD, --SYSDATE*/
      DB_LAST_UPD, --current_date*/
      DB_LAST_UPD_SRC, --'ScriptingBusComp_PreInvokeMethod'*/
      CONFLICT_ID, --'0'*/
      PAR_ROW_ID)
VALUES ('KMRAKHOKHLOV', SYSDATE, 'N', 'Внутреннее', 'CRM', 'неизвестный',  SYSDATE, 'RUB', 'Unknown', 'Y', '2-AUTOTST', '0', '1-1C5HWUN', '1-1C5HWUN',SYSDATE, SYSDATE, current_date, 'ScriptingBusComp_PreInvokeMethod', '0', '2-AUTOTST');

 INSERT INTO SIEBEL.S_PS_CONTACT  (
      ATTACH_CNTR, --'0'*/
      PR_IDENTITY_ID, --'No Match Row Id'*/
      CURRENT_STAY_ID, --'No Match Row Id'*/
      STUDENT_FLG, --'N'*/
      VETERAN_FLG, --'N'*/
      PR_IMAGE_ID, --'No Match Row Id'*/
      WATCHLIST_FLG, --'N'*/
      ROW_ID, --'2-AUTOTST'*/
      MODIFICATION_NUM, --'0'*/
      CREATED_BY, --'1-1C5HWUN'*/
      LAST_UPD_BY, --'1-1C5HWUN'*/
      CREATED, --SYSDATE*/
      LAST_UPD, --SYSDATE*/
      DB_LAST_UPD, --current_date*/
      DB_LAST_UPD_SRC, --'ScriptingBusComp_PreInvokeMethod'*/
      CONFLICT_ID, --'0'*/
      PAR_ROW_ID)
VALUES ('0', 'No Match Row Id', 'No Match Row Id', 'N', 'N', 'No Match Row Id', 'N', '2-AUTOTST', '0', '1-1C5HWUN', '1-1C5HWUN',SYSDATE, SYSDATE, current_date, 'ScriptingBusComp_PreInvokeMethod', '0', '2-AUTOTST');

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
      ROW_ID, --'2-AUTOTST'*/
      MODIFICATION_NUM, --'0'*/
      CREATED_BY, --'1-1C5HWUN'*/
      LAST_UPD_BY, --'1-1C5HWUN'*/
      CREATED, --SYSDATE*/
      LAST_UPD, --SYSDATE*/
      DB_LAST_UPD, --current_date*/
      DB_LAST_UPD_SRC, --'ScriptingBusComp_PreInvokeMethod'*/
      CONFLICT_ID, --'0'*/
      PAR_ROW_ID) --null*/) --'2-AUTOTST')*/
VALUES ('N', '0', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', '2-AUTOTST', '0', '1-1C5HWUN', '1-1C5HWUN',SYSDATE, SYSDATE, current_date, 'ScriptingBusComp_PreInvokeMethod', '0', '2-AUTOTST');

 INSERT INTO SIEBEL.S_CONTACT_UCMX  (
      PR_NAME_ID, --'No Match Row Id'*/
      PR_IDENTITY_ID, --'No Match Row Id'*/
      ROW_ID, --'2-AUTOTST'*/
      MODIFICATION_NUM, --'0'*/
      CREATED_BY, --'1-1C5HWUN'*/
      LAST_UPD_BY, --'1-1C5HWUN'*/
      CREATED, --SYSDATE*/
      LAST_UPD, --SYSDATE*/
      DB_LAST_UPD, --current_date*/
      DB_LAST_UPD_SRC, --'ScriptingBusComp_PreInvokeMethod'*/
      CONFLICT_ID, --'0'*/
      PAR_ROW_ID) --null*/) --'2-AUTOTST')*/
VALUES ('No Match Row Id', 'No Match Row Id', '2-AUTOTST', '0', '1-1C5HWUN', '1-1C5HWUN',SYSDATE, SYSDATE, current_date, 'ScriptingBusComp_PreInvokeMethod', '0', '2-AUTOTST');

 INSERT INTO SIEBEL.CX_CONTACT_KEY  (
      CONFLICT_ID, --'0'*/
      DB_LAST_UPD_SRC, --'ScriptingBusComp_WriteRecord'*/
      DB_LAST_UPD, --current_date*/
      LAST_UPD, --'04/30/2025 07:03:09'*/
      CREATED, --'04/30/2025 07:03:09'*/
      LAST_UPD_BY, --'1-1C5HWUN'*/
      CREATED_BY, --'1-1C5HWUN'*/
      MODIFICATION_NUM, --'0'*/
      ROW_ID, --'2-AUTOTS3'*/
      ADDR_ID, --'No Match Row Id'*/
      ANONYMIZED_FLG, --'N'*/
      CON_ID, --'2-AUTOTST'*/
      EXCL_MATCH_FLG, --'N'*/
      REV_ANONYM_FLG, --'N'*/
      SUBSID_ID, --'1-DE8J'*/
      CELL_PH_NUM, --'+79998882200'*/
      PERSON_UID, --'KMR20020020'*/
      LAST_NAME, --'НЕТДАННЫХ'*/
      FST_NAME) --null*/) --'AUTOTEST1CLIENT')*/
VALUES ('0', 'ScriptingBusComp_WriteRecord', current_date, SYSDATE, SYSDATE, '1-1C5HWUN', '1-1C5HWUN', '0', '2-AUTOTS3', 'No Match Row Id', 'N', '2-AUTOTST', 'N', 'N', '1-DE8J', '+79998882200', 'KMR20020020', 'НЕТДАННЫХ', 'AUTOTEST1CLIENT');

 INSERT INTO SIEBEL.CX_AGREE_HIST  (
      CONFLICT_ID, --'0'*/
      DB_LAST_UPD_SRC, --'ScriptingService_PreInvokeMethod'*/
      DB_LAST_UPD, --current_date*/
      LAST_UPD, --'04/30/2025 07:03:09'*/
      CREATED, --'04/30/2025 07:03:09'*/
      LAST_UPD_BY, --'1-1C5HWUN'*/
      CREATED_BY, --'1-1C5HWUN'*/
      MODIFICATION_NUM, --'0'*/
      ROW_ID, --'2-AUTOTS4'*/
      VALUE_ACCEPTED, --'Y'*/
      SOURCE_SYSTEM, --'Siebel'*/
      SUB_SOURCE_COMMENT, --'KMRAKHOKHLOV'*/
      AGREE_DATE, -- SYSDATE*/
      CONTACT_ID, --'2-AUTOTST'*/
      AGREEMENT_CODE) --null*/) --'Personal Data Agreement')*/
VALUES ('0', 'ScriptingService_PreInvokeMethod', current_date, SYSDATE, SYSDATE, '1-1C5HWUN', '1-1C5HWUN', '0', '2-AUTOTS4', 'Y', 'Siebel', 'KMRAKHOKHLOV',  SYSDATE, '2-AUTOTST', 'Personal Data Agreement')