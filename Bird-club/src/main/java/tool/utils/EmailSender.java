
package tool.utils;

public class EmailSender {
       public void sendEmail(String receiverEmail, String subject, String content, String link) {
             Mailer.send("fptswp@gmail.com","fijqfrjphrrkenna",receiverEmail,subject,content,link); 
       }
}
