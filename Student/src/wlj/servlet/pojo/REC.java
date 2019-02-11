package wlj.servlet.pojo;

/**
 * @author LB
 * @create 2019-02-11 10:21
 */
public class REC {
    private String sno;
    private String dno;
    private String btime;
    private String breason;

    @Override
    public String toString() {
        return "REC{" +
                "sno='" + sno + '\'' +
                ", dno='" + dno + '\'' +
                ", btime='" + btime + '\'' +
                ", breason='" + breason + '\'' +
                '}';
    }

    public String getSno() {
        return sno;
    }

    public void setSno(String sno) {
        this.sno = sno;
    }

    public String getDno() {
        return dno;
    }

    public void setDno(String dno) {
        this.dno = dno;
    }

    public String getBtime() {
        return btime;
    }

    public void setBtime(String btime) {
        this.btime = btime;
    }

    public String getBreason() {
        return breason;
    }

    public void setBreason(String breason) {
        this.breason = breason;
    }

    public REC() {
    }

    public REC(String sno, String dno, String btime, String breason) {
        this.sno = sno;
        this.dno = dno;
        this.btime = btime;
        this.breason = breason;
    }
}
