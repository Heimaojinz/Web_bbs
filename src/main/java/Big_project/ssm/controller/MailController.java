package Big_project.ssm.controller;


import Big_project.ssm.Utility;
import org.springframework.boot.autoconfigure.mail.MailProperties;
import org.springframework.mail.MailException;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

@Component
class AsyncTask {
    private final MailSender sender;
    private final MailProperties mailProperties;

    public AsyncTask(MailSender sender, MailProperties mailProperties) {
        this.sender = sender;
        this.mailProperties = mailProperties;
    }

    public void sendMail(String address, String title, String content) {
        Utility.log("sendMailSync");
        SimpleMailMessage mailMessage = new SimpleMailMessage();
        mailMessage.setFrom(mailProperties.getUsername());
        mailMessage.setSubject(title);
        mailMessage.setTo(address);
        mailMessage.setText(content);
        try {
            sender.send(mailMessage);
        } catch (MailException ex) {
            System.err.println(ex.getMessage());
        }
        Utility.log("sendMailSync end");
    }


    @Async
    public void sendMailAsync(String address, String title, String content) {
        Utility.log("sendMailAsync");
        SimpleMailMessage mailMessage = new SimpleMailMessage();
        mailMessage.setFrom(mailProperties.getUsername());
        mailMessage.setSubject(title);
        mailMessage.setTo(address);
        mailMessage.setText(content);
        try {
            sender.send(mailMessage);
        } catch (MailException ex) {
            System.err.println(ex.getMessage());
        }
        Utility.log("sendMailAsync end");
    }
}


@Controller
public class MailController {
    private AsyncTask async;

    public MailController(AsyncTask async) {
        this.async = async;
    }


    @GetMapping("/mail/index")
    public ModelAndView index() {
        return new ModelAndView("mail/index");
    }

    @PostMapping("/mail/send")
    public ModelAndView send(String address, String title, String content) {
        Utility.log("同步发送邮件开始");

        if (address != null && title != null && content != null) {
            this.async.sendMail(address, title, content);
            Utility.log("同步发送邮件完毕");

        }
        return new ModelAndView("redirect:/mail/index");
    }

    @PostMapping("/mail/send/async")
    public ModelAndView sendAsync(String address, String title, String content) {
        Utility.log("异步发送邮件开始");

        if (address != null && title != null && content != null) {
            this.async.sendMailAsync(address, title, content);
            Utility.log("异步发送邮件完毕");

        }
        return new ModelAndView("redirect:/mail/index");
    }

}
