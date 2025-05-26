package ru.sbtqa.tag.kia.pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;


public class ClientPage {

    private final WebDriverWait wait;

    private final By leadsTab = By.xpath("//a[@data-tabindex='tabScreen2'][contains(text(),'Leads')]");
    private final By statusCell = By.id("1_s_5_l_Status");

    public ClientPage(WebDriverWait wait) {
        this.wait = wait;
    }

    public void openLeadsTab() {
        wait.until(ExpectedConditions.elementToBeClickable(leadsTab)).click();
    }

    public String getLeadStatus() {
        WebElement statusElement = wait.until(ExpectedConditions.presenceOfElementLocated(statusCell));
        return statusElement.getText();
    }
}
