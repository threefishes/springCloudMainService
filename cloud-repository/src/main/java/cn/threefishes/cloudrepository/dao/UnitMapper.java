package cn.threefishes.cloudrepository.dao;

import cn.threefishes.cloudrepository.entity.Unit;
import cn.threefishes.cloudrepository.entity.UnitExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;

public interface UnitMapper {
    long countByExample(UnitExample example);

    int deleteByExample(UnitExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Unit record);

    int insertSelective(Unit record);

    List<Unit> selectByExampleWithRowbounds(UnitExample example, RowBounds rowBounds);

    List<Unit> selectByExample(UnitExample example);

    Unit selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Unit record, @Param("example") UnitExample example);

    int updateByExample(@Param("record") Unit record, @Param("example") UnitExample example);

    int updateByPrimaryKeySelective(Unit record);

    int updateByPrimaryKey(Unit record);
}