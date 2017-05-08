package com.ATMsoft;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by apple on 2017/3/28.
 */
@WebServlet(name = "Servlet")
public class Servlet extends HttpServlet {
    public static final long serialVersionUID=1L;

    public Servlet() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out=response.getWriter();
        String name=request.getParameter("name");
        if (name!=null&&!name.isEmpty()){
            out.print("  你好  "+name);
            out.print("，<br>欢迎来到我的主页。");
        }
        else {
            out.print("请输入你的中文名字！");
        }
        out.print("<br><a href=index.jsp>返回</a>");
        out.flush();
        out.close();

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            throw new Exception("数据库连接失败");
        }catch (Exception e){
            response.sendError(500,e.getMessage());
        }

        response.setContentType("text/html");
        response.setCharacterEncoding("GBK");
        PrintWriter out=response.getWriter();
        out.println("<HTML>");
        out.println("   <HEAD><TITLE>Servlet实例</TITLE></HEAD>");
        out.println("   <BODY>");
        out.println("   Servlet实例");
        out.print(this.getClass());
        out.println("   </BODY>");
        out.println("</HTML>");
        out.flush();
        out.close();
    }
}
