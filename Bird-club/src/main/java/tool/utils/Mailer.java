package tool.utils;

import java.util.Properties;    
import javax.mail.*;    
import javax.mail.internet.*;      
public class Mailer{  
    public static void send(final String from, final String password, String to, String subject, String msg, String attachedWebsiteLink) {
    // Get properties object
    Properties props = new Properties();
    props.put("mail.smtp.host", "smtp.gmail.com");
    props.put("mail.smtp.socketFactory.port", "465");
    props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
    props.put("mail.smtp.auth", "true");
    props.put("mail.smtp.port", "465");
    // get Session
    Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
        @Override
        protected PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication(from, password);
        }
    });
    // compose message
    try {
        MimeMessage message = new MimeMessage(session);
        message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
        message.setSubject(subject);

        // Create the HTML content with the link
        String htmlContent = "<html><body><p>" + msg + "</p><p>Click <a href='" + attachedWebsiteLink + "'>here</a>Visit our website!</p></body></html>";
        message.setContent(htmlContent, "text/html");

        // send message
        Transport.send(message);
    } catch (MessagingException e) {
        throw new RuntimeException(e);
    }
}  
}  