package cn.threefishes.cloudrepository.dao;

import cn.threefishes.cloudrepository.entity.Channel;
import cn.threefishes.cloudrepository.entity.ChannelExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;

public interface ChannelMapper {
    long countByExample(ChannelExample example);

    int deleteByExample(ChannelExample example);

    int deleteByPrimaryKey(Integer channelId);

    int insert(Channel record);

    int insertSelective(Channel record);

    List<Channel> selectByExampleWithRowbounds(ChannelExample example, RowBounds rowBounds);

    List<Channel> selectByExample(ChannelExample example);

    Channel selectByPrimaryKey(Integer channelId);

    int updateByExampleSelective(@Param("record") Channel record, @Param("example") ChannelExample example);

    int updateByExample(@Param("record") Channel record, @Param("example") ChannelExample example);

    int updateByPrimaryKeySelective(Channel record);

    int updateByPrimaryKey(Channel record);
}