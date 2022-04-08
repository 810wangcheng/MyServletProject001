package com.cy;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class MyFirstServletTest001 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //req.setCharacterEncoding("utf-8"); //设置请求格式
        resp.setContentType("text/html;charset=utf-8"); //设置响应格式
        PrintWriter writer = resp.getWriter();
        writer.write("这是一个servlet服务，欢迎你的访问！");
        //获取页面传入参数
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        System.out.println("页面获取用户名："+username+"；获取密码："+password);
        //连接数据库
        try {
            Class.forName("com.mysql.jdbc.Driver"); //加载驱动
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");//获取连接
            Statement statement = connection.createStatement(); //创建会话
            ResultSet resultSet = statement.executeQuery("select * from student");//执行查询
            while (resultSet.next()){
                String name = resultSet.getString("name");
                int age = resultSet.getInt("age");
                String gender = resultSet.getString("gender");
                writer.write("姓名："+name+"；年龄："+age+"性别："+gender);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
