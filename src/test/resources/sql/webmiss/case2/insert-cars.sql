 INSERT INTO SIEBEL.S_ASSET  (
      CONFLICT_ID, --'0'*/
      DB_LAST_UPD_SRC, --'User'*/
      DB_LAST_UPD, --current_date*/
      LAST_UPD, -- SYSDATE*/
      CREATED, -- SYSDATE*/
      LAST_UPD_BY, --'1-1C5HWUN'*/
      CREATED_BY, --'1-1C5HWUN'*/
      MODIFICATION_NUM, --'0'*/
      ROW_ID, --'2-TESTCAR1'*/
      TEST_ASSET_FLG, --'N'*/
      DMNDNG_DR_FLG, --'N'*/
      X_REGISTERRED_FLG, --'N'*/
      X_SBSDRY_CHNNL, --'Call Center'*/
      ALT_FUEL_FLG, --'N'*/
      CAUTION_FLG, --'N'*/
      CUTOFF_FLG, --'N'*/
      INTEGRATION_ID, --'2-TESTCAR1'*/
      PR_CON_ID, --'No Match Row Id'*/
      EXCH_DATE, -- SYSDATE*/
      INSTALL_DT, -- SYSDATE*/
      BU_ID, --'1-DE8J'*/
      PR_POSTN_ID, --'1-E6T1'*/
      PROD_ID, --'1-1BW84EN'*/
      BASE_CURRENCY_CD, --'RUB'*/
      QTY, --'1'*/
      ASSET_VAL_CURCY_CD, --'RUB'*/
      ASSET_VAL_EXCH_DT, -- SYSDATE*/
      ASSET_NUM, --'TESTCAR1BM0004637'*/
      NAME, --'1-1BW84EN'*/
      OU_ADDR_ID, --'No Match Row Id'*/
      PR_ACCNT_ID, --'No Match Row Id'*/
      PR_EMP_ID, --'No Match Row Id'*/
      AUTO_SR_FLG, --'Y'*/
      REF_NUMBER_1, --'T005ES790'*/
      FLEET_FLG, --'N'*/
      SERIAL_NUM, --'TESTCAR1BM0004637'*/
      TYPE_CD) --null*/) --'Vehicle')*/
VALUES ('0', 'User', current_date,  SYSDATE,  SYSDATE, '1-1C5HWUN', '1-1C5HWUN', '0', '2-TESTCAR1', 'N', 'N', 'N', 'Call Center', 'N', 'N', 'N', '2-TESTCAR1', 'No Match Row Id',  SYSDATE,  SYSDATE, '1-DE8J', '1-E6T1', '1-1BW84EN', 'RUB', '1', 'RUB',  SYSDATE, 'TESTCAR1BM0004637', '1-1BW84EN', 'No Match Row Id', 'No Match Row Id', 'No Match Row Id', 'Y', 'T005ES790', 'N', 'TESTCAR1BM0004637', 'Vehicle');

 INSERT INTO SIEBEL.S_ASSET_BU  (
      CONFLICT_ID, --'0'*/
      DB_LAST_UPD_SRC, --'User'*/
      DB_LAST_UPD, --current_date*/
      LAST_UPD, -- SYSDATE*/
      CREATED, -- SYSDATE*/
      LAST_UPD_BY, --'1-1C5HWUN'*/
      CREATED_BY, --'1-1C5HWUN'*/
      MODIFICATION_NUM, --'0'*/
      ROW_ID, --'2-TESTCAR4'*/
      ASSET_ID, --'2-TESTCAR1'*/
      BU_ID , --'1-DE8J')*/
	   TYPE_CD,--Vehicle*/
      ASSET_NUM) --TESTCAR1BM0004637*/ 
VALUES ('0', 'User', current_date, SYSDATE, SYSDATE, '1-1C5HWUN', '1-1C5HWUN', '0', '2-TESTCAR4', '2-TESTCAR1', '1-DE8J','Vehicle','TESTCAR1BM0004637');

 INSERT INTO SIEBEL.S_ASSET_ATX  (
      X_OPTIN_TM_REMIND_FLG, --'N'*/
      ROW_ID, --'2-TESTCAR1'*/
      MODIFICATION_NUM, --'0'*/
      CREATED_BY, --'1-1C5HWUN'*/
      LAST_UPD_BY, --'1-1C5HWUN'*/
      CREATED, -- SYSDATE*/
      LAST_UPD, -- SYSDATE*/
      DB_LAST_UPD, --current_date*/
      DB_LAST_UPD_SRC, --'User'*/
      CONFLICT_ID, --'0'*/
      PAR_ROW_ID ) --'2-TESTCAR1')*/
