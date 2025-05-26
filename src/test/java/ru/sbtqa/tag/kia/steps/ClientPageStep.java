package ru.sbtqa.tag.kia.steps;

import io.qameta.allure.Step;
import ru.sbtqa.tag.kia.pages.ClientPage;

public class ClientPageStep {

    private final ClientPage clientPage;

    public ClientPageStep(ClientPage clientPage) {
        this.clientPage = clientPage;
    }

    @Step("Открыть таб лидов")
    public void openLeadsTab() {
        clientPage.openLeadsTab();
    }

    @Step("Получить статус лида")
    public String getLeadStatus() {
        return clientPage.getLeadStatus();
    }
}
