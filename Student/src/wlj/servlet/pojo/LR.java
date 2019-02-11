package wlj.servlet.pojo;

/**
 * @author LB
 * @create 2019-02-10 20:31
 */
public class LR {
    private String sno;
    private String dno;
    private String ltime;
    private String lreturn;

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

    public String getLtime() {
        return ltime;
    }

    public void setLtime(String ltime) {
        this.ltime = ltime;
    }

    public String getLreturn() {
        return lreturn;
    }

    public void setLreturn(String lreturn) {
        this.lreturn = lreturn;
    }

    @Override
    public String toString() {
        return "LR{" +
                "sno='" + sno + '\'' +
                ", dno='" + dno + '\'' +
                ", ltime='" + ltime + '\'' +
                ", lreturn='" + lreturn + '\'' +
                '}';
    }

    public LR() {
    }

    public LR(String sno, String dno, String ltime, String lreturn) {
        this.sno = sno;
        this.dno = dno;
        this.ltime = ltime;
        this.lreturn = lreturn;
    }
}
