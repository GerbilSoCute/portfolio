package com.fes.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.transaction.annotation.Transactional;

import com.fes.domain.ItemDetailVO;
import com.fes.domain.ItemEqJoinVO;
import com.fes.domain.JobVO;
import com.fes.domain.MateriaVO;

@Transactional
public interface SimMapper {
	
	public List<JobVO> getJobList();
	
	public String getJobName(Integer jobCode);
	
	public List<ItemEqJoinVO> getShieldList(@Param("minLv")Integer minLv, @Param("maxLv")Integer maxLv, @Param("minItemLv")Integer minItemLv, @Param("maxItemLv")Integer maxItemLv, @Param("jobName")String jobName);
	
	public List<ItemEqJoinVO> getWeaponList(@Param("minLv")Integer minLv, @Param("maxLv")Integer maxLv, @Param("minItemLv")Integer minItemLv, @Param("maxItemLv")Integer maxItemLv, @Param("jobName")String jobName);
		
	public List<ItemEqJoinVO> getHeadList(@Param("minLv")Integer minLv, @Param("maxLv")Integer maxLv, @Param("minItemLv")Integer minItemLv, @Param("maxItemLv")Integer maxItemLv, @Param("jobName")String jobName);
	
	public List<ItemEqJoinVO> getTopList(@Param("minLv")Integer minLv, @Param("maxLv")Integer maxLv, @Param("minItemLv")Integer minItemLv, @Param("maxItemLv")Integer maxItemLv, @Param("jobName")String jobName);
	
	public List<ItemEqJoinVO> getHandList(@Param("minLv")Integer minLv, @Param("maxLv")Integer maxLv, @Param("minItemLv")Integer minItemLv, @Param("maxItemLv")Integer maxItemLv, @Param("jobName")String jobName);
	
	public List<ItemEqJoinVO> getBottomsList(@Param("minLv")Integer minLv, @Param("maxLv")Integer maxLv, @Param("minItemLv")Integer minItemLv, @Param("maxItemLv")Integer maxItemLv, @Param("jobName")String jobName);
	
	public List<ItemEqJoinVO> getFootList(@Param("minLv")Integer minLv, @Param("maxLv")Integer maxLv, @Param("minItemLv")Integer minItemLv, @Param("maxItemLv")Integer maxItemLv, @Param("jobName")String jobName);
	
	public List<ItemEqJoinVO> getEarList(@Param("minLv")Integer minLv, @Param("maxLv")Integer maxLv, @Param("minItemLv")Integer minItemLv, @Param("maxItemLv")Integer maxItemLv, @Param("jobName")String jobName);
	
	public List<ItemEqJoinVO> getNeckList(@Param("minLv")Integer minLv, @Param("maxLv")Integer maxLv, @Param("minItemLv")Integer minItemLv, @Param("maxItemLv")Integer maxItemLv, @Param("jobName")String jobName);
	
	public List<ItemEqJoinVO> getArmList(@Param("minLv")Integer minLv, @Param("maxLv")Integer maxLv, @Param("minItemLv")Integer minItemLv, @Param("maxItemLv")Integer maxItemLv, @Param("jobName")String jobName);
	
	public List<ItemEqJoinVO> getFingerList(@Param("minLv")Integer minLv, @Param("maxLv")Integer maxLv, @Param("minItemLv")Integer minItemLv, @Param("maxItemLv")Integer maxItemLv, @Param("jobName")String jobName);
	
	public List<MateriaVO> getMateriaList();
	
	public int getMateria(Integer itemId);
	
	
	

}
