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

                if (result == 0) {
                    resp.sendRedirect("index.jsp");
                }
                if (result == 1) {
                    resp.getWriter().print("<script> alert('密码错误！');location.href=\"login.jsp\"; </script>");
                }
                if (result == 2) {
                    resp.getWriter().print("<script> alert('不存在该用户名');location.href=\"login.jsp\";</script>");
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

                connectSQL connect = new connectSQL();

                int result = connect.registered(newID, newName, newPassword);

                if (result == 0) {
                    resp.getWriter().print("<script> alert('恭喜你！你已成功注册！');location.href=\"index.jsp\"; </script>");
                }
                if (result == 1) {
                    resp.getWriter().print("<script> alert('用户ID已存在！');location.href=\"create.jsp\"; </script>");
                }
                if (result == 2) {
                    resp.getWriter().print("<script> alert('用户名已存在！');location.href=\"create.jsp\"; </script>");
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

        //用于处理上传旅行路线
        if(method.equals("setRoute"))
        {
            String startPoint = req.getParameter("address_start");
            String endPoint = req.getParameter("address_end");
            printContent(out);
            out.print(startPoint + "  " + endPoint);

            connectSQL connect = new connectSQL();
            /*try {
                connect.setRoute(startPoint,endPoint);
                out.print("路线保存成功！");
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            } catch (InstantiationException e) {
                e.printStackTrace();
            } catch (SQLException e) {
                e.printStackTrace();
            }*/
        }

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        doPost(req, resp);
    }
}