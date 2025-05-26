package ru.sbtqa.tag.kia.steps;

import io.qameta.allure.Step;
import ru.sbtqa.tag.kia.pages.VehiclesPage;

public class VehiclesStep {

    private final VehiclesPage vehiclesPage;

    public VehiclesStep(VehiclesPage vehiclesPage) {
        this.vehiclesPage = vehiclesPage;
    }

    @Step("Перейти на вкладку 'Обработка отношений'")
    public void goToRelationshipsTab() {
        vehiclesPage.goToRelationshipsTab();
    }

    @Step("Загрузить файл")
    public void uploadFile(String filePath) {
        vehiclesPage.uploadFile(filePath);
        vehiclesPage.runProcessing();
    }

    @Step("Нажать на requestId созданной записи")
    public void clickOnRequestId() {
        vehiclesPage.clickOnRequestId();
    }

    @Step("Нажать на requestId созданной записи")
    public void searchAndOpenByVin() {
        String testVin = "TESTCAR1BM0004637";
        vehiclesPage.searchVin(testVin);
        vehiclesPage.openCarByVin(testVin);
    }
}
