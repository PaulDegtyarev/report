package ru.sbtqa.tag.kia.manager;


import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.WebDriverWait;
import ru.sbtqa.tag.kia.db.SiebelDataBaseDao;
import ru.sbtqa.tag.kia.pages.*;
import ru.sbtqa.tag.kia.steps.*;

public class InitializeManager {

    private static final ThreadLocal<WebDriver> driver = new ThreadLocal<>();

    private static final ThreadLocal<ContactsHomePage> contactsHomePage = new ThreadLocal<>();
    private static final ThreadLocal<LoginPage> loginPage = new ThreadLocal<>();
    private static final ThreadLocal<VehiclesPage> vehiclesPage = new ThreadLocal<>();
    private static final ThreadLocal<ClientPage> clientPage = new ThreadLocal<>();
    private static final ThreadLocal<OwnershipPage> ownershipPage = new ThreadLocal<>();

    private static final ThreadLocal<ContactsHomePageStep> contactHomePageStep = new ThreadLocal<>();
    private static final ThreadLocal<LoginStep> loginStep = new ThreadLocal<>();
    private static final ThreadLocal<SiebelDataBaseStep> siebelDataBaseStep = new ThreadLocal<>();
    private static final ThreadLocal<VehiclesStep> vehiclesStep = new ThreadLocal<>();
    private static final ThreadLocal<ClientPageStep> clientPageStep = new ThreadLocal<>();
    private static final ThreadLocal<OwnerShipStep> ownerShipStep = new ThreadLocal<>();

    private static final ThreadLocal<SiebelDataBaseDao> siebelDataBaseDao = new ThreadLocal<>();

    public static void initContext() {
        System.setProperty("webdriver.chrome.driver", "src/test/resources/chromedriver.exe");
        WebDriver chromeDriver = new ChromeDriver();
        chromeDriver.manage().window().maximize();
        InitializeManager.driver.set(chromeDriver);

        siebelDataBaseDao.set(new SiebelDataBaseDao());

        contactsHomePage.set(new ContactsHomePage(getDriver(), new WebDriverWait(getDriver(), 30L)));
        loginPage.set(new LoginPage(getDriver(), new WebDriverWait(getDriver(), 30L)));
        vehiclesPage.set(new VehiclesPage(new WebDriverWait(getDriver(), 30L)));
        clientPage.set(new ClientPage(new WebDriverWait(getDriver(), 30L)));
        ownershipPage.set(new OwnershipPage(new WebDriverWait(getDriver(), 30L)));

        contactHomePageStep.set(new ContactsHomePageStep(getContactsHomePage()));
        loginStep.set(new LoginStep(getLoginPage()));
        siebelDataBaseStep.set(new SiebelDataBaseStep(getSiebelDataBaseDao()));
        vehiclesStep.set(new VehiclesStep(getVehiclesPage()));
        clientPageStep.set(new ClientPageStep(getClientPage()));
        ownerShipStep.set(new OwnerShipStep(getOwnershipPage()));
    }

    public static void clearContext() {
        getLoginPage().logout();

        contactsHomePage.remove();
        loginPage.remove();
        vehiclesPage.remove();
        clientPage.remove();
        ownershipPage.remove();

        contactHomePageStep.remove();
        loginStep.remove();
        siebelDataBaseStep.remove();
        vehiclesStep.remove();
        clientPageStep.remove();
        ownerShipStep.remove();

        siebelDataBaseDao.remove();

        getDriver().quit();
        driver.remove();
    }

    public static WebDriver getDriver() {
        return driver.get();
    }

    static ContactsHomePage getContactsHomePage() {
        return contactsHomePage.get();
    }

    static LoginPage getLoginPage() {
        return loginPage.get();
    }

    static ClientPage getClientPage() {
        return clientPage.get();
    }

    static VehiclesPage getVehiclesPage() {
        return vehiclesPage.get();
    }

    static OwnershipPage getOwnershipPage() {
        return ownershipPage.get();
    }

    public static ContactsHomePageStep getContactHomePageStep() {
        return contactHomePageStep.get();
    }

    public static LoginStep getLoginStep() {
        return loginStep.get();
    }

    public static SiebelDataBaseStep getSiebelDataBaseStep() {
        return siebelDataBaseStep.get();
    }

    public static SiebelDataBaseDao getSiebelDataBaseDao() {
        return siebelDataBaseDao.get();
    }

    public static VehiclesStep getVehiclesStep() {
        return vehiclesStep.get();
    }

    public static ClientPageStep getClientPageStep() {
        return clientPageStep.get();
    }

    public static OwnerShipStep getOwnerShipStep() {
        return ownerShipStep.get();
    }
}
