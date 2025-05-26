package ru.sbtqa.tag.kia.manager;

import io.qameta.allure.Step;

import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.Scanner;

public class SqlQueryReadManager {

    @Step("Прочесть sql-запрос из файла")
    public static String readSqlFromResource(String resourcePath) {
        InputStream inputStream = SqlQueryReadManager.class.getClassLoader().getResourceAsStream(resourcePath);
        if (inputStream == null) {
            throw new RuntimeException("Файл не найден: " + resourcePath);
        }
        try (Scanner scanner = new Scanner(inputStream, StandardCharsets.UTF_8)) {
            return scanner.useDelimiter("\\A").next();
        }
    }
}
