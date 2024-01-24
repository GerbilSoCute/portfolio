package com.fes.service;

import java.util.List;

import com.fes.domain.ItemDetailVO;
import com.fes.domain.ItemEqJoinVO;
import com.fes.domain.JobVO;
import com.fes.domain.MateriaVO;

public interface SimService {
	
	public List<JobVO> getItemList();
	
	public String getJobName(Integer jobCode);
	
	public List<ItemEqJoinVO> getWeaponList(Integer minLv, Integer maxLv, Integer minItemLv, Integer maxItemLv, String jobName);
	
	public List<ItemEqJoinVO> getShieldList(Integer minLv, Integer maxLv, Integer minItemLv, Integer maxItemLv, String jobName);
	
	public List<ItemEqJoinVO> getHeadList(Integer minLv, Integer maxLv, Integer minItemLv, Integer maxItemLv, String jobName);
	
	public List<ItemEqJoinVO> getTopList(Integer minLv, Integer maxLv, Integer minItemLv, Integer maxItemLv, String jobName);
	
	public List<ItemEqJoinVO> getHandList(Integer minLv, Integer maxLv, Integer minItemLv, Integer maxItemLv, String jobName);
	
	public List<ItemEqJoinVO> getBottomsList(Integer minLv, Integer maxLv, Integer minItemLv, Integer maxItemLv, String jobName);
	
	public List<ItemEqJoinVO> getFootList(Integer minLv, Integer maxLv, Integer minItemLv, Integer maxItemLv, String jobName);
	
	public List<ItemEqJoinVO> getEarList(Integer minLv, Integer maxLv, Integer minItemLv, Integer maxItemLv, String jobName);
	
	public List<ItemEqJoinVO> getNeckList(Integer minLv, Integer maxLv, Integer minItemLv, Integer maxItemLv, String jobName);
	
	public List<ItemEqJoinVO> getArmList(Integer minLv, Integer maxLv, Integer minItemLv, Integer maxItemLv, String jobName);
	
	public List<ItemEqJoinVO> getFingerList(Integer minLv, Integer maxLv, Integer minItemLv, Integer maxItemLv, String jobName);
	
	
	public List<MateriaVO> getMateriaList();
	
	public int getMateria(Integer itemId);
}
