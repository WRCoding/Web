package wlj.servlet.pojo;

/**
 * @author LB
 * @create 2019-02-08 19:25
 */
public class Things {
    private String dno;
    private int pno;
    private String rsubmit;
    private String rsolve;
    private String reason;

    @Override
    public String toString() {
        return "Things{" +
                "dno='" + dno + '\'' +
                ", pno=" + pno +
                ", rsubmit='" + rsubmit + '\'' +
                ", rsolve='" + rsolve + '\'' +
                ", reason='" + reason + '\'' +
                '}';
    }

    public Things() {
    }

    public Things(String dno, int pno, String rsubmit, String rsolve, String reason) {
        this.dno = dno;
        this.pno = pno;
        this.rsubmit = rsubmit;
        this.rsolve = rsolve;
        this.reason = reason;
    }

    public String getDno() {
        return dno;
    }

    public void setDno(String dno) {
        this.dno = dno;
    }

    public int getPno() {
        return pno;
    }

    public void setPno(int pno) {
        this.pno = pno;
    }

    public String getRsubmit() {
        return rsubmit;
    }

    public void setRsubmit(String rsubmit) {
        this.rsubmit = rsubmit;
    }

    public String getRsolve() {
        return rsolve;
    }

    public void setRsolve(String rsolve) {
        this.rsolve = rsolve;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }
}
