
package tool.utils;

public class EmailSender {
       public void sendEmail(String receiverEmail, String content) {
             Mailer.send("fptswp@gmail.com","fijqfrjphrrkenna",receiverEmail,"Notice",content, "https://genshin.hoyoverse.com/en/"); 
       }
}
