package ru.sbtqa.tag.kia.steps;

import io.qameta.allure.Step;
import ru.sbtqa.tag.kia.pages.OwnershipPage;

public class OwnerShipStep {

    private final OwnershipPage ownershipPage;

    public OwnerShipStep(OwnershipPage ownershipPage) {
        this.ownershipPage = ownershipPage;
    }

    @Step("Открыть историю владения")
    public void openOwnershipHistory() {
        ownershipPage.openOwnershipHistory();
    }
}
