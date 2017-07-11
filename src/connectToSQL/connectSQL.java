package connectToSQL;

import java.sql.*;

import static java.lang.System.out;

/**
 * Created by AS on 2017/7/7.
 */

public class connectSQL {

    // 驱动程序名
    String driver = "com.mysql.jdbc.Driver";

    // URL指向要访问的数据库名scutcs
    String url = "jdbc:mysql://localhost/travelweb?useUnicode=true&characterEncoding=UTF8";

    // MySQL配置时的用户名
    String user = "root";

    // MySQL配置时的密码
    String password = "";

    Connection conn;

    public String userName,userID,userPassword;

    //用于登录查询
    //如果返回0表示存在相应用户且密码正确
    //如果返回1表示密码错误
    //如果返回2表示不存在该用户名
    public int inquire(String ID,String password)
            throws ClassNotFoundException, SQLException,
            IllegalAccessException, InstantiationException
    {
        //装载驱动程序
        Class.forName(driver).newInstance();
        //建立连接
        conn = DriverManager.getConnection(url, user, password);

        Statement statement=conn.createStatement();

        String sql="select ID,password from customer";

        ResultSet rs = statement.executeQuery(sql);

        String getID,getPassword;

        while(rs!=null&&rs.next())
        {
            getID=rs.getString("ID");
            getPassword=rs.getString("password");
            if(getID.equals(ID)) {
                if (getPassword.equals(password)) {
                    statement.close();
                    conn.close();
                    return 0;
                }
                else
                {
                    statement.close();
                    conn.close();
                    return 1;

                }
            }
        }
        statement.close();
        conn.close();
        return 2;
    }

    //用于新用户注册
    public void registered(String ID,String name,String password)
            throws ClassNotFoundException, IllegalAccessException,
            InstantiationException, SQLException
    {
        //装载驱动程序
        Class.forName(driver).newInstance();
        //建立连接
        conn = DriverManager.getConnection(url, user, password);

        Statement statement=conn.createStatement();

        String sql="select ID,name from customer ";

        ResultSet rs = statement.executeQuery(sql);

        String getID;
        String getName;
        boolean isExist = false;

        while(rs.next()) {
            getID = rs.getString("ID");
            getName = rs.getString("name");
            if (getID.equals(ID)) {
                isExist = true;
                out.println("用户ID已存在");
            }
            if (getName.equals(name)) {
                isExist = true;
                out.println("用户名已存在");
            }
        }
        if(isExist == false)
        {
            sql="INSERT INTO customer(ID,name,password) VALUES('"
                    + ID + "',''" + name + "','" + password + "')";
            statement.execute(sql);
            out.println("注册成功");
        }
    }
}