VALUES ('N', '2-TESTCAR1', '0', '1-1C5HWUN', '1-1C5HWUN', SYSDATE, SYSDATE, current_date, 'User', '0', '2-TESTCAR1');

INSERT INTO SIEBEL.S_ASSET_X  (
      ATTRIB_37, --'N'*/
      ATTRIB_07, --'N'*/
      ROW_ID, --'2-TESTCAR1'*/
      MODIFICATION_NUM, --'0'*/
      CREATED_BY, --'1-1C5HWUN'*/
      LAST_UPD_BY, --'1-1C5HWUN'*/
      CREATED, -- SYSDATE*/
      LAST_UPD, -- SYSDATE*/
      DB_LAST_UPD, --current_date*/
      DB_LAST_UPD_SRC, --'User'*/
      CONFLICT_ID, --'0'*/
      PAR_ROW_ID) --null*/) --'2-TESTCAR1')*/
VALUES ('N', 'N', '2-TESTCAR1', '0', '1-1C5HWUN', '1-1C5HWUN', SYSDATE, SYSDATE, current_date, 'User', '0', '2-TESTCAR1');

 INSERT INTO SIEBEL.S_ASSET_POSTN  (
      CONFLICT_ID, --'0'*/
      DB_LAST_UPD_SRC, --'User'*/
      DB_LAST_UPD, --current_date*/
      LAST_UPD, -- SYSDATE*/
      CREATED, -- SYSDATE*/
      LAST_UPD_BY, --'1-1C5HWUN'*/
      CREATED_BY, --'1-1C5HWUN'*/
      MODIFICATION_NUM, --'0'*/
      ROW_ID, --'2-TESTCAR3'*/
      ASSET_ID, --'2-TESTCAR1'*/
      POSITION_ID, --'1-E6T1'*/
      ASGN_SYS_FLG, --'N'*/
      ASGN_DNRM_FLG, --'N'*/
      ASGN_MANL_FLG,--'Y')*/
	  TYPE_CD,
		ASSET_NUM) 
VALUES ('0', 'User', current_date,  SYSDATE,  SYSDATE, '1-1C5HWUN', '1-1C5HWUN', '0', '2-TESTCAR3', '2-TESTCAR1', '1-E6T1', 'N', 'N', 'Y','Vehicle','TESTCAR1BM0004637');

INSERT INTO SIEBEL.S_AUDIT_ITEM  (
      CONFLICT_ID, --'0'*/
      DB_LAST_UPD_SRC, --'User'*/
      DB_LAST_UPD, --current_date*/
      LAST_UPD, -- SYSDATE*/
      CREATED, -- SYSDATE*/
      LAST_UPD_BY, --'1-1C5HWUN'*/
      CREATED_BY, --'1-1C5HWUN'*/
      MODIFICATION_NUM, --'0'*/
      ROW_ID, --'2-TESTCAR2'*/
      NEW_VAL, --''*/
      LINK_NAME, --''*/
      ITEM_IDEN_NUM, --SIEBEL.S_AUDIT_ITEM_S.NEXTVAL*/
      GROUP_NUM, --''*/
      FIELD_NAME, --''*/
      USER_ID, --'1-1C5HWUN'*/
      SYNC_DT, --''*/
      OPERATION_CD, --'New Record'*/
      TBL_NAME, --'S_ASSET'*/
      CHILD_RECORD_ID, --''*/
      CHILD_BC_BASE_TBL, --''*/
      BUSCOMP_NAME, --'Auto Vehicle'*/
      BC_BASE_TBL, --'S_ASSET'*/
      NODE_NAME, --'HQ'*/
      OPERATION_DT, -- SYSDATE*/
      CHILD_BC_NAME, --''*/
      RECORD_ID, --'2-TESTCAR1'*/
      OLD_VAL, --''*/
      TBL_RECORD_ID, --'2-TESTCAR1'*/
      AUDIT_SOURCE_CD, --'User'*/
      AUDIT_LOG) --null*/)
VALUES ('0', 'User', current_date, SYSDATE, SYSDATE, '1-1C5HWUN', '1-1C5HWUN', '0', '2-TESTCAR2', '', '', SIEBEL.S_AUDIT_ITEM_S.NEXTVAL, '', '', '1-1C5HWUN', '', 'New Record', 'S_ASSET', '', '', 'Auto Vehicle', 'S_ASSET', 'HQ',  SYSDATE, '', '2-TESTCAR1', '', '2-TESTCAR1', 'User', 'null');



