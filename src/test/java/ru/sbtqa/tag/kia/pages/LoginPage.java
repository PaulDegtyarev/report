package ru.sbtqa.tag.kia.pages;


import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class LoginPage {

    private final WebDriver driver;
    private final WebDriverWait wait;

    private final static By usernameInput = By.id("s_swepi_1");
    private final static By passwordInput = By.id("s_swepi_2");
    private final static By loginButton = By.id("s_swepi_22");
    private final static By settingsMenu = By.xpath("//li[@id='tb_0']");
    private final static By logoutButton = By.xpath("//button[contains(@class, 'siebui-btn-logout')]");

    public LoginPage(WebDriver driver, WebDriverWait wait) {
        this.driver = driver;
        this.wait = wait;
    }

    public void login(String username, String password) {
        wait.until(ExpectedConditions.visibilityOfElementLocated(usernameInput)).sendKeys(username);
        driver.findElement(passwordInput).sendKeys(password);
        driver.findElement(loginButton).click();
    }

    public void logout() {
        try {
            wait.until(ExpectedConditions.elementToBeClickable(settingsMenu)).click();

            wait.until(ExpectedConditions.elementToBeClickable(logoutButton)).click();

            wait.until(ExpectedConditions.urlContains("login"));
        } catch (Exception e) {
            throw new RuntimeException("Logout failed: " + e.getMessage());
        }
    }
}
