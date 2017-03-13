(add-to-classpath "<path to selenium-server-standalone-3.3.0.jar>")

(defvar *browser* (jnew "org.openqa.selenium.chrome.ChromeDriver"))
(jcall "get" *browser* "http://www.google.com")
(defvar *query* (jcall "findElement" *browser* (jstatic "cssSelector" "org.openqa.selenium.By" "#lst-ib")))

;; Java exception 'java.lang.NoSuchMethodException: No applicable method named sendKeys found in org.openqa.selenium.WebElement or org.openqa.selenium.remote.RemoteWebElement'.
(jcall "sendKeys" *query* "sample")

(jcall "quit" *browser*)
