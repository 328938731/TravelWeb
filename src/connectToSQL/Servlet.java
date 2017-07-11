package connectToSQL;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import static java.lang.System.out;

/**
 * Created by AS on 2017/7/8.
 */


@WebServlet(name = "Servlet")
public class Servlet extends HttpServlet {

    private void printContent(PrintWriter out) {
        out.println("<html>");
        out.println("<body>");
        out.println("</body>");

        out.println("</html>");
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        resp.setContentType("text/html;charset=\"utf-8\"");
        PrintWriter out = resp.getWriter();

        String method = req.getParameter("method");


        //处理登录界面
        if (method.equals("login")) {
            try {
                //获取从登录界面传递过来的参数值
                String ID = req.getParameter("ID");
                String password = req.getParameter("password");

                printContent(out);
                int result;

                connectSQL connect = new connectSQL();

                result = connect.inquire(ID, password);

                out.println("ID: " + ID + "  password: " + password);
                if (result == 0) {
                    out.println("登录成功");
                    printContent(out);
                }
                if (result == 1) {
                    out.println("密码错误");
                }
                if (result == 2) {
                    out.println("用户名错误");
                }
            } catch (IllegalAccessException e1) {
                e1.printStackTrace();
            } catch (InstantiationException e1) {
                e1.printStackTrace();
            } catch (SQLException e1) {
                e1.printStackTrace();
            } catch (ClassNotFoundException e1) {
                e1.printStackTrace();
            }
        }


        //处理注册界面
        if (method.equals("create")) {

            try {
                //获取从登录界面传递过来的参数值
                String newID = req.getParameter("newID");
                String newPassword = req.getParameter("newPassword");
                String newName = req.getParameter("newName");
                printContent(out);


                connectSQL connect = new connectSQL();

                int result = connect.registered(newID, newName, newPassword);

                out.println("ID: " + newID + "  password: " + newPassword + "  name: " + newName);
                if (result == 0) {
                    out.println("注册成功");
                }
                if (result == 1) {
                    out.println("用户ID已存在");
                }
                if (result == 2) {
                    out.println("用户名已存在");
                }
                if (result == 3) {
                    out.println("error");
                }
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            } catch (InstantiationException e) {
                e.printStackTrace();
            } catch (SQLException e) {
                e.printStackTrace();
            }

        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        doPost(req, resp);
    }
}