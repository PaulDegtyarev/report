select REQUEST_RELATIONSHIP_TYPE,
            REQUEST_ACTIVE_FLAG,
            REQUEST_END_DATE,
            SOURCE_SYSTEM,
            SOURCE_SYSTEM_INFO,
            RELATIONSHIP_CHANGE_FLAG,
            FINAL_ACTIVE_FLAG,
            Initial_ACTIVE_FLAG
            from CX_CAR_OWN_HIST where asset_id = '2-TESTCAR1'