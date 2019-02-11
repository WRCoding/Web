package wlj.servlet.pojo;

/**
 * @author LB
 * @create 2019-02-07 11:05
 */
public class User {
    private String uname;
    private String upassword;
    private int utype;

    public User() {
    }

    @Override
    public String toString() {
        return "User{" +
                "uname='" + uname + '\'' +
                ", upassword='" + upassword + '\'' +
                ", utype=" + utype +
                '}';
    }

    public User(String uname, String upassword, int utype) {
        this.uname = uname;
        this.upassword = upassword;
        this.utype = utype;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getUpassword() {
        return upassword;
    }

    public void setUpassword(String upassword) {
        this.upassword = upassword;
    }

    public int getUtype() {
        return utype;
    }

    public void setUtype(int utype) {
        this.utype = utype;
    }
}

