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
        out.println("<body><a>hhhhhhh</a>");
        out.println("</body>");

        out.println("</html>");
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        resp.setContentType("text/html;charset=\"utf-8\"");
        PrintWriter out = resp.getWriter();


        try {
            //获取从登录界面传递过来的参数值
            String ID = req.getParameter("ID");
            String password = req.getParameter("password");

            printContent(out);
            int result;

            connectSQL connect = new connectSQL();

            result = connect.inquire(ID, password);

            out.print("ID: " + ID + "password: " + password);
            if (result == 0) {
                out.print("登录成功");
                printContent(out);
            }
            if (result == 1) {
                out.print("密码错误");
            }
            if (result == 2) {
                out.print("用户名错误");
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


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        doPost(req, resp);
    }
}