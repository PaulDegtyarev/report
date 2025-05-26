select t1.row_id AS ROW_ID,
    t1.par_row_id AS PAR_ROW_ID,
    t1.last_name AS LAST_NAME,
    t1.fst_name AS FIRST_NAME,
    t1.MID_name AS MIDDLE_NAME,
    t1.SEX_MF AS GENDER,
    t1.CELL_PH_NUM AS PHONE_NUMBER,
    t1.Email_Addr AS EMAIL_ADDRESS,
    t1.work_ph_num AS WORK_PHONE,
    t2.ATTRIB_40 AS MARKETING_AGREEMENT,
    t2.X_RESEARCH_AGREEMENT AS RESEARCH_AGREEMENT
from s_contact t1, s_contact_x t2
where t1.PAR_ROW_ID = t2.PAR_ROW_ID
and t1.person_uid = ?
order by t1.created desc