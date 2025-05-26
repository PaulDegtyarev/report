package ru.sbtqa.tag.kia.steps;

import io.qameta.allure.Step;
import ru.sbtqa.tag.kia.pages.ContactsHomePage;

public class ContactsHomePageStep {

    private final ContactsHomePage contactsHomePage;

    public ContactsHomePageStep(ContactsHomePage contactsHomePage) {
        this.contactsHomePage = contactsHomePage;
    }

    @Step("Создать контакт на UI, по имени, фамилии и телефону/email")
    public String create(String firstName, String lastName, String emailOrPhone) {
        contactsHomePage.goToContactsHome();
        contactsHomePage.fillContact(firstName, lastName, emailOrPhone);
        contactsHomePage.clickCreate();
        return emailOrPhone;
    }

    @Step("Обновить контакт на UI полностью")
    public void update(String updatedFirstName, String updatedMiddleName, String updatedLastName,
                              String updatedGender, String updatedEmail, String updatedMarketingAgreement,
                              String updatedResearchAgreement, String updatedWorkPhone, String updatedPhone) {
        contactsHomePage.updateContactDetails(
                updatedFirstName,
                updatedMiddleName,
                updatedLastName,
                updatedGender,
                updatedEmail,
                updatedMarketingAgreement,
                updatedResearchAgreement,
                updatedWorkPhone,
                updatedPhone);
    }

    @Step("Получить personUid контакта")
    public String fetchPersonUid() {
        return contactsHomePage.getPersonUid();
    }

    @Step("Нажать кнопку сохранить")
    public void clickSaveButton() {
        contactsHomePage.clickSaveButton();
    }

    @Step("Перейти на вкладку Home Contacts")
    public void goToContactsHome() {
        contactsHomePage.goToContactsHome();
    }

    @Step("Найти клиента по номеру телефона")
    public void searchContact(String phoneNumber) {
        contactsHomePage.searchContact(phoneNumber);
    }

    @Step("Нажать кнопку 'Изменить'")
    public void clickEditButton() {
        contactsHomePage.clickEditButton();
    }

    @Step("Получить personUid клиента")
    public String getPersonUid() {
        return contactsHomePage.getPersonUid();
    }
}