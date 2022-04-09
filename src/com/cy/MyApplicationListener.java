package com.cy;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class MyApplicationListener implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        System.out.println("应用被初始化");
    }

    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {
        System.out.println("应用被销毁");
    }
}
