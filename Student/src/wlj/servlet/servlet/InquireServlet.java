package wlj.servlet.servlet;

import com.google.gson.Gson;
import wlj.servlet.pojo.Express;
import wlj.servlet.pojo.Room;
import wlj.servlet.pojo.User;
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
 * @create 2019-02-13 10:48
 */
@WebServlet(name = "InquireServlet",urlPatterns = {"/inq"})
public class InquireServlet extends HttpServlet {
    StuService stuService = new StuServiceImp();
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        String per = req.getParameter("per");
        int utype = ((User)req.getSession().getAttribute("user")).getUtype();
        String dno = req.getParameter("dno");
        if(per.equals("inq")){
            inqRoom(req,resp,dno,utype);
        }else if(per.equals("iexp")){
            inqExp(req,resp,utype);
        }
    }

    private void inqExp(HttpServletRequest req, HttpServletResponse resp, int utype) {
        if(utype == 2){
//            List<Express> list = stuService.listExp(, )
        }
    }

    private void inqRoom(HttpServletRequest req, HttpServletResponse resp, String dno, int utype) {
        if(utype == 2) {
            List<Room> adminlist = stuService.listRoom(dno);
           // req.getSession().setAttribute("adminInqu", adminlist);
            Gson gson = new Gson();
            try {
                resp.getWriter().write(gson.toJson(adminlist));
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

    }
}
