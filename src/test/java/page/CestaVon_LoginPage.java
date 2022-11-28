package page;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

public class CestaVon_LoginPage {

	private WebDriver driver;

    public enum loginPageItems {

    	UsernameElement (By.xpath("//input[@name='username']"),
                     	"USERNAME Input"),
    	PasswordElement (By.xpath("//input[@name='password']"),
    					"PASSWORD Input"),
    	LoginButton 	(By.xpath("//button[contains(@class,'loginButton')]"),
    					"LOGIN Button"),
    	PageTitle 		(By.xpath("//span[@class='title']"),
    					"PAGE TITLE"),
    	ErrorMessage 	(null,
    					"ERROR Message"),
        OdhlasitButton  (By.xpath("//li[@id='sign_out_button']"),
                        "ODHLASIT BUTTON")
        ;

    	private String description;
        private By findBy;

        private loginPageItems(By findBy, String description) {
            this.description = description;
            this.findBy = findBy;
        }

        public String getDescription(){
            return description;
        }

        public By getLocator(){
            return findBy;
        }

        public WebElement getElement(WebDriver driver) {
        	return driver.findElement(getLocator());
        }
    }

    public CestaVon_LoginPage(WebDriver driver) {
        this.driver = driver;
    }
    
    public WebElement getErrorMessageElement(String value) {return driver.findElement(getErrorMessageLocator(value));}
    public By getErrorMessageLocator(String value) {return By.xpath("//p[text()='" + value + "']");}




}