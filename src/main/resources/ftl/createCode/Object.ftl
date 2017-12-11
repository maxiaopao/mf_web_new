package com.ct.modules.${packagename}.entity;

<#if (falg>1)>
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
</#if>
import com.ct.common.entity.BaseEntity;

public class ${objectname} extends BaseEntity {
	
	private String ${"${primary}"?lower_case};
	<#list fieldList as var>
	<#switch var[1]> 
	<#case 'int'> 
	
	private Integer ${"${var[0]}"?lower_case};
	<#break> 
	<#case 'varchar'> 
	
	private String ${"${var[0]}"?lower_case};
	<#break> 
	<#case 'char'> 
	
	private String ${"${var[0]}"?lower_case};
	<#break> 
	<#case 'text'> 
	
	private String ${"${var[0]}"?lower_case};
	<#break> 
	<#case 'float'> 
	
	private Float ${"${var[0]}"?lower_case};
	<#break> 
	<#case 'double'> 
	
	private Double ${"${var[0]}"?lower_case};
	<#break> 
	<#case 'decimal'> 
	
	private Long ${"${var[0]}"?lower_case};
	<#break> 
	<#case 'date'> 
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date ${"${var[0]}"?lower_case};
	<#break> 
	<#case 'datetime'> 
	
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date ${"${var[0]}"?lower_case};
	<#break> 
	<#case 'blob'> 
	
	private byte[] ${"${var[0]}"?lower_case};
	<#break> 
	<#default> 
	
	private Object ${"${var[0]}"?lower_case};
	</#switch>
	</#list>
	
	public String get${"${'${primary}'?lower_case}"?cap_first}() {
        return ${"${primary}"?lower_case};
    }

    public void set${"${'${primary}'?lower_case}"?cap_first}(String ${"${primary}"?lower_case}) {
        this.${"${primary}"?lower_case} = ${"${primary}"?lower_case} == null ? null : ${"${primary}"?lower_case}.trim();
    }
	
	<#list fieldList as var>
    <#switch var[1]> 
	<#case 'int'> 
	public Integer get${"${'${var[0]}'?lower_case}"?cap_first}() {
        return ${"${var[0]}"?lower_case};
    }

    public void set${"${'${var[0]}'?lower_case}"?cap_first}(Integer ${"${var[0]}"?lower_case}) {
        this.${"${var[0]}"?lower_case} = ${"${var[0]}"?lower_case};
    }
	<#break> 
	<#case 'varchar'> 
	public String get${"${'${var[0]}'?lower_case}"?cap_first}() {
        return ${"${var[0]}"?lower_case};
    }

    public void set${"${'${var[0]}'?lower_case}"?cap_first}(String ${"${var[0]}"?lower_case}) {
        this.${"${var[0]}"?lower_case} = ${"${var[0]}"?lower_case} == null ? null : ${"${var[0]}"?lower_case}.trim();
    }
	<#break> 
	<#case 'char'> 
	public String get${"${'${var[0]}'?lower_case}"?cap_first}() {
        return ${"${var[0]}"?lower_case};
    }

    public void set${"${'${var[0]}'?lower_case}"?cap_first}(String ${"${var[0]}"?lower_case}) {
        this.${"${var[0]}"?lower_case} = ${"${var[0]}"?lower_case} == null ? null : ${"${var[0]}"?lower_case}.trim();
    }
	<#break> 
	<#case 'text'> 
	public String get${"${'${var[0]}'?lower_case}"?cap_first}() {
        return ${"${var[0]}"?lower_case};
    }

    public void set${"${'${var[0]}'?lower_case}"?cap_first}(String ${"${var[0]}"?lower_case}) {
        this.${"${var[0]}"?lower_case} = ${"${var[0]}"?lower_case} == null ? null : ${"${var[0]}"?lower_case}.trim();
    }
	<#break> 
	<#case 'float'> 
	public Float get${"${'${var[0]}'?lower_case}"?cap_first}() {
        return ${"${var[0]}"?lower_case};
    }

    public void set${"${'${var[0]}'?lower_case}"?cap_first}(Float ${"${var[0]}"?lower_case}) {
        this.${"${var[0]}"?lower_case} = ${"${var[0]}"?lower_case};
    }
	<#break> 
	<#case 'double'> 
	public Double get${"${'${var[0]}'?lower_case}"?cap_first}() {
        return ${"${var[0]}"?lower_case};
    }

    public void set${"${'${var[0]}'?lower_case}"?cap_first}(Double ${"${var[0]}"?lower_case}) {
        this.${"${var[0]}"?lower_case} = ${"${var[0]}"?lower_case};
    }
	<#break> 
	<#case 'decimal'> 
	public Long get${"${'${var[0]}'?lower_case}"?cap_first}() {
        return ${"${var[0]}"?lower_case};
    }

    public void set${"${'${var[0]}'?lower_case}"?cap_first}(Long ${"${var[0]}"?lower_case}) {
        this.${"${var[0]}"?lower_case} = ${"${var[0]}"?lower_case};
    }
	<#break> 
	<#case 'date'> 
	public Date get${"${'${var[0]}'?lower_case}"?cap_first}() {
        return ${"${var[0]}"?lower_case};
    }

    public void set${"${'${var[0]}'?lower_case}"?cap_first}(Date ${"${var[0]}"?lower_case}) {
        this.${"${var[0]}"?lower_case} = ${"${var[0]}"?lower_case};
    }
	<#break> 
	<#case 'datetime'> 
	public Date get${"${'${var[0]}'?lower_case}"?cap_first}() {
        return ${"${var[0]}"?lower_case};
    }

    public void set${"${'${var[0]}'?lower_case}"?cap_first}(Date ${"${var[0]}"?lower_case}) {
        this.${"${var[0]}"?lower_case} = ${"${var[0]}"?lower_case};
    }
	<#break> 
	<#case 'blob'> 
	public byte[] get${"${'${var[0]}'?lower_case}"?cap_first}() {
        return ${"${var[0]}"?lower_case};
    }

    public void set${"${'${var[0]}'?lower_case}"?cap_first}(byte[] ${"${var[0]}"?lower_case}) {
        this.${"${var[0]}"?lower_case} = ${"${var[0]}"?lower_case};
    }
	<#break> 
	<#default> 
	public Object get${"${'${var[0]}'?lower_case}"?cap_first}() {
        return ${"${var[0]}"?lower_case};
    }

    public void set${"${'${var[0]}'?lower_case}"?cap_first}(Object ${"${var[0]}"?lower_case}) {
        this.${"${var[0]}"?lower_case} = ${"${var[0]}"?lower_case};
    }
	</#switch>
	</#list>
}