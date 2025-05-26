package ru.sbtqa.tag.kia.test;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import ru.sbtqa.tag.kia.client.SoapClient;
import ru.sbtqa.tag.kia.data.response.tk3.ExpectedResponse;
import ru.sbtqa.tag.kia.data.route.tk3.Sql;
import ru.sbtqa.tag.kia.data.route.tk3.Wsdl;
import ru.sbtqa.tag.kia.data.attribute.tk3.SrAttribute;
import ru.sbtqa.tag.kia.manager.InitializeManager;
import ru.sbtqa.tag.kia.manager.SqlQueryReadManager;

import java.nio.file.Files;
import java.nio.file.Path;
import java.util.Map;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static ru.sbtqa.tag.kia.data.SoapAction.LEAD_ACTION;
import static ru.sbtqa.tag.kia.data.Url.SIEBEL_SOAP_ENDPOINT;
import static ru.sbtqa.tag.kia.data.Url.SIEBEL_URL;

@DisplayName("Тесткейс №3")
public class LeadTest extends InitializeManager {

    @BeforeEach
    void before() {
        InitializeManager.initContext();
        InitializeManager.getDriver().get(SIEBEL_URL);
        getSiebelDataBaseStep().insert(SqlQueryReadManager.readSqlFromResource(Sql.INSERT_CLIENTS));
        getSiebelDataBaseStep().insert(SqlQueryReadManager.readSqlFromResource(Sql.INSERT_CARS));
    }

    @AfterEach
    void after() {
        getSiebelDataBaseDao().delete(SqlQueryReadManager.readSqlFromResource(Sql.DELETE_CLIENTS));
        getSiebelDataBaseDao().delete(SqlQueryReadManager.readSqlFromResource(Sql.DELETE_CARS));
        InitializeManager.clearContext();
    }

    @Test
    @DisplayName("Раздел 3, 3.1, кейс 1. Создание лида из Website.")
    public void testFullFlow() throws Exception {
        String soapRequest = Files.readString(Path.of(Wsdl.CREATE_HOMEPAGE_LEAD));
        SoapClient.sendSoapRequest(SIEBEL_SOAP_ENDPOINT, LEAD_ACTION, soapRequest);

        Thread.sleep(30_000);
        Map<String, String> queryResult = getSiebelDataBaseStep().select(SqlQueryReadManager.readSqlFromResource(Sql.SELECT_CHECK));

        assertEquals(ExpectedResponse.SR_STATUS, queryResult.get(SrAttribute.STATUS));
        getLoginStep().login();

        getContactHomePageStep().goToContactsHome();

        String phoneNumber = "79998883222";
        getContactHomePageStep().searchContact(phoneNumber);

        getContactHomePageStep().clickEditButton();

        getClientPageStep().openLeadsTab();
        String status = getClientPageStep().getLeadStatus();
        assertEquals(ExpectedResponse.LEAD_STATUS, status);
    }
}
