package com.ATMsoft.servlet;

import javax.servlet.ServletContext;
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
@WebServlet(name = "CounterServlet")
public class CounterServlet extends HttpServlet {
    public CounterServlet() {
        super();
    }

    @Override
    public void destroy() {
        super.destroy();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ServletContext context=getServletContext();
        Integer count=(Integer)context.getAttribute("counter");
        if (count==null){
            count=1;
            context.setAttribute("counter",count);

        }
        else {
            context.setAttribute("counter",count+1);
        }
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out=response.getWriter();
        out.println("<!DOCTYPE  HTML PUBLIC \"-//W3C//DTD   HTML    4.01    Transitional//EN\">");
        out.println("<HTML>");
        out.println("   <HEAD><TITLE>统计网站访问次数</TITLE></HEAD>");
        out.println("   <BODY>");
        out.println("   <h2><font color='gray'>");
        out.print("您是第  "+context.getAttribute("counter")+"位访客！");
        out.println("</font></h2>");
        out.println("   </BODY>");
        out.println("</HTML>");
        out.flush();
        out.close();


    }


    public void init() throws ServletException {

    }
}
