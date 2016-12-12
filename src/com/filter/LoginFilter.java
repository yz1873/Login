package com.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by Administrator on 2016/12/1 0001.
 */
@WebFilter(filterName = "LoginFilter",urlPatterns="/*")
public class LoginFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) resp;
        HttpSession session = request.getSession();

        //.css和.js添加在此，可以屏蔽过滤器对css文件和js文件的过滤。(还有对png和jpg文件的过滤)
        //不能直接添加.js 这样会自动放行.jsp文件。
        //可以添加/js这个目录才屏蔽（不确定）
        String noLoginPaths = "index.jsp;fail.jsp;LoginServlet;.css;.png;.jpg;TechView.jsp";

        String[] strArray = noLoginPaths.split(";");
        for (int i = 0; i < strArray.length; i++) {
            if(strArray[i]==null || "".equals(strArray[i]))continue;
            if(request.getRequestURI().contains(strArray[i]) ){
                chain.doFilter(req, resp);   //放行
                return;    //相当于return void，表示退出该调用，表示退出函数
            }
        }
        if(session.getAttribute("username")!=null){
            chain.doFilter(req, resp);   //放行
        }else{
            response.sendRedirect(request.getContextPath()+"/index.jsp");
        }
    }

    public void init(FilterConfig config) throws ServletException {
    }

}
