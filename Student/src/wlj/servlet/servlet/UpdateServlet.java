package wlj.servlet.servlet;

import wlj.servlet.pojo.User;
import wlj.servlet.service.StuService;
import wlj.servlet.service.StuServiceImp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author LB
 * @create 2019-02-08 15:00
 */
@WebServlet(name = "UpdateServlet",urlPatterns = {"/up"})
public class UpdateServlet extends HttpServlet {
    StuService stuService = new StuServiceImp();
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");

        String value = req.getParameter("value");
        String name = ((User)req.getSession().getAttribute("user")).getUname();

        int index = stuService.updateTime(name,value);
        if(index>0){
            System.out.println("修改成功");
            resp.getWriter().write(value);
        }
    }
}
