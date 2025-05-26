package ru.sbtqa.tag.kia.test;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import ru.sbtqa.tag.kia.data.response.webmiss.ExpectedResponse;
import ru.sbtqa.tag.kia.data.route.webmiss.Sql;
import ru.sbtqa.tag.kia.data.attribute.webmiss.CarOwnershipAttribute;
import ru.sbtqa.tag.kia.manager.InitializeManager;
import ru.sbtqa.tag.kia.manager.SqlQueryReadManager;

import java.util.Map;

import static org.junit.jupiter.api.Assertions.*;
import static ru.sbtqa.tag.kia.data.Url.SIEBEL_URL;
import static ru.sbtqa.tag.kia.data.route.webmiss.Csv.WEBMISS_BIND;

@DisplayName("Отвязка Webmiss")
public class WebmissTest extends InitializeManager {

    @BeforeEach
    void before() {
        InitializeManager.initContext();
        InitializeManager.getDriver().get(SIEBEL_URL);
        getSiebelDataBaseDao().insert(SqlQueryReadManager.readSqlFromResource(Sql.INSERT_CLIENTS));
        getSiebelDataBaseDao().insert(SqlQueryReadManager.readSqlFromResource(Sql.INSERT_CARS));
        getSiebelDataBaseDao().insert(SqlQueryReadManager.readSqlFromResource(Sql.INSERT_WEBMISS));
    }

    @AfterEach
    void deleteTestData() {
        getSiebelDataBaseDao().delete(SqlQueryReadManager.readSqlFromResource(Sql.DELETE_CLIENTS));
        getSiebelDataBaseDao().delete(SqlQueryReadManager.readSqlFromResource(Sql.DELETE_CARS));
        getSiebelDataBaseDao().delete(SqlQueryReadManager.readSqlFromResource(Sql.DELETE_WEBMISS));
        InitializeManager.clearContext();
    }

    @Test
    @DisplayName("Кейс 1. Дата отвязки в следующем месяце.")
    void linkOwnershipTest() {
        getLoginStep().login();
        getVehiclesStep().goToRelationshipsTab();
        getVehiclesStep().uploadFile(WEBMISS_BIND);
        getVehiclesStep().clickOnRequestId();
        getVehiclesStep().searchAndOpenByVin();
        getOwnerShipStep().openOwnershipHistory();
        Map<String, String> carOwnership = getSiebelDataBaseStep().select(SqlQueryReadManager.readSqlFromResource(Sql.SELECT_CHECK));

        assertNotNull(carOwnership);

        String relationshipType = carOwnership.get(CarOwnershipAttribute.REQUEST_RELATIONSHIP_TYPE);
        String requestActiveFlag = carOwnership.get(CarOwnershipAttribute.REQUEST_ACTIVE_FLAG);
        String requestEndDate = carOwnership.get(CarOwnershipAttribute.REQUEST_END_DATE);
        String sourceSystem = carOwnership.get(CarOwnershipAttribute.SOURCE_SYSTEM);
        String sourceSystemInfo = carOwnership.get(CarOwnershipAttribute.SOURCE_SYSTEM_INFO);
        String relationshipChangeFlag = carOwnership.get(CarOwnershipAttribute.RELATIONSHIP_CHANGE_FLAG);
        String finalActiveFlag = carOwnership.get(CarOwnershipAttribute.FINAL_ACTIVE_FLAG);

        assertEquals(ExpectedResponse.RELATIONSHIP_TYPE, relationshipType);
        assertEquals(ExpectedResponse.REQUEST_ACTIVE_FLAG, requestActiveFlag);
        // Подстроить под настоящее время (в июне неликвидно)
        assertEquals(ExpectedResponse.REQUEST_END_DATE, requestEndDate);
        assertEquals(ExpectedResponse.SOURCE_SYSTEM, sourceSystem);
        assertTrue(sourceSystemInfo.matches(ExpectedResponse.SOURCE_SYSTEM_INFO_PATTERN));
        assertEquals(ExpectedResponse.RELATIONSHIP_CHANGE_FLAG, relationshipChangeFlag);
        assertEquals(ExpectedResponse.FINAL_ACTIVE_FLAG, finalActiveFlag);
    }
}
