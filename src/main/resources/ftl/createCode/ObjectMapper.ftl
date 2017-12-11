<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE mapper PUBLIC "-//mybatis.org//DTD Mapper 3.0//EN" "http://mybatis.org/dtd/mybatis-3-mapper.dtd" >
<mapper namespace="${"${objectname}"?uncap_first}Mapper" >

	

	<!--  表where条件 -->	
    <sql id="SQL_${objectnameUpper}_WHERE">
		<#list fieldList as var>
		<#switch var[1]> 
		<#case 'varchar'> 
		<if test="${"${var[0]}"?lower_case} !=null and ${"${var[0]}"?lower_case}.length()!=0">
			AND ${var[0]}=#${r"{"}${"${var[0]}"?lower_case}${r"}"}
		</if>
		<#break> 
		<#case 'char'> 
		<if test="${"${var[0]}"?lower_case} !=null and ${"${var[0]}"?lower_case}.length()!=0">
			AND ${var[0]}=#${r"{"}${"${var[0]}"?lower_case}${r"}"}
		</if>
		<#break> 
		<#case 'text'> 
		<if test="${"${var[0]}"?lower_case} !=null and ${"${var[0]}"?lower_case}.length()!=0">
			AND ${var[0]}=#${r"{"}${"${var[0]}"?lower_case}${r"}"}
		</if>
		<#break> 
		<#default> 
		<if test="${"${var[0]}"?lower_case} !=null">
			AND ${var[0]}=#${r"{"}${"${var[0]}"?lower_case}${r"}"}
		</if>
		</#switch>
		</#list>
		<if test="1 == 1 ">
			AND 1=1
		</if>
    </sql>	
    
    <!--  字段 -->	
	<sql id="Base_Column_List" >
		<#list fieldList as var>${var[0]},</#list>${primary}
	</sql>
	
	<!-- 根据主键查询 -->	
	<select id="selectByPrimaryKey" resultType="com.ct.modules.${packagename}.entity.${objectname}" parameterType="com.ct.modules.${packagename}.entity.${objectname}" >
	    select 
	    <include refid="Base_Column_List" />
	    from ${tablename}
	    where ${primary} = #${r"{"}${"${primary}"?lower_case}${r"}"}
  	</select>
  	
  	<!-- 根据主键删除 -->	
  	<delete id="deleteByPrimaryKey" parameterType="com.ct.modules.${packagename}.entity.${objectname}" >
	    delete from ${tablename}
	    where ${primary} = #${r"{"}${"${primary}"?lower_case}${r"}"}
	</delete>
	
	<!-- 插入 -->	
	<insert id="insert" parameterType="com.ct.modules.${packagename}.entity.${objectname}" >
	    insert into ${tablename} 
	    (
	     <include refid="Base_Column_List" />
		)
	    values 
	    (
	    <#list fieldList as var>
			#${r"{"}${"${var[0]}"?lower_case}${r"}"},	
		</#list>
			#${r"{"}${"${primary}"?lower_case}${r"}"}
	    )
	</insert>
	
	<!-- 更具选中的更新 -->
	<update id="updateByPrimaryKey" parameterType="com.ct.modules.${packagename}.entity.${objectname}" >
	    update ${tablename} 
	    <set >
			<#list fieldList as var>
			<if test="${"${var[0]}"?lower_case} !=null">
				${var[0]}=#${r"{"}${"${var[0]}"?lower_case}${r"}"},
			</if>
			</#list>
	    </set>
	    where ${primary} = #${r"{"}${"${primary}"?lower_case}${r"}"}
  	</update>
  	
  	<!-- 分页查询列表 -->
  	<select id="getAllByPage" parameterType="com.ct.modules.${packagename}.entity.${objectname}" resultType="com.ct.modules.${packagename}.entity.${objectname}">
 		select 
 		<include refid="Base_Column_List" />
 		from ${tablename}
		<where>
			<include  refid="SQL_${objectnameUpper}_WHERE"/>
		</where> 
		order by   $${r"{"}sort${r"}"} $${r"{"}order${r"}"}
	</select> 
	
	<!-- 查询根据数据查询全部  -->
	<select id="get${objectname}List" parameterType="com.ct.modules.${packagename}.entity.${objectname}" resultType="com.ct.modules.${packagename}.entity.${objectname}">
		select 
		<include refid="Base_Column_List" />
		from ${tablename}
		<where>
			<include  refid="SQL_${objectnameUpper}_WHERE"/>
		</where> 
	</select>
    
    
    
  
</mapper>