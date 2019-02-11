package wlj.servlet.servlet;

import com.google.gson.Gson;
import wlj.servlet.pojo.Test;
import wlj.servlet.pojo.User;
import wlj.servlet.service.StuService;
import wlj.servlet.service.StuServiceImp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * @author LB
 * @create 2019-02-10 11:06
 */
@WebServlet(name = "DataSendServlet",urlPatterns = {"/data"})
public class DataSendServlet extends HttpServlet {
    StuService stuService = new StuServiceImp();
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int limit = Integer.parseInt(request.getParameter("limit"));
        int offset = Integer.parseInt(request.getParameter("offset"));
        List<Test> list = stuService.listUser(limit,offset);

        Gson gson = new Gson();

        String json = gson.toJson(list);
        int index = list.size();

        response.getWriter().print("{\"total\":10, \"rows\":"+json+"}");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
