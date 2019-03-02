package wlj.servlet.dao;

import wlj.servlet.pojo.*;

import java.util.List;

/**
 * @author LB
 * @create 2019-02-07 11:11
 */
public interface StuDao {
    /**
     * 检查用户登录信息
     * @param name
     * @param password
     * @return
     */
    User checkUserDao(String name,String password);

    /**
     * 获取用户宿舍信息
     * @param name
     * @return
     */
    Room chooseRoomDao(String name);

    /**
     * 获取用户快件信息
     * @param name
     * @return
     */
    Express chooseExpDao(String name);

    /**
     * 修改用户取件时间
     * @param name
     * @param value
     * @return
     */
    int updateTimeDao(String name, String value);

    /**
     * 获取用户的维修信息
     * @param dno
     * @return
     */
    List<Things> chooseThingsDao(String dno);

    /**
     * 插入维修信息
     * @param dno
     * @param pno
     * @param rsubmit
     * @param reason
     * @return
     */
    int insertThingDao(String dno, int pno, String rsubmit, String reason);

    List<Test> listUserDao(int limit, int offset);

    /**
     * 插入离校返校信息
     * @param sno
     * @param dno
     * @param ltime
     * @param lreturn
     * @return
     */
    int insertLDdao(String sno, String dno, String ltime, String lreturn);

    /**
     * 获取离校和返校信息
     * @param sno
     * @return
     */
    List<LR> choosrLRdao(String sno);

    /**
     * 获取晚归信息
     * @param sno
     * @return
     */
    List<REC> chooseRECDao(String sno);

    /**
     * 插入晚归信息
     * @param sno
     * @param dno
     * @param btime
     * @param breason
     * @return
     */
    int insertRecDao(String sno, String dno, String btime, String breason);

    /**
     * 获取指定宿舍号信息
     * @param dno
     * @return
     */
    List<Room> listRoomDa0(String dno);

    /**
     * 获取全部快件信息
     * @return
     * @param limit
     * @param offset
     */
    List<Express> listExpDao(int limit, int offset);

    /**
     * 获取数量
     * @param tableName
     * @return
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
    int insertExpDao(String sname, String dno, String marrive, String mnumber);

    /**
     * 获取全部维修信息
     * @param limit
     * @param offset
     * @return
     */
    List<Things> listSerDao(int limit, int offset);

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
    int updateSerDao(String dno, String pno, String rsolve);

    /**
     * 获取全部晚归时间
     * @param limit
     * @param offset
     * @return
     */
    List<REC> listRecDao(int limit, int offset);
}
