package com.macro.mall.tiny.mbg.mapper;

import com.macro.mall.tiny.mbg.model.UmsUser;
import com.macro.mall.tiny.mbg.model.UmsUserExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface UmsUserMapper {
    long countByExample(UmsUserExample example);

    int deleteByExample(UmsUserExample example);

    int deleteByPrimaryKey(Long id);

    int insert(UmsUser record);

    int insertSelective(UmsUser record);

    List<UmsUser> selectByExampleWithBLOBs(UmsUserExample example);

    List<UmsUser> selectByExample(UmsUserExample example);

    UmsUser selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") UmsUser record, @Param("example") UmsUserExample example);

    int updateByExampleWithBLOBs(@Param("record") UmsUser record, @Param("example") UmsUserExample example);

    int updateByExample(@Param("record") UmsUser record, @Param("example") UmsUserExample example);

    int updateByPrimaryKeySelective(UmsUser record);

    int updateByPrimaryKeyWithBLOBs(UmsUser record);

    int updateByPrimaryKey(UmsUser record);
}