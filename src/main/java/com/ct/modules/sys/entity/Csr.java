package com.ct.modules.sys.entity;

import com.ct.common.entity.BaseEntity;

public class Csr extends BaseEntity {
    private String csrid;

    private String agentid;

    private String csrname;

    private String passwd;
    
    private String passwdnew;

    private Short assignflag;

    private String departid;
    
    private String groupid;
    
    private String groupname;

    private Short status;

    private String bak1;

    private String bak2;

    private String bak3;

    private String bak4;

    private String bak5;
    
    private Short postion;
    
    private String departname;
    
   private String user_id;
    
    private String account_info;
    
    private String sex;

	private String phone;

	private String provense;

	private String city;

	private String hospitalname;

	private String department;

	private String job;
	
	private String cs;//拼接后的csrid 和name
	
	
    

	public String getGroupid() {
		return groupid;
	}

	public void setGroupid(String groupid) {
		this.groupid = groupid;
	}

	public String getGroupname() {
		return groupname;
	}

	public void setGroupname(String groupname) {
		this.groupname = groupname;
	}

	public String getCs() {
		return cs;
	}

	public void setCs(String cs) {
		this.cs = cs;
	}

	public String getPasswdnew() {
		return passwdnew;
	}

	public void setPasswdnew(String passwdnew) {
		this.passwdnew = passwdnew;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getProvense() {
		return provense;
	}

	public void setProvense(String provense) {
		this.provense = provense;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getHospitalname() {
		return hospitalname;
	}

	public void setHospitalname(String hospitalname) {
		this.hospitalname = hospitalname;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String userId) {
		user_id = userId;
	}

	public String getAccount_info() {
		return account_info;
	}

	public void setAccount_info(String accountInfo) {
		account_info = accountInfo;
	}

	public Short getPostion() {
		return postion;
	}

	public void setPostion(Short postion) {
		this.postion = postion;
	}

    public String getDepartname() {
		return departname;
	}

	public void setDepartname(String departname) {
		this.departname = departname;
	}

	public String getCsrid() {
        return csrid;
    }

    public void setCsrid(String csrid) {
        this.csrid = csrid == null ? null : csrid.trim();
    }

    public String getAgentid() {
        return agentid;
    }

    public void setAgentid(String agentid) {
        this.agentid = agentid == null ? null : agentid.trim();
    }

    public String getCsrname() {
        return csrname;
    }

    public void setCsrname(String csrname) {
        this.csrname = csrname == null ? null : csrname.trim();
    }

    public String getPasswd() {
        return passwd;
    }

    public void setPasswd(String passwd) {
        this.passwd = passwd == null ? null : passwd.trim();
    }

    public Short getAssignflag() {
        return assignflag;
    }

    public void setAssignflag(Short assignflag) {
        this.assignflag = assignflag;
    }

    public String getDepartid() {
        return departid;
    }

    public void setDepartid(String departid) {
        this.departid = departid == null ? null : departid.trim();
    }

    public Short getStatus() {
        return status;
    }

    public void setStatus(Short status) {
        this.status = status;
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