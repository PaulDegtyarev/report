package ru.sbtqa.tag.kia.pages;


import org.openqa.selenium.*;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class ContactsHomePage {

    private final WebDriver driver;
    private final WebDriverWait wait;

    private final static By contactsMenuTab = By.cssSelector("a.ui-tabs-anchor[id*='ui-id'] span.siebui-icon-contacts_icon");
    private final static By contactsTab = By.xpath("//a[contains(text(),'Contacts Home')]");
    private final static By firstNameField = By.xpath("//input[@aria-label='First Name']");
    private final static By lastNameField = By.xpath("//input[@aria-label='Last Name']");

    private final static By emailToFillField = By.xpath("//input[@aria-label='Email']");
    private final static By phoneToFillField = By.xpath("//input[@aria-label='Phone']");
    private final static By createButton = By.id("s_3_1_0_0_Ctrl");

    private final static By searchButton = By.id("s_3_1_2_0_Ctrl");
    private final static By editButton = By.id("1_s_5_l_Person_UId");
    private final static By saveButton = By.id("s_2_1_11_0_Ctrl");
    private final static By loadingLine = By.xpath("//div[contains(@class, 'siebui-loading')]");
    private final static By middleNameField = By.xpath("//input[@aria-label='Middle Name']");
    private final static By workPhoneField = By.xpath("//input[@aria-label='Work Phone']");
    private final static By emailInClient = By.xpath("//input[@aria-label='Email Address']");
    private final static By phonelInClient = By.xpath("//input[@aria-label='Mobile Phone']");
    private final static By genderDropdown = By.name("s_5_1_39_0");
    private final static By genderDropdownIcon = By.id("s_5_1_39_0_icon");
    private final static By marketingAgreementCheckbox = By.xpath("//input[@aria-label='Marketing Agreement']");
    private final static By researchAgreementCheckbox = By.xpath("//input[@aria-label='Research Agreement']");
    private final static By personUidField = By.xpath("//input[@aria-label='Person UId']");
    private static final String DROPDOWN_TEMPLATE = "//div[contains(@class, 'ui-menu-item-wrapper') and contains(text(), '%s')]";
    private static final String CHECKBOX_TEMPLATE = "//ul[contains(@class,'ui-menu')]//div[normalize-space(text())='%s']";
    private static final String CLIENT_SEARCHED_LINE_TEMPLATE = "//tr[contains(., '%s')]";
    private static final String VALUE_HTML_TAG = "value";

    public ContactsHomePage(WebDriver driver, WebDriverWait wait) {
        this.driver = driver;
        this.wait = wait;
    }

    public void refreshPage() {
        driver.navigate().refresh();
        wait.until(ExpectedConditions.presenceOfElementLocated(contactsMenuTab));
    }

    public void goToContactsHome() {
        try {
            WebElement contactTab = wait.until(ExpectedConditions.presenceOfElementLocated(contactsMenuTab));
            wait.until(ExpectedConditions.elementToBeClickable(contactTab)).click();

            WebElement contactsHome = wait.until(ExpectedConditions.presenceOfElementLocated(contactsTab));
            wait.until(ExpectedConditions.elementToBeClickable(contactsHome)).click();
        } catch (StaleElementReferenceException | TimeoutException e) {
            refreshPage();
            goToContactsHome();
        }
    }

    public void fillContact(String firstName, String lastName, String emailOrPhone) {
        try {
            WebElement firstNameElement = wait.until(ExpectedConditions.elementToBeClickable(firstNameField));
            clearAndSendKeys(firstNameElement, firstName);

            WebElement lastNameElement = wait.until(ExpectedConditions.elementToBeClickable(lastNameField));
            clearAndSendKeys(lastNameElement, lastName);

            if (emailOrPhone.contains("@")) {
                WebElement emailElement = wait.until(ExpectedConditions.elementToBeClickable(emailToFillField));
                clearAndSendKeys(emailElement, emailOrPhone);
            } else {
                WebElement phoneElement = wait.until(ExpectedConditions.elementToBeClickable(phoneToFillField));
                clearAndSendKeys(phoneElement, emailOrPhone);
            }
        } catch (StaleElementReferenceException e) {
            fillContact(firstName, lastName, emailOrPhone);
        }
    }

    private void clearAndSendKeys(WebElement element, String text) {
        element.clear();
        wait.until(d -> {
            element.sendKeys(text);
            return element.getAttribute(VALUE_HTML_TAG).equals(text);
        });
    }

    public void clickCreate() {
        try {
            WebElement createBtn = wait.until(ExpectedConditions.elementToBeClickable(createButton));
            createBtn.click();

            handleConsentAlert();

            waitForSiebelLoading();
        } catch (TimeoutException e) {
            throw new RuntimeException("Не удалось создать контакт: " + e.getMessage());
        }
    }

    private void handleConsentAlert() {
        try {
            WebDriverWait alertWait = new WebDriverWait(driver, 3L);
            Alert alert = alertWait.until(ExpectedConditions.alertIsPresent());

            alert.accept();
        } catch (TimeoutException ignored) {
        }
    }

    private void waitForSiebelLoading() {
        wait.until(ExpectedConditions.invisibilityOfElementLocated(loadingLine));
    }

    public void searchContact(String searchValue) {
        boolean isEmail = searchValue.contains("@");

        By inputField = isEmail ? emailToFillField : phoneToFillField;

        WebElement input = wait.until(ExpectedConditions.visibilityOfElementLocated(inputField));
        input.clear();
        input.sendKeys(searchValue);

        driver.findElement(searchButton).click();

        By searchedLine = By.xpath(String.format(CLIENT_SEARCHED_LINE_TEMPLATE, searchValue));
        wait.until(ExpectedConditions.presenceOfElementLocated(searchedLine)).click();
    }

    public void clickEditButton() {
        wait.until(ExpectedConditions.elementToBeClickable(editButton)).click();
        handlePrivacyAlert();
    }

    public void clickSaveButton() {
        wait.until(ExpectedConditions.elementToBeClickable(saveButton)).click();
    }

    public void updateContactDetails(String firstName, String middleName,
                                     String lastName, String gender,
                                     String email, String marketingAgreement,
                                     String researchAgreement, String workPhone,
                                     String mobilePhone) {
        wait.until(webDriver -> ((JavascriptExecutor) webDriver)
                .executeScript("return document.readyState").equals("complete"));

        try {
            Thread.sleep(1000);
        } catch (InterruptedException e) {
            throw new RuntimeException(e.getMessage());
        }

        try {
            setFieldValue(firstNameField, firstName);
            setFieldValue(middleNameField, middleName);
            setFieldValue(lastNameField, lastName);

            selectDropdownValue(genderDropdown, gender);

            WebElement emailElement = wait.until(ExpectedConditions.presenceOfElementLocated(emailInClient));
            WebElement phoneElement = wait.until(ExpectedConditions.presenceOfElementLocated(phonelInClient));

            String currentEmail = emailElement.getAttribute(VALUE_HTML_TAG);
            String currentPhone = phoneElement.getAttribute(VALUE_HTML_TAG);

            if (currentEmail == null || currentEmail.trim().isEmpty()) {
                setOptionalField(emailInClient, email);
            }
            if (currentPhone == null || currentPhone.trim().isEmpty()) {
                setOptionalField(phonelInClient, mobilePhone);
            }

            setOptionalField(workPhoneField, workPhone);

            setCheckbox(researchAgreementCheckbox, researchAgreement);
            setCheckbox(marketingAgreementCheckbox, marketingAgreement);
        } catch (StaleElementReferenceException e) {
            updateContactDetails(firstName, middleName, lastName, gender,
                    email, marketingAgreement, workPhone, researchAgreement,
                    mobilePhone);
        }
    }

    public String getPersonUid() {
        WebElement personUidInput = wait.until(ExpectedConditions.visibilityOfElementLocated(personUidField));
        return personUidInput.getAttribute(VALUE_HTML_TAG);
    }

    private void setFieldValue(By locator, String value) {
        WebElement field = wait.until(ExpectedConditions.visibilityOfElementLocated(locator));
        field.clear();
        field.sendKeys(value);
    }

    private void setOptionalField(By locator, String value) {
        if (value != null) {
            setFieldValue(locator, value);
        }
    }

    private void selectDropdownValue(By inputLocator, String value) {
        WebElement input = wait.until(ExpectedConditions.elementToBeClickable(inputLocator));
        WebElement dropdownIcon = wait.until(ExpectedConditions.elementToBeClickable(genderDropdownIcon));

        dropdownIcon.click();

        By optionLocator = By.xpath(String.format(DROPDOWN_TEMPLATE, value));

        WebElement option = wait.until(ExpectedConditions.elementToBeClickable(optionLocator));
        option.click();

        wait.until(driver -> input.getAttribute("value").equals(value));
    }

    private void setCheckbox(By checkboxFieldLocator, String value) {
        WebElement field = wait.until(ExpectedConditions.elementToBeClickable(checkboxFieldLocator));

        field.click();

        String iconId = field.getAttribute("aria-describedby").trim();
        if (!iconId.isEmpty()) {
            WebElement dropdownIcon = driver.findElement(By.id(iconId));
            dropdownIcon.click();
        }

        try {
            Thread.sleep(500);
        } catch (InterruptedException e) {
            throw new RuntimeException(e.getMessage());
        }

        By optionLocator = By.xpath(String.format(CHECKBOX_TEMPLATE, value));
        WebElement option = wait.until(ExpectedConditions.visibilityOfElementLocated(optionLocator));
        option.click();
    }

    private void handlePrivacyAlert() {
        try {
            Alert alert = new WebDriverWait(driver, 10).until(ExpectedConditions.alertIsPresent());
            alert.accept();
        } catch (TimeoutException ignored) {
        }
    }
}
