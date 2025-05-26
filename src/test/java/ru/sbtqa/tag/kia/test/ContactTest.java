package ru.sbtqa.tag.kia.test;


import io.qameta.allure.junit5.AllureJunit5;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import ru.sbtqa.tag.kia.data.DefaultValues;
import ru.sbtqa.tag.kia.data.route.tk5.Sql;
import ru.sbtqa.tag.kia.data.attribute.tk5.ClientAttribute;
import ru.sbtqa.tag.kia.manager.GenerateDataManager;
import ru.sbtqa.tag.kia.manager.InitializeManager;
import ru.sbtqa.tag.kia.manager.SqlQueryReadManager;

import java.util.Map;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static ru.sbtqa.tag.kia.data.Url.SIEBEL_URL;
import static ru.sbtqa.tag.kia.data.route.tk5.Sql.*;
import static ru.sbtqa.tag.kia.data.response.tk5.ExpectedResponse.MARKETING_AGREEMENT_RESPONSE;
import static ru.sbtqa.tag.kia.data.response.tk5.ExpectedResponse.RESEARCH_AGREEMENT_RESPONSE;

@ExtendWith(AllureJunit5.class)
@DisplayName("Тесткейс №5")
public class ContactTest extends InitializeManager {

    ThreadLocal<String> rowId = new ThreadLocal<>();
    ThreadLocal<String> parRowId = new ThreadLocal<>();
    ThreadLocal<String> personUidDbParameter = new ThreadLocal<>();
    ThreadLocal<String> phoneNumber = new ThreadLocal<>();

    @BeforeEach
    public void before() {
        System.out.println("Начало инициализации контекста");
        InitializeManager.initContext();
        InitializeManager.getDriver().get(SIEBEL_URL);
        System.out.println("Конец инициализации контекста");
    }

    @AfterEach
    public void after() {
        getSiebelDataBaseDao().delete(
                SqlQueryReadManager.readSqlFromResource(Sql.DELETE_CLIENTS_BY_ROW_ID),
                rowId.get()
        );

        getSiebelDataBaseDao().delete(
                SqlQueryReadManager.readSqlFromResource(Sql.DELETE_CLIENTS_FROM_PHONES_DB),
                phoneNumber.get()
        );

        getSiebelDataBaseDao().delete(
                SqlQueryReadManager.readSqlFromResource(Sql.DELETE_CLIENTS_FROM_SYSTEM_CONTACT_TABLE),
                personUidDbParameter.get()
        );

        getSiebelDataBaseDao().delete(
                SqlQueryReadManager.readSqlFromResource(Sql.DELETE_CLIENTS_BY_PAR_ROW_ID),
                parRowId.get()
        );

        rowId.remove();
        phoneNumber.remove();
        personUidDbParameter.remove();
        parRowId.remove();

        InitializeManager.clearContext();
    }

    @Test
    @DisplayName("Кейс №9. Создание клиента.")
    void testCreateContact() {
        getLoginStep().login();

        String firstName = GenerateDataManager.generateFirstName();
        String lastName = GenerateDataManager.generateLastName();
        boolean useEmail = Math.random() > DefaultValues.PROBABILITY;
        String emailOrPhone = useEmail ? GenerateDataManager.generateEmail() : GenerateDataManager.generatePhone();

        getContactHomePageStep().create(firstName, lastName, emailOrPhone);
        String personUid = getContactHomePageStep().getPersonUid();
        String selectQuery = SqlQueryReadManager.readSqlFromResource(SELECT_CHECK);
        Map<String, String> result = getSiebelDataBaseDao().select(selectQuery, personUid);
        rowId.set(result.get(ClientAttribute.ROW_ID));
        personUidDbParameter.set(personUid);
        parRowId.set(result.get(ClientAttribute.PAR_ROW_ID));
        phoneNumber.set(result.get(ClientAttribute.PHONE_NUMBER));
    }

    @Test
    @DisplayName("Кейс №10. Создание и обновление клиента.")
    void testCreateAndUpdateContact() {
        getLoginStep().login();

        String firstName = GenerateDataManager.generateFirstName();
        String lastName = GenerateDataManager.generateLastName();

        boolean useEmail = Math.random() > DefaultValues.PROBABILITY;
        String emailOrPhone = useEmail ? GenerateDataManager.generateEmail() : GenerateDataManager.generatePhone();

        getContactHomePageStep().create(firstName, lastName, emailOrPhone);

        String updatedEmail = useEmail ? emailOrPhone : null;
        String updatedPhone = useEmail ? DefaultValues.UPDATED_PHONE : emailOrPhone;

        updatedEmail = updatedEmail == null ? DefaultValues.UPDATED_EMAIL + GenerateDataManager.generateEmail() : updatedEmail;

        boolean isMaleOrFemale = Math.random() > DefaultValues.PROBABILITY;
        String updatedFirstName = String.format(DefaultValues.UPDATED_FIRSTNAME, firstName);
        String updatedMiddleName = DefaultValues.MIDDLE_NAME;
        String updatedLastName = String.format(DefaultValues.LAST_NAME, lastName);
        String updatedGender = isMaleOrFemale ? DefaultValues.WOMAN : DefaultValues.MALE;
        String updatedWorkPhone = DefaultValues.UPDATED_WORK_PHONE;

        getContactHomePageStep().update(updatedFirstName, updatedMiddleName, updatedLastName,
                updatedGender, updatedEmail, DefaultValues.UPDATED_MARKETING_AGREEMENT,
                DefaultValues.UPDATED_RESEARCH_AGREEMENT, updatedWorkPhone, updatedPhone);

        String personUid = getContactHomePageStep().fetchPersonUid();
        System.out.println(personUid);

        getContactHomePageStep().clickSaveButton();

        String selectQuery = SqlQueryReadManager.readSqlFromResource(SELECT_CHECK);

        Map<String, String> result = getSiebelDataBaseStep().select(selectQuery, personUid);
        System.out.println(result.values());

        assertEquals(updatedLastName, result.get(ClientAttribute.LAST_NAME));
        assertEquals(updatedFirstName, result.get(ClientAttribute.FIRST_NAME));
        assertEquals(updatedMiddleName, result.get(ClientAttribute.MIDDLE_NAME));
        assertEquals(updatedGender, result.get(ClientAttribute.GENDER));
        assertEquals(updatedPhone, result.get(ClientAttribute.PHONE_NUMBER));
        assertEquals(updatedEmail, result.get(ClientAttribute.EMAIL_ADDRESS));
        assertEquals(updatedWorkPhone, result.get(ClientAttribute.WORK_PHONE));
        assertEquals(MARKETING_AGREEMENT_RESPONSE, result.get(ClientAttribute.MARKETING_AGREEMENT));
        assertEquals(RESEARCH_AGREEMENT_RESPONSE, result.get(ClientAttribute.RESEARCH_AGREEMENT));

        rowId.set(result.get(ClientAttribute.ROW_ID));
        personUidDbParameter.set(personUid);
        parRowId.set(result.get(ClientAttribute.PAR_ROW_ID));
        phoneNumber.set(result.get(ClientAttribute.PHONE_NUMBER));
    }
}