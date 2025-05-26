 INSERT INTO SIEBEL.S_ASSET_CON  (
      RELATION_TYPE_CD, --'владелец'*/
      PAYOR_FLG, --'Y'*/
      ATTRIB_01, --'Внутреннее'*/
      ATTRIB_26, --SYSDATE*/
      END_DT, --'12/31/3999'*/
      ROW_ID, --'3-TESTCON1'*/
      MODIFICATION_NUM, --'0'*/
      CREATED_BY, --'1-1C5HWUN'*/
      LAST_UPD_BY, --'1-1C5HWUN'*/
      CREATED, --SYSDATE*/
      LAST_UPD, --SYSDATE*/
      DB_LAST_UPD, --current_date*/
      DB_LAST_UPD_SRC, --'User'*/
      CONFLICT_ID, --'0'*/
      ASSET_ID, --'2-TESTCAR1'*/
      CONTACT_ID) --null*/) --'2-AUTOTST')*/
VALUES ('владелец', 'Y', 'Внутреннее', SYSDATE - 90, TO_DATE('3999-12-31', 'YYYY-MM-DD'), '3-TESTCON1', '0', '1-1C5HWUN', '1-1C5HWUN', SYSDATE, SYSDATE, current_date, 'User', '0', '2-TESTCAR1', '2-AUTOTST');

 INSERT INTO SIEBEL.S_AUDIT_ITEM  (
      CONFLICT_ID, --'0'*/
      DB_LAST_UPD_SRC, --'User'*/
      DB_LAST_UPD, --current_date*/
      LAST_UPD, --SYSDATE*/
      CREATED, --SYSDATE*/
      LAST_UPD_BY, --'1-1C5HWUN'*/
      CREATED_BY, --'1-1C5HWUN'*/
      MODIFICATION_NUM, --'0'*/
      ROW_ID, --'2-TESTCON2'*/
      NEW_VAL, --''*/
      LINK_NAME, --'Auto Vehicle/Contact'*/
      ITEM_IDEN_NUM, --SIEBEL.S_AUDIT_ITEM_S.NEXTVAL*/
      GROUP_NUM, --''*/
      FIELD_NAME, --''*/
      USER_ID, --'1-1C5HWUN'*/
      SYNC_DT, --''*/
      OPERATION_CD, --'Associate'*/
      TBL_NAME, --'S_ASSET_CON'*/
      CHILD_RECORD_ID, --'2-AUTOTST'*/
      CHILD_BC_BASE_TBL, --'S_PARTY'*/
      BUSCOMP_NAME, --'Auto Vehicle'*/
      BC_BASE_TBL, --'S_ASSET'*/
      NODE_NAME, --'HQ'*/
      OPERATION_DT, --SYSDATE*/
      CHILD_BC_NAME, --'Contact'*/
      RECORD_ID, --'2-TESTCAR1'*/
      OLD_VAL, --''*/
      TBL_RECORD_ID, --'2-TESTCON3'*/
      AUDIT_SOURCE_CD, --'User'*/
      AUDIT_LOG) --null*/) --'')*/
VALUES ('0', 'User', current_date, SYSDATE, SYSDATE, '1-1C5HWUN', '1-1C5HWUN', '0', '2-TESTCON2', '', 'Auto Vehicle/Contact', SIEBEL.S_AUDIT_ITEM_S.NEXTVAL, '', '', '1-1C5HWUN', '', 'Associate', 'S_ASSET_CON', '2-AUTOTST', 'S_PARTY', 'Auto Vehicle', 'S_ASSET', 'HQ', SYSDATE, 'Contact', '2-TESTCAR1', '', '2-TESTCON3', 'User', '')

