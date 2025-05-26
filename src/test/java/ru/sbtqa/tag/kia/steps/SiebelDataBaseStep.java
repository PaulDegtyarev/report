package ru.sbtqa.tag.kia.steps;

import io.qameta.allure.Step;
import ru.sbtqa.tag.kia.db.SiebelDataBaseDao;

import java.util.Map;

public class SiebelDataBaseStep {

    private final SiebelDataBaseDao siebelDataBaseDao;

    public SiebelDataBaseStep(SiebelDataBaseDao siebelDataBaseDao) {
        this.siebelDataBaseDao = siebelDataBaseDao;
    }

    @Step("Выполнить поиск в БД Сибеля.")
    public Map<String, String> select(String selectQuery, Object... param) {
        return siebelDataBaseDao.select(selectQuery, param);
    }

    @Step("Выполнить вставку в БД Сибеля.")
    public void insert(String insertQuery) {
        siebelDataBaseDao.insert(insertQuery);
    }
}
