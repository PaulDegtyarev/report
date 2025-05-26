package ru.sbtqa.tag.kia.pages;


import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;

public class OwnershipPage {

    private final WebDriverWait wait;
    private static final By OWNERSHIP_HISTORY_DROPDOWN_SELECTOR = By.id("j_s_vctrl_div_tabScreen");
    private static final String OWNERSHIP_HISTORY_TEXT_SELECTOR = "История владения";

    public OwnershipPage(WebDriverWait wait) {
        this.wait = wait;
    }

    public void openOwnershipHistory() {
        Select dropdown = new Select(wait.until(ExpectedConditions.elementToBeClickable(OWNERSHIP_HISTORY_DROPDOWN_SELECTOR)));
        dropdown.selectByVisibleText(OWNERSHIP_HISTORY_TEXT_SELECTOR);
    }
}
