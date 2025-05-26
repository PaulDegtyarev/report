package ru.sbtqa.tag.kia.manager;

import java.util.Random;

public class GenerateDataManager {

    private static final Random random = new Random();

    public static String generateFirstName() {
        return "FirstName" + random.nextInt(1000);
    }

    public static String generateLastName() {
        return "LastName" + random.nextInt(1000);
    }

    public static String generateEmail() {
        return "user" + random.nextInt(1000) + "@test.com";
    }

    public static String generatePhone() {
        return "+7" + (900000000 + random.nextInt(99999999));
    }
}
