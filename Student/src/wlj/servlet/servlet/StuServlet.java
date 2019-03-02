package wlj.servlet.servlet;

import com.google.gson.Gson;
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
        if (per.equals("express")) {
            exp(req, resp);
        }
        if (per.equals("login")) {
            login(req, resp);
        }
        if (per.equals("service")) {
            ser(req, resp);
        }
        if (per.equals("lr")) {
            lr(req, resp);
        }
        if (per.equals("rec")) {
            rec(req, resp);
        }
    }

    private void rec(HttpServletRequest req, HttpServletResponse resp) {
        String sno = ((Room) req.getSession().getAttribute("room")).getSon();
        List<REC> recList = stuService.chooseREC(sno);
        if (recList != null) {
            System.out.println(recList);
            req.getSession().setAttribute("rec", recList);
            try {
                resp.sendRedirect("record.jsp");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    private void lr(HttpServletRequest req, HttpServletResponse resp) {
        int utype = ((User) req.getSession().getAttribute("user")).getUtype();
       if(utype == 1){
           String sno = ((Room) req.getSession().getAttribute("room")).getSon();
           List<LR> lrlist = stuService.chooseLR(sno);
           if (lrlist != null) {
               System.out.println(lrlist);
               req.getSession().setAttribute("lr", lrlist);
               try {
                   resp.sendRedirect("lr.jsp");
               } catch (IOException e) {
                   e.printStackTrace();
               }
           }
       }else if(utype == 2){
           try {
               resp.sendRedirect("adminLR.jsp");
           } catch (IOException e) {
               e.printStackTrace();
           }
       }
    }

    private void ser(HttpServletRequest req, HttpServletResponse resp) {
        int utype = ((User) req.getSession().getAttribute("user")).getUtype();
        if(utype == 1){
            String dno = ((Room) req.getSession().getAttribute("room")).getDno();
            List<Things> list = stuService.chooseThings(dno);
            if (list != null) {
                req.getSession().setAttribute("list", list);
                try {
                    resp.sendRedirect("service.jsp");
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }else if(utype == 2){
            try {
                resp.sendRedirect("adminSer.jsp");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    private void login(HttpServletRequest req, HttpServletResponse resp) {
        String name = req.getParameter("name");
        String password = req.getParameter("password");
        User user = stuService.checkUser(name, password);
        Room room = stuService.chooseRoom(name);
        try {
            if (null != user) {
                int utype = user.getUtype();
                if (utype == 1) {
                    req.getSession().setAttribute("user", user);
                    req.getSession().setAttribute("room", room);
                    resp.sendRedirect("info.jsp");
                } else {
                    req.getSession().setAttribute("user", user);
                    req.getSession().setAttribute("room", room);
                    resp.sendRedirect("adminRoom.jsp");
                }
            } else {
                req.getRequestDispatcher("index.jsp").forward(req, resp);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void exp(HttpServletRequest req, HttpServletResponse resp) {
        int utype = ((User) req.getSession().getAttribute("user")).getUtype();
        if (utype == 1) {
            String name = ((User) req.getSession().getAttribute("user")).getUname();
            Express express = stuService.chooseExp(name);
            if (express != null) {
                req.getSession().setAttribute("express", express);
                try {
                    resp.sendRedirect("express.jsp");
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        } else if (utype == 2) {
//            System.out.println("被调用了");
//            int limit = Integer.parseInt(req.getParameter("limit"));
//            int offset = Integer.parseInt(req.getParameter("offset"));
//            List<Express> list = stuService.listExo(limit,offset);
//            String tableName = "wexpress";
//            int index = stuService.num(tableName);
//            Gson gson = new Gson();
//            String json = gson.toJson(list);
//            try {
//                resp.getWriter().print("{\"total\":"+index+", \"rows\":"+json+"}");
//            } catch (IOException e) {
//                e.printStackTrace();
//            }
//        }
            try {
                resp.sendRedirect("adminExp.jsp");
            } catch (IOException e) {
                e.printStackTrace();
            }

        }
    }
}