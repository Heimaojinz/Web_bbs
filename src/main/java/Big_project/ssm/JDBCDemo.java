package Big_project.ssm;

import com.mysql.cj.jdbc.MysqlDataSource;

import java.sql.*;

public class JDBCDemo {
    public static void log(String format, Object... args) {
        System.out.println(String.format(format, args));
    }




    public static void addBySQL(String content) {
        MysqlDataSource ds = Utility.getDataSource();
        String sqlInsert = String.format("INSERT INTO `Todo` (content) VALUES ('%s')", content);

        try {
            Connection connection = ds.getConnection();
            Statement statement = connection.createStatement();
            statement.executeUpdate(sqlInsert);

            connection.close();
            statement.close();
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }

    }

    public static void selectBySQL(Integer id) {
        MysqlDataSource ds = Utility.getDataSource();
//        String sql = String.format("select * from `ssm`.`Todo` where id = %s", id);
        String sql = String.format("select * from `ssm`.`Todo`");

        try {
            Connection connection = ds.getConnection();
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery(sql);

            while (rs.next()) {
                log("result id: %s", rs.getInt("id"));
                log("result content: %s", rs.getString("content"));
            }

            connection.close();
            statement.close();
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
    }

    public static void selectBySQLInjection(String content) {
        MysqlDataSource ds = Utility.getDataSource();
        String sql = String.format("select * from `ssm`.`Todo` where content = '%s'", content);

        try {
            Connection connection = ds.getConnection();
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery(sql);

            while (rs.next()) {
                log("result: %s", rs.getInt("id"));
                log("result: %s", rs.getString("content"));

            }

            connection.close();
            statement.close();
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
    }

    public static void selectBySQLSafe(String content) {
        MysqlDataSource ds = Utility.getDataSource();
        String sql = "select * from `ssm`.`Todo` where content = ?";

        try {
            Connection connection = ds.getConnection();
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, content);


            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                log("result: %s", rs.getInt("id"));
                log("result: %s", rs.getString("content"));

            }

            connection.close();
            statement.close();
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
    }

    public static void main(String[] args) {
//        addBySQL("111");
//        selectBySQL(1);
        selectBySQLSafe("111 ' or '1' = '1");
    }
}
