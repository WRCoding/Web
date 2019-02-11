package wlj.servlet.pojo;

/**
 * @author LB
 * @create 2019-02-08 10:01
 */
public class Room {
    private String son;
    private String sname;
    private String sex;
    private String sdept;
    private String dno;
    private String scheckin;

    @Override
    public String toString() {
        return "Room{" +
                "son='" + son + '\'' +
                ", sname='" + sname + '\'' +
                ", sex='" + sex + '\'' +
                ", sdept='" + sdept + '\'' +
                ", dno='" + dno + '\'' +
                ", scheckin='" + scheckin + '\'' +
                '}';
    }

    public Room() {
    }

    public Room(String son, String sname, String sex, String sdept, String dno, String scheckin) {
        this.son = son;
        this.sname = sname;
        this.sex = sex;
        this.sdept = sdept;
        this.dno = dno;
        this.scheckin = scheckin;
    }

    public String getSon() {
        return son;
    }

    public void setSon(String son) {
        this.son = son;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getSdept() {
        return sdept;
    }

    public void setSdept(String sdept) {
        this.sdept = sdept;
    }

    public String getDno() {
        return dno;
    }

    public void setDno(String dno) {
        this.dno = dno;
    }

    public String getScheckin() {
        return scheckin;
    }

    public void setScheckin(String scheckin) {
        this.scheckin = scheckin;
    }
}
