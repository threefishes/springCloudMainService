package cn.threefishes.cloudrepository.dao;

import cn.threefishes.cloudrepository.entity.Clerk;
import cn.threefishes.cloudrepository.entity.ClerkExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;

public interface ClerkMapper {
    long countByExample(ClerkExample example);

    int deleteByExample(ClerkExample example);

    int deleteByPrimaryKey(Integer clerkId);

    int insert(Clerk record);

    int insertSelective(Clerk record);

    List<Clerk> selectByExampleWithRowbounds(ClerkExample example, RowBounds rowBounds);

    List<Clerk> selectByExample(ClerkExample example);

    Clerk selectByPrimaryKey(Integer clerkId);

    int updateByExampleSelective(@Param("record") Clerk record, @Param("example") ClerkExample example);

    int updateByExample(@Param("record") Clerk record, @Param("example") ClerkExample example);

    int updateByPrimaryKeySelective(Clerk record);

    int updateByPrimaryKey(Clerk record);
}