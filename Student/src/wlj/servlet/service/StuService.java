package wlj.servlet.service;

import wlj.servlet.pojo.*;

import java.util.List;

/**
 * @author LB
 * @create 2019-02-07 11:06
 */
public interface StuService {
    /**
     * 检查用户登录信息
     * @param name
     * @param password
     * @return
     */
    User checkUser(String name,String password);

    /**
     * 获取用户宿舍信息
     * @param name
     * @return
     */
    Room chooseRoom(String name);

    /**
     * 获取用户快件信息
     * @param name
     * @return
     */
    Express chooseExp(String name);

    /**
     * 修改用户的取件时间
     * @param name
     * @param value
     * @return
     */
    int updateTime(String name,String value);

    /**
     * 获取维修信息
     * @param dno
     * @return
     */
    List<Things> chooseThings(String dno);

    /**
     * 插入维修信息
     * @param dno
     * @param pno
     * @param rsubmit
     * @param reason
     * @return
     */
    int insertThing(String dno, int pno, String rsubmit, String reason);


    List<Test> listUser(int limit, int offset);

    /**
     * 插入离校和返校信息
     * @param sno
     * @param dno
     * @param ltime
     * @param lreturn
     * @return
     */
    int insertLR(String sno, String dno, String ltime, String lreturn);

    /**
     * 获取离校和返校信息
     * @param sno
     * @return
     */
    List<LR> chooseLR(String sno);

    /**
     * 获取晚归信息
     * @param sno
     * @return
     */
    List<REC> chooseREC(String sno);

    /**
     * 插入晚归信息
     * @param sno
     * @param dno
     * @param btime
     * @param breason
     * @return
     */
    int insertREC(String sno, String dno, String btime, String breason);

    /**
     * 获取指定宿舍号信息
     * @param dno
     * @return
     */
    List<Room> listRoom(String dno);

    /**
     * 获取全部的快件信息
     * @return
     * @param limit
     * @param offset
     */
    List<Express> listExp(int limit, int offset);

    /**
     * 返回数量
     * @return
     * @param tableName
     */
    int num(String tableName);

    /**
     * 插入快件信息
     * @param sname
     * @param dno
     * @param marrive
     * @param mnumber
     * @return
     */
    int insertExp(String sname, String dno, String marrive, String mnumber);

    /**
     * 获取全部维修信息
     * @param limit
     * @param offset
     * @return
     */
    List<Things> listSer(int limit, int offset);

    /**
     * 获取全部离校与返校信息
     * @param limit
     * @param offset
     * @return
     */
    List<LR> listLR(int limit, int offset);

    /**
     * 更新维修时间
     * @param dno
     * @param pno
     * @param rsolve
     * @return
     */
    int updateSer(String dno, String pno, String rsolve);

    /**
     * 获取全部晚归信息
     * @param limit
     * @param offset
     * @return
     */
    List<REC> listRec(int limit, int offset);
}
