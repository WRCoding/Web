package wlj.servlet.servlet;

import wlj.servlet.pojo.*;
import wlj.servlet.service.StuService;
import wlj.servlet.service.StuServiceImp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @author LB
 * @create 2019-02-07 10:51
 */
@WebServlet(name = "/StuServlet",urlPatterns = {"/s"})
public class StuServlet extends HttpServlet {
    StuService stuService = new StuServiceImp();
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        String per = req.getParameter("per");
        if (per.equals("express")){
            exp(req, resp);
        }
        if(per.equals("login")){
            login(req,resp);
        }
        if(per.equals("service")){
            ser(req,resp);
        }
        if(per.equals("lr")){
            lr(req,resp );
        }
        if(per.equals("rec")){
            rec(req,resp);
        }
    }

    private void rec(HttpServletRequest req, HttpServletResponse resp) {
        String sno = ((Room)req.getSession().getAttribute("room")).getSon();
        List<REC> recList = stuService.chooseREC(sno);
        if(recList != null){
            System.out.println(recList);
            req.getSession().setAttribute("rec",recList );
            try {
                resp.sendRedirect("record.jsp");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    private void lr(HttpServletRequest req, HttpServletResponse resp) {
        String sno = ((Room)req.getSession().getAttribute("room")).getSon();
        List<LR> lrlist = stuService.chooseLR(sno);
        if(lrlist != null){
            System.out.println(lrlist);
            req.getSession().setAttribute("lr",lrlist );
            try {
                resp.sendRedirect("lr.jsp");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    private void ser(HttpServletRequest req, HttpServletResponse resp) {
        String dno = ((Room)req.getSession().getAttribute("room")).getDno();
        List<Things> list = stuService.chooseThings(dno);
        if(list != null){
            req.getSession().setAttribute("list",list );
            try {
                resp.sendRedirect("service.jsp");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

    }

    private void login(HttpServletRequest req, HttpServletResponse resp) {
        String name = req.getParameter("name");
        String password = req.getParameter("password");
        User user = stuService.checkUser(name,password );
  //      Room room = stuService.chooseRoom(name);
        try {
            if(null != user){
                System.out.println(user.getUname());
                req.getSession().setAttribute("user",user );
             //   req.getSession().setAttribute("room",room );
                resp.sendRedirect("info.jsp");
            }else{
                req.getRequestDispatcher("index.jsp").forward(req,resp );
            }
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    private void exp( HttpServletRequest req, HttpServletResponse resp) {
        String name = ((User)req.getSession().getAttribute("user")).getUname();
        Express express = stuService.chooseExp(name);
        System.out.println(name);
        if(express != null){
            req.getSession().setAttribute("express",express );
            try {
                resp.sendRedirect("express.jsp");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
}
