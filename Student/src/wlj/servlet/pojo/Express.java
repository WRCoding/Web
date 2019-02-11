package wlj.servlet.pojo;

/**
 * @author LB
 * @create 2019-02-08 10:40
 */
public class Express {
    private String sname;
    private String dno;
    private String marrive;
    private String mreceive;
    private int mnumber;

    @Override
    public String toString() {
        return "Express{" +
                "sname='" + sname + '\'' +
                ", dno='" + dno + '\'' +
                ", marrive='" + marrive + '\'' +
                ", mreceive='" + mreceive + '\'' +
                ", mnumber=" + mnumber +
                '}';
    }

    public Express() {
    }

    public Express(String sname, String dno, String marrive, String mreceive, int mnumber) {
        this.sname = sname;
        this.dno = dno;
        this.marrive = marrive;
        this.mreceive = mreceive;
        this.mnumber = mnumber;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public String getDno() {
        return dno;
    }

    public void setDno(String dno) {
        this.dno = dno;
    }

    public String getMarrive() {
        return marrive;
    }

    public void setMarrive(String marrive) {
        this.marrive = marrive;
    }

    public String getMreceive() {
        return mreceive;
    }

    public void setMreceive(String mreceive) {
        this.mreceive = mreceive;
    }

    public int getMnumber() {
        return mnumber;
    }

    public void setMnumber(int mnumber) {
        this.mnumber = mnumber;
    }
}
