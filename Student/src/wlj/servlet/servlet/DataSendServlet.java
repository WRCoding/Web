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
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        int limit = Integer.parseInt(request.getParameter("limit"));
        int offset = Integer.parseInt(request.getParameter("offset"));
        String per = request.getParameter("per");
        System.out.println(limit+" : "+offset);
        if(per.equals("express")){
            exp(limit,offset,request,response);
        }else if(per.equals("service")){
            ser(limit,offset,request,response);
        }else if(per.equals("lr")){
            lr(limit,offset,request,response);
        }else if(per.equals("record")){
            rec(limit,offset,request,response);
        }
    }

    private void rec(int limit, int offset, HttpServletRequest request, HttpServletResponse response) {
        List<REC> list = stuService.listRec(limit,offset);
        String tableName = "record";
        int index = stuService.num(tableName);
        Gson gson = new Gson();
        String json = gson.toJson(list);
        System.out.println(json);
        try {
            response.getWriter().print("{\"total\":"+index+", \"rows\":"+json+"}");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void lr(int limit, int offset, HttpServletRequest request, HttpServletResponse response) {
        List<LR> list = stuService.listLR(limit,offset);
        String tableName = "lr";
        int index = stuService.num(tableName);
        Gson gson = new Gson();
        String json = gson.toJson(list);
        System.out.println(json);
        try {
            response.getWriter().print("{\"total\":"+index+", \"rows\":"+json+"}");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void ser(int limit, int offset, HttpServletRequest request, HttpServletResponse response) {
        List<Things> list = stuService.listSer(limit,offset);
        String tableName = "service";
        int index = stuService.num(tableName);
        Gson gson = new Gson();
        String json = gson.toJson(list);
        System.out.println(json);
        try {
            response.getWriter().print("{\"total\":"+index+", \"rows\":"+json+"}");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void exp(int limit, int offset, HttpServletRequest request, HttpServletResponse response) {
        List<Express> list = stuService.listExp(limit,offset);
        String tableName = "wexpress";
        int index = stuService.num(tableName);
        Gson gson = new Gson();
        String json = gson.toJson(list);
        System.out.println(json);
        try {
            response.getWriter().print("{\"total\":"+index+", \"rows\":"+json+"}");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
