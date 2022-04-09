package com.cy;

import javax.servlet.*;
import java.io.IOException;
//过滤器需要实现Filter接口
public class MyFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        //初始化的代码
    }
    //过滤器的业务逻辑方法
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        //达到目标资源前的代码
        System.out.println("已经进入过滤器");
        //该方法的调用会将请求转发给下一个过滤器或目标资源
        filterChain.doFilter(servletRequest,servletResponse);
        //目标资源响应以后的代码
        System.out.println("即将离开过滤器");
    }

    @Override
    public void destroy() {
        //释放资源的代码
    }
}
