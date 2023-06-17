package tool.utils;

import static tool.utils.UIDGenerator.generateNewPassword;

public class SendMailSSL{    
 public static void main(String[] args) {    
                 String password = generateNewPassword();
             Mailer.send("fptswp@gmail.com","fijqfrjphrrkenna", "ducvaxo@gmail.com","Bird Club","Your password have been update: "+password, "http://localhost:8080/chimowners/member_checkout.jsp");
 }    
}    