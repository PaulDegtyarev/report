package ru.sbtqa.tag.kia.pages;


import org.openqa.selenium.*;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.io.File;

public class VehiclesPage {

    private final WebDriverWait wait;
    private static final By VEHICLES_TAB_SELECTOR = By.xpath("//a[contains(., 'Vehicles')]");
    private static final By RELATIONSHIP_TAB_SELECTOR = By.xpath("//a[text()='Обработка отношений']");
    private static final By FILE_DOWNLOAD_BUTTON_SELECTOR = By.xpath("//input[@type='file' and @aria-label='Загрузка файла:Загрузить']");
    private static final By FILE_REFRESH_BUTTON_AFTER_DOWNLOAD_SELECTOR = By.xpath("//button[@title='Загрузка файла:Обновить']");
    private static final By BUTTON_TO_RUN_PROCESSING_FILE_AFTER_DOWNLOAD_SELECTOR = By.xpath("//button[@aria-label='Загрузка файла:Выполнить']");
    private static final By VIN_LINE_SELECTOR = By.xpath("//input[@aria-label='VIN']");
    private static final String FIRST_LINE_AFTER_DOWNLOAD_FILE_ID_SELECTOR = "1_s_3_l_Id";
    private static final Integer EXPECTED_WAITING_TO_REFRESH_TIME = 5000;
    private static final String VIN_TO_SEARCH_TEMPLATE = "//a[contains(text(),'%s')]";

    public VehiclesPage(WebDriverWait wait) {
        this.wait = wait;
    }

    public void goToRelationshipsTab() {
        waitAndClick(VEHICLES_TAB_SELECTOR);
        waitAndClick(RELATIONSHIP_TAB_SELECTOR);
    }

    public void uploadFile(String path) {
        WebElement fileInput = wait.until(ExpectedConditions.presenceOfElementLocated(FILE_DOWNLOAD_BUTTON_SELECTOR));
        fileInput.sendKeys(new File(path).getAbsolutePath());
    }

    public void runProcessing() {
        waitAndClick(BUTTON_TO_RUN_PROCESSING_FILE_AFTER_DOWNLOAD_SELECTOR);
    }

    public void clickOnRequestId() {
        WebElement refreshButton = wait.until(ExpectedConditions.elementToBeClickable(FILE_REFRESH_BUTTON_AFTER_DOWNLOAD_SELECTOR));
        long start = System.currentTimeMillis();
        wait.until(driver -> System.currentTimeMillis() - start >= EXPECTED_WAITING_TO_REFRESH_TIME);
        refreshButton.click();
        wait.until(ExpectedConditions.presenceOfElementLocated(By.id(FIRST_LINE_AFTER_DOWNLOAD_FILE_ID_SELECTOR))).getText();
    }

    public void searchVin(String vin) {
        waitAndClick(VEHICLES_TAB_SELECTOR);
        WebElement vinInput = wait.until(ExpectedConditions.elementToBeClickable(VIN_LINE_SELECTOR));
        vinInput.sendKeys(vin);
        vinInput.sendKeys(Keys.ENTER);
    }

    public void openCarByVin(String vin) {
        waitAndClick(By.xpath(String.format(VIN_TO_SEARCH_TEMPLATE, vin)));
    }


    private void waitAndClick(By locator) {
        int attempts = 0;
        while (attempts < 3) {
            try {
                wait.until(ExpectedConditions.elementToBeClickable(locator)).click();
                return;
            } catch (StaleElementReferenceException e) {
                attempts++;
                if (attempts == 3) throw e;
            }
        }
    }
}
