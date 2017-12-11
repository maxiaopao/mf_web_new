package com.ct.modules.sys.entity;

import com.ct.common.entity.BaseEntity;

public class Depart extends BaseEntity {
    private String departid;

    private String departname;

    private Short status;
    
    private String departdesc;

    private String bak1;

    private String bak2;

    private String bak3;

    private String bak4;

    private String bak5;

    public String getDepartid() {
        return departid;
    }

    public void setDepartid(String departid) {
        this.departid = departid == null ? null : departid.trim();
    }

    public String getDepartname() {
        return departname;
    }

    public void setDepartname(String departname) {
        this.departname = departname == null ? null : departname.trim();
    }

    public Short getStatus() {
        return status;
    }

    public void setStatus(Short status) {
        this.status = status;
    }

    public String getDepartdesc() {
        return departdesc;
    }

    public void setDepartdesc(String departdesc) {
        this.departdesc = departdesc == null ? null : departdesc.trim();
    }

    public String getBak1() {
        return bak1;
    }

    public void setBak1(String bak1) {
        this.bak1 = bak1 == null ? null : bak1.trim();
    }

    public String getBak2() {
        return bak2;
    }

    public void setBak2(String bak2) {
        this.bak2 = bak2 == null ? null : bak2.trim();
    }

    public String getBak3() {
        return bak3;
    }

    public void setBak3(String bak3) {
        this.bak3 = bak3 == null ? null : bak3.trim();
    }

    public String getBak4() {
        return bak4;
    }

    public void setBak4(String bak4) {
        this.bak4 = bak4 == null ? null : bak4.trim();
    }

    public String getBak5() {
        return bak5;
    }

    public void setBak5(String bak5) {
        this.bak5 = bak5 == null ? null : bak5.trim();
    }
}