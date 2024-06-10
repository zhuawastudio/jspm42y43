package com.dao;

import com.entity.XiaoshouchukuEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.XiaoshouchukuVO;
import com.entity.view.XiaoshouchukuView;


/**
 * 销售出库
 * 
 * @author 
 * @email 
 * @date 2023-04-05 11:47:24
 */
public interface XiaoshouchukuDao extends BaseMapper<XiaoshouchukuEntity> {
	
	List<XiaoshouchukuVO> selectListVO(@Param("ew") Wrapper<XiaoshouchukuEntity> wrapper);
	
	XiaoshouchukuVO selectVO(@Param("ew") Wrapper<XiaoshouchukuEntity> wrapper);
	
	List<XiaoshouchukuView> selectListView(@Param("ew") Wrapper<XiaoshouchukuEntity> wrapper);

	List<XiaoshouchukuView> selectListView(Pagination page,@Param("ew") Wrapper<XiaoshouchukuEntity> wrapper);
	
	XiaoshouchukuView selectView(@Param("ew") Wrapper<XiaoshouchukuEntity> wrapper);
	

    List<Map<String, Object>> selectValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<XiaoshouchukuEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<XiaoshouchukuEntity> wrapper);
    
    List<Map<String, Object>> selectGroup(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<XiaoshouchukuEntity> wrapper);



}
