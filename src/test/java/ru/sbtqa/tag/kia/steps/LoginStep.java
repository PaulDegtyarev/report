package ru.sbtqa.tag.kia.steps;

import io.qameta.allure.Step;
import ru.sbtqa.tag.kia.pages.LoginPage;

import static ru.sbtqa.tag.kia.data.Credentials.PASSWORD;
import static ru.sbtqa.tag.kia.data.Credentials.USERNAME;

public class LoginStep {

    private final LoginPage loginPage;

    public LoginStep(LoginPage loginPage) {
        this.loginPage = loginPage;
    }

    @Step("Войти в Сибель")
    public void login() {
        loginPage.login(USERNAME, PASSWORD);
    }
}
