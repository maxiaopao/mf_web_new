package com.ct.modules.sys.entity;

import java.util.Date;

public class CsrRole {
    private String csrid;

    private String roleid;

    private Date starttime;

    private Date endtime;

    private Short status;

    public String getCsrid() {
        return csrid;
    }

    public void setCsrid(String csrid) {
        this.csrid = csrid == null ? null : csrid.trim();
    }

    public String getRoleid() {
        return roleid;
    }

    public void setRoleid(String roleid) {
        this.roleid = roleid == null ? null : roleid.trim();
    }

    public Date getStarttime() {
        return starttime;
    }

    public void setStarttime(Date starttime) {
        this.starttime = starttime;
    }

    public Date getEndtime() {
        return endtime;
    }

    public void setEndtime(Date endtime) {
        this.endtime = endtime;
    }

    public Short getStatus() {
        return status;
    }

    public void setStatus(Short status) {
        this.status = status;
    }
}