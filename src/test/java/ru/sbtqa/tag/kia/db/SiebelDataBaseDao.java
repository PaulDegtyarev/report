package ru.sbtqa.tag.kia.db;

import java.sql.ResultSetMetaData;
import java.util.HashMap;
import java.util.Map;

public class SiebelDataBaseDao extends DataBaseDao {

    @Override
    protected String getJdbcUrl() {
        return "jdbc:oracle:thin:@//10.123.130.65:1521/HKRUNTST";
    }

    @Override
    protected String getUsername() {
        return "SIEBEL";
    }

    @Override
    protected String getPassword() {
        return "Qamfei#23wd";
    }

    @Override
    protected String getDriverClassName() {
        return "oracle.jdbc.driver.OracleDriver";
    }

    public Map<String, String> select(String query, Object... params) {
        String finalQuery = replaceQuestionMarks(query, params);
        System.out.println(finalQuery);

        return executeSelect(finalQuery, rs -> {
            if (rs.next()) {
                Map<String, String> result = new HashMap<>();
                ResultSetMetaData metaData = rs.getMetaData();
                int columnCount = metaData.getColumnCount();

                for (int i = 1; i <= columnCount; i++) {
                    result.put(metaData.getColumnName(i), rs.getString(i));
                }
                return result;
            }
            return null;
        });
    }

    public void insert(String query) {
        executeInsert(query);
    }

    public Map<String, Object> update(String query) {
        return executeUpdate(query);
    }

    public void delete(String query, Object... params) {
        String finalQuery = replaceQuestionMarks(query, params);
        executeDelete(finalQuery);
    }

    private String replaceQuestionMarks(String query, Object... params) {
        if (params == null || params.length == 0) {
            return query;
        }
        String result = query;
        for (Object param : params) {
            result = result.replaceAll("\\?", "'" + param + "'");
        }
        return result;
    }
}
