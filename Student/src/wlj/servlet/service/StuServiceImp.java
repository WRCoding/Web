package wlj.servlet.service;

import wlj.servlet.dao.StuDao;
import wlj.servlet.dao.StuDaoImpl;
import wlj.servlet.pojo.*;

import java.util.List;

/**
 * @author LB
 * @create 2019-02-07 11:08
 */
public class StuServiceImp implements StuService {
    StuDao stuDao = new StuDaoImpl();
    @Override
    public User checkUser(String name, String password) {
        return stuDao.checkUserDao(name,password );
    }

    @Override
    public Room chooseRoom(String name) {
        return stuDao.chooseRoomDao(name);
    }

    @Override
    public Express chooseExp(String name) {
        return stuDao.chooseExpDao(name);
    }

    @Override
    public int updateTime(String name, String value) {
        return stuDao.updateTimeDao(name,value);
    }

    @Override
    public List<Things> chooseThings(String dno) {
        return stuDao.chooseThingsDao(dno);
    }

    @Override
    public int insertThing(String dno, int pno, String rsubmit, String reason) {
        return stuDao.insertThingDao(dno,pno,rsubmit,reason);
    }

    @Override
    public List<Test> listUser(int limit, int offset) {
        return stuDao.listUserDao(limit,offset);
    }

    @Override
    public int insertLR(String sno, String dno, String ltime, String lreturn) {
        return stuDao.insertLDdao(sno,dno,ltime,lreturn);
    }

    @Override
    public List<LR> chooseLR(String sno) {
        return stuDao.choosrLRdao(sno);
    }

    @Override
    public List<REC> chooseREC(String sno) {
        return stuDao.chooseRECDao(sno);
    }

    @Override
    public int insertREC(String sno, String dno, String btime, String breason) {
        return stuDao.insertRecDao(sno,dno,btime,breason);
    }

    @Override
    public List<Room> listRoom(String dno) {
        return stuDao.listRoomDa0(dno);
    }

    @Override
    public List<Express> listExp(int limit, int offset) {
        return stuDao.listExpDao(limit,offset);
    }

    @Override
    public int num(String tableName) {
        return stuDao.num(tableName);
    }

    @Override
    public int insertExp(String sname, String dno, String marrive, String mnumber) {
        return stuDao.insertExpDao(sname,dno,marrive,mnumber);
    }

    @Override
    public List<Things> listSer(int limit, int offset) {
        return stuDao.listSerDao(limit,offset);
    }

    @Override
    public List<LR> listLR(int limit, int offset) {
        return stuDao.listLR(limit,offset);
    }

    @Override
    public int updateSer(String dno, String pno, String rsolve) {
        return stuDao.updateSerDao(dno,pno,rsolve);
    }

    @Override
    public List<REC> listRec(int limit, int offset) {
        return stuDao.listRecDao(limit,offset);
    }


}
