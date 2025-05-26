package ru.sbtqa.tag.kia.db;

import java.sql.*;
import java.util.HashMap;
import java.util.Map;

public abstract class DataBaseDao {
    protected abstract String getJdbcUrl();

    protected abstract String getUsername();

    protected abstract String getPassword();

    protected abstract String getDriverClassName();

    protected Connection getConnection() throws SQLException {
        return DriverManager.getConnection(getJdbcUrl(), getUsername(), getPassword());
    }

    protected <T> T executeSelect(String sql, ResultSetMapper<T> mapper) {
        try (Connection conn = getConnection(); Statement stmt = conn.createStatement(); ResultSet rs = stmt.executeQuery(sql)) {

            return mapper.map(rs);
        } catch (SQLException e) {
            throw new RuntimeException(String.format("Ошибка при выполнении select - %s", e.getMessage()));
        }
    }

    protected void executeInsert(String sql) {
        try (Connection conn = getConnection(); Statement stmt = conn.createStatement()) {

            conn.setAutoCommit(false);

            String[] queries = sql.split(";\\s*\n");

            try {
                for (String query : queries) {
                    if (!query.trim().isEmpty()) {
                        stmt.addBatch(query.trim());
                    }
                }

                int[] total = stmt.executeBatch();

                conn.commit();

                System.out.printf("Выполнено %d вставок%n", total.length);
            } catch (SQLException e) {
                try {
                    conn.rollback();
                } catch (SQLException rollbackEx) {
                    throw new RuntimeException("Ошибка при откате транзакции", rollbackEx);
                }
                throw e;
            }
        } catch (SQLException e) {
            throw new RuntimeException("Ошибка Базы Данных во время выполнения insert: " + e.getMessage(), e);
        }
    }

    protected Map<String, Object> executeUpdate(String sql) {
        try (Connection conn = getConnection(); Statement stmt = conn.createStatement()) {

            conn.setAutoCommit(false);
            int updatedRows = stmt.executeUpdate(sql);

            Map<String, Object> result = new HashMap<>();
            result.put("updatedRows", updatedRows);

            conn.commit();
            return result;
        } catch (SQLException e) {
            throw new RuntimeException("Ошибка Базы Данных во время выполнения update", e);
        }
    }

    protected void executeDelete(String sql) {
        System.out.println(sql);
        try (Connection conn = getConnection(); Statement stmt = conn.createStatement()) {

            conn.setAutoCommit(false);

            String[] queries = sql.split(";\\s*\n");

            try {
                for (String query : queries) {
                    if (!query.trim().isEmpty()) {
                        stmt.addBatch(query.trim());
                    }
                }

                int[] total = stmt.executeBatch();

                conn.commit();

                System.out.printf("Выполнено %d удалений%n", total.length);
            } catch (SQLException e) {
                try {
                    conn.rollback();
                } catch (SQLException rollbackEx) {
                    throw new RuntimeException("Ошибка при откате транзакции", rollbackEx);
                }
                throw e;
            }
        } catch (SQLException e) {
            throw new RuntimeException("Ошибка Базы Данных во время выполнения delete: " + e.getMessage(), e);
        }
    }

    @FunctionalInterface
    protected interface ResultSetMapper<T> {
        T map(ResultSet rs) throws SQLException;
    }
}
