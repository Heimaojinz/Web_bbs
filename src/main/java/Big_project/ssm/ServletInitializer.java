package Big_project.ssm;

import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

public class ServletInitializer extends SpringBootServletInitializer {

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        Utility.log("给 tomcat 用的生产级 servlet 入口");
        return application.sources(SsmApplication.class);
    }
}
