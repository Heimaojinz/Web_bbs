package Big_project.ssm;

import com.mysql.cj.jdbc.MysqlDataSource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Utility {
    public static MysqlDataSource getDataSource() {
        MysqlDataSource dataSource = new MysqlDataSource();
        dataSource.setUser("root");
        dataSource.setPassword("12345");
        dataSource.setServerName("127.0.0.1");
        dataSource.setDatabaseName("ssm");

        // 用来设置时区和数据库连接的编码
        try {
            dataSource.setCharacterEncoding("UTF-8");
            dataSource.setServerTimezone("Asia/Shanghai");

            Utility.log("url: %s", dataSource);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return dataSource;
    }

    private static Logger logger = LoggerFactory.getLogger(Utility.class);

    static public void log(String format, Object...args) {
        String s = String.format(format, args);
        logger.info(s);
    }

    public static String formattedTime(long x){
        Long unixTime = x;
        Utility.log("long : %s", x);
        Date date = new Date(unixTime * 1000);
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        String dateString = dateFormat.format(date);
        return dateString;
    }
}
