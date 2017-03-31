package com.ATMsoft;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

/**
 * Created by apple on 2017/3/28.
 */
@WebFilter(filterName = "CharacterEncoding")
public class CharacterEncoding implements Filter {
    protected String encoding=null;
    protected FilterConfig filterConfig=null;
    public void destroy() {
        this.encoding=null;
        this.filterConfig=null;
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        if (encoding!=null){
            req.setCharacterEncoding(encoding);
            resp.setContentType("text/html;charset="+encoding);
        }
        chain.doFilter(req, resp);
    }

    public void init(FilterConfig config) throws ServletException {
        this.filterConfig=config;
        this.encoding=filterConfig.getInitParameter("encoding");
    }

}
